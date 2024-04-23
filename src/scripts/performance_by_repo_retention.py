from functools import *
from os.path import join

import pandas as pd


from configuration import DATA_PATH, REPO_FEATURES_NAMES, PERFORMANCE_BY_REPO_RETENTION_STATS, ALL_FEATURES_DICT\
    , COMMON_METRIC, control_variables

from binning_utils import sides_binning
from control_analysis import is_invalid_subgroup
from data_utils import get_repo_ds, get_developer_motivation_per_year_ds
from decorate_features import display_name, feature_category
from df_to_latex_table import df_to_latex_table
from normalization_utils import normalize_by_ref
from performance_by_repo_stars import grouped_df_structuring, compute_controled_results, find_base_key

AGG_COLUMN = 'retention_group'
AGG_DISPLAY_NAME = 'Metric'
KEY = 'repo_name'


def is_monotone_by_retention_group(row
                                   , use_display_name=True):

    if use_display_name:
        names = [display_name(i) for i in ALL_FEATURES_DICT.keys()]
    else:
        names = ALL_FEATURES_DICT.keys()

    if (use_display_name
        and row[AGG_DISPLAY_NAME] in names
        and 'Low' in row
        and 'Medium' in row
        and 'High' in row):

        rc = ((ALL_FEATURES_DICT[find_base_key(ALL_FEATURES_DICT, row[AGG_DISPLAY_NAME])](row.Medium, row.High)
               and ALL_FEATURES_DICT[find_base_key(ALL_FEATURES_DICT, row[AGG_DISPLAY_NAME])](row.Low, row.Medium)) > 0)
    else:
        if (not use_display_name
            and row[AGG_DISPLAY_NAME] in names
            and 'Low' in row
            and 'Medium' in row
            and 'High' in row):
                rc = ((ALL_FEATURES_DICT[row[AGG_DISPLAY_NAME]](row.Medium, row.High)
               and ALL_FEATURES_DICT[row[AGG_DISPLAY_NAME]](row.Low, row.Medium)) > 0)
        else:
            rc = None

    return rc


def performance_by_repo_retention():

    df = get_repo_ds()
    df[AGG_COLUMN] = sides_binning(df
    , column='retention_prob'
    , labels = ['Low', 'Medium', 'High'])
    gdf = df.groupby([AGG_COLUMN], as_index=False).agg({i: 'mean' for i in REPO_FEATURES_NAMES})

    ndf = normalize_by_ref(df=gdf
                           , ref_column=AGG_COLUMN
                           , ref_val='High'
                           , features=REPO_FEATURES_NAMES)

    ndf = ndf.T.reset_index()
    ndf.columns = ndf.iloc[0]
    ndf = ndf[ndf[AGG_COLUMN] != AGG_COLUMN]

    ndf = ndf.rename(columns={AGG_COLUMN: AGG_DISPLAY_NAME})

    f_monotone = partial(is_monotone_by_retention_group
                                          , use_display_name=False)

    ndf['monotone'] = ndf.apply(f_monotone, axis=1)
    ndf['Monotonicity'] = ndf['monotone'].map(lambda x: None if x is None else 'True' if x > 0 else 'False')

    ndf[[AGG_DISPLAY_NAME , 'Low', 'Medium', 'High', 'monotone' ]].to_csv(join(DATA_PATH
                    , PERFORMANCE_BY_REPO_RETENTION_STATS)
               , index=False)

    # ndf[COMMON_METRIC] = ndf[COMMON_METRIC].map(lambda x: x.replace("_", " "))
    ndf['Category'] = ndf[AGG_DISPLAY_NAME].map(feature_category)
    ndf['Metric'] = ndf[AGG_DISPLAY_NAME].map(display_name)

    ndf = ndf.sort_values(['Category', 'Metric'])

    df_to_latex_table(ndf[['Category', 'Metric' , 'Low', 'Medium', 'High', 'Monotonicity' ]]
                        , caption=' \label{tab:pref-by-retention-group} Performance by Retention Probability'
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
                     , sub_groups=3
                     , min_thrshold=MIN_THRESHOLD):
        return pd.DataFrame([None], columns=['Monotonicity'])

    gdf = developers_df.groupby([AGG_COLUMN], as_index=False).agg({i: 'mean' for i in features})

    f_monotone = partial(is_monotone_by_retention_group
                                          , use_display_name=True)

    ndf = grouped_df_structuring(AGG_COLUMN
                          , gdf
                          , ref_val='High'
                          , features=features
                          , group_display_name=AGG_DISPLAY_NAME
                          , output_file=None
                          , caption=None
                          , check_monotinicity_function=is_monotone_by_retention_group # f_monotone #is_monotone_by_retention_group
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
    df[AGG_COLUMN] = sides_binning(df
    , column='retention_prob'
    , labels = ['Low', 'Medium', 'High'])
    df = df[[KEY, AGG_COLUMN]]

    dry = get_developer_motivation_per_year_ds() # NOTE - this is on developers, not repos
    #dry = dry[(dry.year == LAST_ANALYZED_YEAR)]

    df = pd.merge(df, dry, on=KEY)

    compute_controled_results(df=df
                              , control_variables=control_variables - set([AGG_COLUMN])
                              , feature_evaluation_function=get_monotonicity
                              , control_value_output_format=join(DATA_PATH
                                            , "performance_by_retention_group_ctl_{control}.csv")
                              , control_summary_output_format=join(DATA_PATH
                                            , "performance_by_retention_group_ctl_{control}_sum.csv"))


if __name__ == "__main__":
    performance_by_repo_retention()
    control_results()

