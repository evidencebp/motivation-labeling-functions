from functools import *

from os.path import join
import pandas as pd


from configuration import DATA_PATH, REPO_FEATURES_NAMES, PERFORMANCE_BY_REPO_RETENTION_STATS, ALL_FEATURES_DICT\
    , LAST_ANALYZED_YEAR, FEATURES_NAMES, control_variables

from control_analysis import is_invalid_subgroup
from data_utils import get_repo_ds, get_developer_motivation_per_year_ds
from decorate_features import display_name, feature_category
from df_to_latex_table import df_to_latex_table
from normalization_utils import normalize_by_ref
from performance_by_repo_stars import grouped_df_structuring, compute_controled_results

from survey_by_repo_license_type import BASE_COL, LICENSE_GROUP

AGG_COLUMN = 'License'
AGG_DISPLAY_NAME = 'Metric'

COMMON_METRIC = 'metric'
KEY = 'repo_name'


def is_monotone_by_licence_group(row
                                 , metric_col=COMMON_METRIC):
    if (row[metric_col] in ALL_FEATURES_DICT.keys()
        and 'Open' in row
        and 'Highly Open' in row
        and 'Closed' in row):
        rc = ((ALL_FEATURES_DICT[row[metric_col]](row['Open'], row['Highly Open'])
               and ALL_FEATURES_DICT[row[metric_col]](row['Closed'], row['Open'])) > 0)
    else:
        rc = None

    return rc


def performance_by_repo_license():


    df = get_repo_ds()
    df[AGG_COLUMN] = df[BASE_COL].map(lambda x: LICENSE_GROUP.get(x))


    dry = get_developer_motivation_per_year_ds()
    #dry = dry[(dry.year == LAST_ANALYZED_YEAR)]
    df = df[[KEY, AGG_COLUMN]]

    df = pd.merge(df, dry, on=KEY)

    gdf = df.groupby([AGG_COLUMN], as_index=False).agg({i: 'mean' for i in FEATURES_NAMES})

    ndf = normalize_by_ref(df=gdf
                           , ref_column=AGG_COLUMN
                           , ref_val='Closed'
                           , features=FEATURES_NAMES)

    ndf = ndf.T.reset_index()
    ndf.columns = ndf.iloc[0]
    ndf = ndf[ndf[AGG_COLUMN] != AGG_COLUMN]

    ndf['Category'] = ndf[AGG_COLUMN].map(feature_category)
    ndf['Metric'] = ndf[AGG_COLUMN].map(display_name)

    ndf = ndf.sort_values(['Category', 'Metric'])
    ndf = ndf.rename(columns={AGG_COLUMN: 'metric'})

    ndf['monotone'] = ndf.apply(is_monotone_by_licence_group, axis=1)
    ndf['Monotonicity'] = ndf['monotone'].map(lambda x: None if x is None else 'True' if x > 0 else 'False')

    ndf[['metric' , 'Closed', 'Open', 'Highly Open', 'monotone' ]].to_csv(join(DATA_PATH
                    , PERFORMANCE_BY_REPO_RETENTION_STATS)
               , index=False)
    ndf = ndf.fillna('')
    # ndf[COMMON_METRIC] = ndf[COMMON_METRIC].map(lambda x: x.replace("_", " "))

    df_to_latex_table(ndf[['Category', 'Metric' , 'Closed', 'Open', 'Highly Open', 'Monotonicity' ]]
                        , caption=' \label{tab:pref-by-license-group} Performance by License Group'
                        , columns_to_name=None
                        , star_table=True
                        , columns_header=None)



def compute_base_performance(developers_df
                               , features):

    KEY = 'author_email_domain'
    MIN_THRESHOLD = 200

    if is_invalid_subgroup(df=developers_df
                     , agg_column=AGG_COLUMN
                     , cnt_column=KEY
                     , sub_groups=4
                     , min_thrshold=MIN_THRESHOLD):
        return pd.DataFrame([None], columns=['Monotonicity'])

    gdf = developers_df.groupby([AGG_COLUMN], as_index=False).agg({i: 'mean' for i in features})

    f_monotone = partial(is_monotone_by_licence_group
                                          , metric_col=AGG_DISPLAY_NAME)

    ndf = grouped_df_structuring(AGG_COLUMN
                          , gdf
                          , ref_val='Closed'
                          , features=features
                          , group_display_name=COMMON_METRIC
                          , output_file=None
                          , caption=None
                          , check_monotinicity_function=is_monotone_by_licence_group #f_monotone
                          , change_to_display=False
                                 )

    ndf = ndf.fillna(-1)

    return ndf

def get_monotonicity(df
                               , features):
    ndf = compute_base_performance(df
                               , features)

    return ndf.iloc[0]['Monotonicity']


def control_results():

    df = get_repo_ds()
    df[AGG_COLUMN] = df[BASE_COL].map(lambda x: LICENSE_GROUP.get(x))
    df = df[[KEY, AGG_COLUMN]]

    dry = get_developer_motivation_per_year_ds()
    #dry = dry[(dry.year == LAST_ANALYZED_YEAR)]

    df = pd.merge(df, dry, on=KEY)

    compute_controled_results(df=df
                              , control_variables=control_variables - set([AGG_COLUMN])
                              , feature_evaluation_function=get_monotonicity
                              , control_value_output_format=join(DATA_PATH
                                            , "performance_by_license_ctl_{control}.csv")
                              , control_summary_output_format=join(DATA_PATH
                                            , "performance_by_license_ctl_{control}_sum.csv"))


if __name__ == "__main__":
    performance_by_repo_license()
    control_results()


