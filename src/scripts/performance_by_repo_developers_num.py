from functools import *
from os.path import join
import pandas as pd


from configuration import DATA_PATH, FEATURES_NAMES, PERFORMANCE_BY_REPO_DEV_GROUP_STATS, ALL_FEATURES_DICT\
    , control_variables
from control_analysis import is_invalid_subgroup
from data_utils import get_repo_ds, get_developer_motivation_per_year_ds
from decorate_features import display_name, feature_category
from performance_by_repo_stars import compute_controled_results, grouped_df_structuring, find_base_key

AGG_DISPLAY_NAME = 'Metric'

COMMON_METRIC = 'metric'

ORDER = {'Single' : 1
         , 'Small' : 2
         , 'Medium': 3
         , 'Large': 4}

AGG_COLUMN = 'Developers'

KEY = 'repo_name'


def is_monotone_by_size(row
                        , use_display_name=True):

    if use_display_name:
        names = [display_name(i) for i in ALL_FEATURES_DICT.keys()]
    else:
        names = ALL_FEATURES_DICT.keys()

    if (row[AGG_DISPLAY_NAME] in names
            and 'Single' in row
            and 'Small' in row
            and 'Medium' in row
            and 'Large' in row ):
        if use_display_name:
            rc = (ALL_FEATURES_DICT[find_base_key(ALL_FEATURES_DICT, row[AGG_DISPLAY_NAME])](row.Small, row.Single)
                and ALL_FEATURES_DICT[find_base_key(ALL_FEATURES_DICT, row[AGG_DISPLAY_NAME])](row.Medium, row.Small)
                and ALL_FEATURES_DICT[find_base_key(ALL_FEATURES_DICT, row[AGG_DISPLAY_NAME])](row.Large, row.Medium)) > 0

        else:
            rc = (ALL_FEATURES_DICT[row[AGG_DISPLAY_NAME]](row.Small, row.Single)
                and ALL_FEATURES_DICT[row[AGG_DISPLAY_NAME]](row.Medium, row.Small)
                and ALL_FEATURES_DICT[row[AGG_DISPLAY_NAME]](row.Large, row.Medium)) > 0
    else:
        rc = None

    return rc


def developer_group(num):
    if num == 1:
        group = 'Single'
    elif num <= 10:
        group = 'Small'
    elif num <= 100:
        group = 'Medium'
    else:
        group = 'Large'

    return group



def compute_base_performance(dry
                               , features):

    KEY = 'author_email_domain'
    MIN_THRESHOLD = 200

    if is_invalid_subgoup(df=dry
                     , agg_column=AGG_COLUMN
                     , cnt_column=KEY
                     , sub_groups=len(ORDER.keys())
                     , min_thrshold=MIN_THRESHOLD):
        return pd.DataFrame([None], columns=['Monotonicity'])

    gdry = dry.groupby([AGG_COLUMN], as_index=False).agg({i: 'mean' for i in features})

    f_monotone = partial(is_monotone_by_size
                                          , use_display_name=False)

    ndf = grouped_df_structuring(AGG_COLUMN
                          , gdry
                          , ref_val='Single'
                          , features=features
                          , group_display_name=AGG_DISPLAY_NAME
                          , output_file=None
                          , caption=None
                          , check_monotinicity_function=f_monotone
                          , change_to_display=False)

    ndf = ndf.fillna(-1)

    return ndf


def get_monotonicity(dry
                               , features):
    ndf = compute_base_performance(dry
                               , features)

    return ndf.iloc[0]['Monotonicity']


def control_results():

    df = get_repo_ds()
    df[AGG_COLUMN] = df.authors.map(developer_group)
    df = df[[KEY, AGG_COLUMN]]
    dry = get_developer_motivation_per_year_ds()
    df = pd.merge(df, dry, on=KEY)

    compute_controled_results(df=df
                              , control_variables=control_variables - set([AGG_COLUMN])
                              , feature_evaluation_function=get_monotonicity
                              , control_value_output_format=join(DATA_PATH
                                            , "performance_by_dev_num_ctl_{control}.csv")
                              , control_summary_output_format=join(DATA_PATH
                                            , "performance_by_dev_num_ctl_{control}_sum.csv"))


def performance_by_repo_dev_group():

    df = get_repo_ds()
    df[AGG_COLUMN] = df.authors.map(developer_group)
    df = df[[KEY, AGG_COLUMN]]
    dry = get_developer_motivation_per_year_ds()
    df = pd.merge(df, dry, on=KEY)

    gdf = df.groupby([AGG_COLUMN], as_index=False).agg({i: 'mean' for i in FEATURES_NAMES})

    gdf['order'] = gdf[AGG_COLUMN].map(lambda x: ORDER.get(x))
    gdf = gdf.sort_values('order')
    gdf = gdf.drop(columns=['order'])

    grouped_df_structuring(AGG_COLUMN
                          , gdf
                          , ref_val='Single'
                          , features=FEATURES_NAMES
                          , group_display_name=AGG_DISPLAY_NAME
                          , check_monotinicity_function=is_monotone_by_size
                          , output_file=join(DATA_PATH
                                      , PERFORMANCE_BY_REPO_DEV_GROUP_STATS)
                          , caption=' \label{tab:pref-by-dev-group} Performance by Project Number of Developers')

if __name__ == "__main__":
    performance_by_repo_dev_group()
    control_results()


