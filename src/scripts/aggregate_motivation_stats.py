from os.path import join
import pandas as pd

from configuration import DATA_PATH, DEV_CNT_ABND_TWINS_STATS, DEV_CNT_CNT_TWINS_STATS, DEV_YEAR_CNT_ABND_TWINS_STATS\
    , JOINT_STATS_FILE, ALL_FEATURES_DICT, DEV_SAME_YEAR_CNT_TWINS_STATS\
    , DEV_SAME_YEAR_CNT_OVER_ABND_TWINS_STATS, DEV_NEAR_YEAR_NOACT_OVER_CNT_TWINS_STATS, FEATURES_NAMES
from decorate_features import display_name, feature_category
from df_to_latex_table import df_to_latex_table
from file_utils import prefix_columns



def is_monotone(row):
    if row.feature in ALL_FEATURES_DICT.keys():
        rc = ((ALL_FEATURES_DICT[row.feature](1.0, row.year_cnt_abndavg)
               and ALL_FEATURES_DICT[row.feature](1.0, row['Abandoned over Next'])) > 0)
    else:
        rc = None

    return rc

def aggregate_stats():

    cnt_abd_df = pd.read_csv(join(DATA_PATH, DEV_CNT_ABND_TWINS_STATS))
    cnt_abd_df = prefix_columns(df=cnt_abd_df
                                , prefix='cnt_abnd'
                                , columns=set(cnt_abd_df.columns) -set(['feature']))
    cnt_abd_df = cnt_abd_df[cnt_abd_df.feature.isin(FEATURES_NAMES)]
    joint_df = cnt_abd_df

    cnt_cnt_df = pd.read_csv(join(DATA_PATH, DEV_CNT_CNT_TWINS_STATS))
    cnt_cnt_df = prefix_columns(df=cnt_cnt_df
                                , prefix='cnt_cnt'
                                , columns=set(cnt_cnt_df.columns) -set(['feature']))

    cnt_cnt_df = cnt_cnt_df[cnt_cnt_df.feature.isin(FEATURES_NAMES)]
    joint_df = pd.merge(joint_df, cnt_cnt_df, on='feature')

    year_cnt_abd_df = pd.read_csv(join(DATA_PATH, DEV_SAME_YEAR_CNT_OVER_ABND_TWINS_STATS))
    year_cnt_abd_df = prefix_columns(df=year_cnt_abd_df
                                , prefix='year_cnt_abnd'
                                , columns=set(year_cnt_abd_df.columns) -set(['feature']))

    year_cnt_abd_df = year_cnt_abd_df[year_cnt_abd_df.feature.isin(FEATURES_NAMES)]
    joint_df = pd.merge(joint_df, year_cnt_abd_df, on='feature')

    year_cnt_cnt_df = pd.read_csv(join(DATA_PATH, DEV_SAME_YEAR_CNT_TWINS_STATS))
    year_cnt_cnt_df = prefix_columns(df=year_cnt_cnt_df
                                , prefix='year_cnt_cnt'
                                , columns=set(year_cnt_cnt_df.columns) -set(['feature']))

    year_cnt_cnt_df = year_cnt_cnt_df[year_cnt_cnt_df.feature.isin(FEATURES_NAMES)]
    joint_df = pd.merge(joint_df, year_cnt_cnt_df, on='feature')

    near_year_cnt_noact_df = pd.read_csv(join(DATA_PATH, DEV_NEAR_YEAR_NOACT_OVER_CNT_TWINS_STATS))
    near_year_cnt_noact_df = prefix_columns(df=near_year_cnt_noact_df
                                , prefix='near_year_cnt_noact'
                                , columns=set(near_year_cnt_noact_df.columns) -set(['feature']))

    near_year_cnt_noact_df = near_year_cnt_noact_df[near_year_cnt_noact_df.feature.isin(FEATURES_NAMES)]
    joint_df = pd.merge(joint_df, near_year_cnt_noact_df, on='feature')


    joint_df['Abandoned over Next'] = joint_df['cnt_abndavg'].div(joint_df['cnt_cntavg'])
    joint_df['monotone'] = joint_df.apply(is_monotone, axis=1)

    joint_df = joint_df.drop_duplicates()

    joint_df.to_csv(join(DATA_PATH, JOINT_STATS_FILE)
                      , index=False)
    return joint_df

def print_motivation_table(df):


    #df = df.fillna('')
    df['Monotonicity'] = df['monotone'].map(lambda x: None if x is None else 'True' if x > 0 else 'False')

    #df['feature'] = df.feature.map(lambda x: x.replace("_", " "))
    """
    df = df.drop(columns=['Pearson_with_same_day_duration_avg'
                          , 'Pearson_with_commits'
                          , 'precision_lift_with_same_day_duration_avg'])
    """
    df = df.rename(columns={#'feature' : 'Metric'
                                #, 'Self_year_Pearson' : 'Stability'
                                #, 'precision_lift_with_ccp' : 'Lift(CCP)'
                                #, 'precision_lift_with_same_day_duration_avg' : 'Lift(Duration)'
                                #,
                                'cnt_abndavg' : 'Project Switched Year'
                                , 'cnt_abndstd': 'Project Switched Year(std)'
                                , 'cnt_cntavg' :'Project Next Year'
                                , 'cnt_cntstd': 'Project Next Year(std)'
                                , 'year_cnt_abndavg': 'Same Year Cnt. over Switched'
                                , 'year_cnt_abndstd': 'Same Year Switched vs. Cnt.(std)'
                                , 'near_year_cnt_noactavg': 'Near Year no Act. vs. Cnt.'
                                , 'near_year_cnt_noactstd': 'Near Year no Act. vs. Cnt.(std)'
                                , 'year_cnt_cntavg': 'Same Year Cnt. vs. Cnt.'
                                , 'year_cnt_cntstd': 'Same Year Cnt. vs. Cnt.(std)'
                                })

    df['Metric'] = df.feature.map(display_name)
    df['Category'] = df.feature.map(feature_category)
    df = df.sort_values(['Category','Metric'])
    df = df.fillna('')

    columns_header = '{ | p{25mm}| p{25mm}| p{16mm}| p{16mm}| p{14mm}| p{14mm}|  }'
    df_to_latex_table(df[['Category', 'Metric'
        #, 'Project Switched Year(std)'
        , 'Project Next Year'
        , 'Project Switched Year'
        #, 'Project Next Year(std)'
        , 'Same Year Cnt. over Switched'
        #, 'Same Year Abd. vs. Cnt.(std)'
        #, 'Near Year no Act. vs. Cnt.'
        #, 'Near Year no Act. vs. Cnt.(std)'
        #, 'Same Year Cnt. vs. Cnt.'
        #, 'Same Year Cnt. vs. Cnt.(std)'
                          ]]
                        , caption=' \label{tab:motivation-inf} Developer Motivation Influence'
                        , columns_to_name=None
                        , star_table=True
                        , columns_header=columns_header)

def run_aggregate_motivation_stats():
    joint_df = aggregate_stats()
    print_motivation_table(df=joint_df)

if __name__ == '__main__':
    run_aggregate_motivation_stats()
