from os.path import join
import pandas as pd

from configuration import DATA_PATH, CONCEPTS_DICT, REPO_COHANGE_STATS_TEMPLATE, STABILITY_STATS_FILE\
    , REPO_CORRELATION_STATS_TEMPLATE, REPO_AGG_STATS_FILE, JOINT_STATS_FILE, PERFORMANCE_BY_DEV_STATUS_STATS\
    , PERFORMANCE_BY_REPO_RETENTION_STATS, ALL_FEATURES_DICT, COCHANGE_OF_METRCIS_BY_RETENTION_PROB
from file_utils import join_dataframes, prefix_columns

from decorate_features import display_name


def run_aggregate_repo_analysis():

    keys = ['metric']
    dataframes = []

    # Add all metrics
    dataframes.append(pd.DataFrame(ALL_FEATURES_DICT.keys(), columns=['metric']))

    # Add stability
    df = pd.read_csv(join(DATA_PATH
         , STABILITY_STATS_FILE))
    df = df[['metric', 'Pearson', 'relative_diff_avg']]
    df = df.rename(columns={'Pearson': 'Self_year_Pearson'
                            , 'relative_diff_avg': 'Self_year_relative_diff'})
    dataframes.append(df)




    # Add cochange
    for i in CONCEPTS_DICT.keys():
        stats_file = REPO_COHANGE_STATS_TEMPLATE.format(metric=i)
        df = pd.read_csv(join(DATA_PATH, stats_file))
        df = df[['feature', 'precision_lift']]
        df = df.rename(columns={'feature' : 'metric'
                                , 'precision_lift' : 'precision_lift_with_' + i})
        dataframes.append(df)


    # Add cochange by retention increase
    stats_file = COCHANGE_OF_METRCIS_BY_RETENTION_PROB
    df = pd.read_csv(join(DATA_PATH, stats_file))
    df = df[['feature', 'precision_lift']]
    df = df.rename(columns={'feature' : 'metric'
                            , 'precision_lift' : 'precision_lift_cochange_by_retention'})
    dataframes.append(df)




    # Add repo Pearson
    for i in CONCEPTS_DICT.keys():
        stats_file = join(DATA_PATH
                            , REPO_CORRELATION_STATS_TEMPLATE.format(metric=i))
        df = pd.read_csv(join(DATA_PATH, stats_file))
        dataframes.append(df)

    twins_df = pd.read_csv(join(DATA_PATH, JOINT_STATS_FILE))
    twins_df = twins_df.rename(columns={'feature': 'metric'})
    twins_df = prefix_columns(df=twins_df
                   , prefix='twins_'
                   , columns=set(twins_df.columns) - set(keys))

    dataframes.append(twins_df)


    df = pd.read_csv(join(DATA_PATH, PERFORMANCE_BY_DEV_STATUS_STATS))
    df = prefix_columns(df=df
                   , prefix='dev_status_'
                   , columns=set(df.columns) - set(keys))
    dataframes.append(df)

    df = pd.read_csv(join(DATA_PATH, PERFORMANCE_BY_REPO_RETENTION_STATS))
    df = prefix_columns(df=df
                   , prefix='repo_retention_'
                   , columns=set(df.columns) - set(keys))
    dataframes.append(df)


    joint = join_dataframes(dataframes=dataframes
                                , keys=keys
                                , how='left')
    joint.to_csv(join(DATA_PATH
                      , 'duration_stats.csv')
                 , index=False)


    # Aggregate all
    joint = join_dataframes(dataframes=dataframes
                                , keys=keys
                                , how='left')

    joint['Display Name'] = joint.metric.map(display_name)

    joint.to_csv(join(DATA_PATH
                      , REPO_AGG_STATS_FILE)
                 , index=False)




if __name__ == '__main__':
    run_aggregate_repo_analysis()