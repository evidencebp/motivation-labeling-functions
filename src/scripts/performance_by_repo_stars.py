from os.path import join
from functools import *
import pandas as pd


from configuration import DATA_PATH, FEATURES_NAMES, PERFORMANCE_BY_REPO_POPULARITY_STATS, ALL_FEATURES_DICT\
    , control_variables

from binning_utils import sides_binning
from control_analysis import controlled_performance, is_invalid_subgroup
from data_utils import get_repo_ds, get_developer_motivation_per_year_ds
from decorate_features import display_name, feature_category
from df_to_latex_table import df_to_latex_table
from normalization_utils import normalize_by_ref
from survey_by_repo_type import popularity_thresholds
AGG_DISPLAY_NAME = 'Metric'

COMMON_METRIC = 'metric'

AGG_COLUMN = 'Popularity'
KEY = 'repo_name'


def find_base_key(dict
                 , val):
    for i in dict.keys():
        if display_name(i) == val:
            return i

    return None

def is_monotone_by_popularity(row
                              , use_display_name=True):
    if use_display_name:
        names = [display_name(i) for i in ALL_FEATURES_DICT.keys()]
    else:
        names = ALL_FEATURES_DICT.keys()

    if (row[AGG_DISPLAY_NAME] in names
            and 'Low' in row
            and 'Medium' in row
            and 'High' in row
            and 'Extraordinary' in row):
        rc = (ALL_FEATURES_DICT[find_base_key(ALL_FEATURES_DICT, row[AGG_DISPLAY_NAME])](row.Medium, row.Low)
            and ALL_FEATURES_DICT[find_base_key(ALL_FEATURES_DICT, row[AGG_DISPLAY_NAME])](row.High, row.Medium)
            and ALL_FEATURES_DICT[find_base_key(ALL_FEATURES_DICT, row[AGG_DISPLAY_NAME])](row.Extraordinary, row.High)) > 0
    else:
        rc = None

    return rc


def is_monotone_by_popularity_numeric(row
                              , use_display_name=True):
    if use_display_name:
        names = [display_name(i) for i in ALL_FEATURES_DICT.keys()]
    else:
        names = ALL_FEATURES_DICT.keys()

    if (row[AGG_DISPLAY_NAME] in names
            and '1.00000' in row
            and '2.00000' in row
            and '3.00000' in row
            and '4.00000' in row):
        rc = (ALL_FEATURES_DICT[find_base_key(ALL_FEATURES_DICT, row[AGG_DISPLAY_NAME])](row['2.00000'], row['1.00000'])
            and ALL_FEATURES_DICT[find_base_key(ALL_FEATURES_DICT, row[AGG_DISPLAY_NAME])](row['3.00000'], row['2.00000'])
            and ALL_FEATURES_DICT[find_base_key(ALL_FEATURES_DICT, row[AGG_DISPLAY_NAME])](row['4.00000'], row['3.00000'])) > 0
    else:
        rc = None

    return rc

def performance_by_repo_retention():

    """
    df = get_repo_ds()
    stars95 = df.stars.quantile(0.95)
    df[AGG_COLUMN] = df.stars.map(lambda x:'Popular' if x >= stars95 else 'Regular')
    dry = get_developer_motivation_per_year_ds()
    df = pd.merge(df, dry, on=KEY)

    agg_values = ['Regular', 'Popular']
    """
    df = get_developer_motivation_per_year_ds()


    gdf = df.groupby([AGG_COLUMN], as_index=False).agg({i: 'mean' for i in FEATURES_NAMES})
    gdf = gdf.sort_values([AGG_COLUMN])

    gdf[AGG_COLUMN] = gdf[AGG_COLUMN].map(lambda x: popularity_thresholds.get(x, {'name' : 'not found'})['name'])
    gdf = gdf[gdf[AGG_COLUMN].isin(['Low', 'Medium', 'High', 'Extraordinary'])]

    grouped_df_structuring(AGG_COLUMN
                          , gdf
                          , ref_val='Low'
                          , features=FEATURES_NAMES
                          , group_display_name=AGG_DISPLAY_NAME
                          , output_file=join(DATA_PATH
                                                     , PERFORMANCE_BY_REPO_POPULARITY_STATS)
                          , caption=' \label{tab:pref-by-popularity} Performance by Project Popularity'
                          , check_monotinicity_function=is_monotone_by_popularity)


def grouped_df_structuring(group_column
                          , grouped_df
                          , ref_val
                          , features
                          , group_display_name=None
                          , output_file=None
                          , caption=None
                          , check_monotinicity_function=None
                          , change_to_display=True):

    ndf, agg_values = transpose_metrics_df(features
                         , group_column
                         , grouped_df
                         , ref_val
                         , group_display_name
                         , change_to_display)

    if check_monotinicity_function and len(ndf) > 0:
        ndf['monotone'] = ndf.apply(check_monotinicity_function, axis=1)
        ndf['Monotonicity'] = ndf['monotone'].map(lambda x: '' if x is None else 'True' if x > 0 else 'False')
    else:
        ndf['monotone'] = None
        ndf['Monotonicity'] = None


    if output_file:
        ndf[[group_display_name] + agg_values].to_csv(output_file
                                                , index=False)
    if caption:
        df_to_latex_table(ndf[['Category',group_display_name] + agg_values
                              + ['Monotonicity'] if 'Monotonicity' in ndf.columns else[]]
                      , caption=caption
                      , columns_to_name=None
                      , star_table=True
                      , columns_header=None)

    return ndf


def transpose_metrics_df(features
                         , group_column
                         , grouped_df
                         , ref_val
                         , group_display_name
                         , change_to_display=True):

    agg_values = list(grouped_df[group_column].unique())

    ndf = normalize_by_ref(df=grouped_df
                           , ref_column=group_column
                           , ref_val=ref_val
                           , features=features)

    ndf = ndf.T.reset_index()
    ndf.columns = ndf.iloc[0]
    ndf = ndf[ndf[group_column] != group_column]
    ndf = ndf.rename(columns={group_column: group_display_name})
    ndf['Category'] = ndf[group_display_name].map(feature_category)
    if change_to_display:
        ndf[group_display_name] = ndf[group_display_name].map(display_name)
    ndf = ndf.sort_values(['Category', group_display_name])

    return ndf, agg_values



def is_monotone_by_stars(row):
    if row[AGG_DISPLAY_NAME] in FEATURES_NAMES:
        rc = ALL_FEATURES_DICT[row[AGG_DISPLAY_NAME]](row['Popular'], row.Regular) > 0
    else:
        rc = None

    return rc

def compute_base_performance(dry
                               , features):

    KEY = 'author_email_domain'
    MIN_THRESHOLD = 200

    if is_invalid_subgroup(df=dry
                     , agg_column=AGG_COLUMN
                     , cnt_column=KEY
                     , sub_groups=4
                     , min_thrshold=MIN_THRESHOLD):
        return pd.DataFrame([None], columns=['Monotonicity'])

    gdry = dry.groupby(['pop_group' #'AGG_COLUMN
                        ], as_index=False).agg({i: 'mean' for i in features})


    f_monotone = partial(is_monotone_by_popularity
                                          , use_display_name=True)

    ndf = grouped_df_structuring('pop_group' #AGG_COLUMN
                          , gdry
                          , ref_val='Low'
                          , features=features
                          , group_display_name=AGG_DISPLAY_NAME
                          , output_file=None
                          , caption=None
                          , check_monotinicity_function=f_monotone)

    ndf = ndf.fillna(-1)

    return ndf

def get_monotonicity(dry
                               , features):
    ndf = compute_base_performance(dry
                               , features)

    return ndf.iloc[0]['Monotonicity']


def compute_controled_results(df
                              , control_variables
                              , feature_evaluation_function
                              , control_value_output_format
                              , control_summary_output_format):



    for i in  sorted(control_variables):
        print(i)
        print(controlled_performance(df=df
                                    , control_variable=i
                                    , features=FEATURES_NAMES
                                    , feature_evaluation_function=feature_evaluation_function
                                    , control_value_output_file=control_value_output_format.format(control=i)
                                    , control_summary_output_file=control_summary_output_format.format(control=i)))




def control_results():

    df = get_developer_motivation_per_year_ds()
    df['pop_group'] = df[AGG_COLUMN].map(lambda x: ('Low' if x == 1.0 else
                                                      'Medium' if x == 2.0 else
                                                      'High' if x == 3.0 else
                                                      'Extraordinary' if x == 4.0 else
                                                      'Other'))

    compute_controled_results(df=df
                              , control_variables=control_variables - set([AGG_COLUMN])
                              , feature_evaluation_function=get_monotonicity
                              , control_value_output_format=join(DATA_PATH
                                            , "performance_by_stars_ctl_{control}.csv")
                              , control_summary_output_format=join(DATA_PATH
                                            , "performance_by_stars_ctl_{control}_sum.csv"))


if __name__ == "__main__":
    performance_by_repo_retention()
    control_results()

