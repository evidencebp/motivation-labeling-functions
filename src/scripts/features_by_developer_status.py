from os.path import join

from configuration import DATA_PATH, FEATURES_NAMES, PERFORMANCE_BY_DEV_STATUS_STATS, ALL_FEATURES_DICT,\
    FEATURES_CM_STATS
from binning_utils import columns_sides_binning
from data_utils import get_developer_motivation_per_year_ds
from df_to_latex_table import df_to_latex_table
from feature_pair_analysis import pair_features_vs_concept, features_stats_to_cm_df


def features_by_developer_status():

    CONCEPT = 'Continue'
    dry = get_developer_motivation_per_year_ds()
    dry = dry.fillna(0)

    dry[CONCEPT] = dry.status.map(lambda x: x == CONCEPT)
    dry = dry[dry.status.isin(['Continue', 'No activity'])]
    #dry[CONCEPT] = dry[CONCEPT].astype('int64')

    # Bin metrics into two
    dry = columns_sides_binning(df=dry
                  , columns=FEATURES_NAMES
                  , labels=[0,1]
                  , quantiles = [ 0.5, 1])

    for i in FEATURES_NAMES:
        dry[i] = dry[i].astype('int64')

    # Get confusion metrics for metrics
    stats = pair_features_vs_concept(df=dry
                             , features=FEATURES_NAMES
                             , concept=CONCEPT
                             , metrics=None
                             , verbose=True)
    df = features_stats_to_cm_df(stats)

    df.to_csv(join(DATA_PATH
                   , FEATURES_CM_STATS))


    print(dry[CONCEPT].value_counts())



if __name__ == "__main__":
    features_by_developer_status()