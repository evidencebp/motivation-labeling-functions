from os.path import join

from configuration import REPO_FEATURES_NAMES, DATA_PATH

from binning_utils import columns_sides_binning
from data_utils import get_repo_ds
from feature_pair_analysis import pair_features_vs_concept, features_stats_to_cm_df, pretty_print

def analyze_repo_halves_prediction():

    CONCEPT = 'retention_prob'

    df = get_repo_ds()
    columns_with_nulls = []
    for i in REPO_FEATURES_NAMES:
        if df[i].isnull().values.any():
            columns_with_nulls.append(i)

    df = columns_sides_binning(df=df
                  , columns=set(REPO_FEATURES_NAMES) - set (columns_with_nulls)
                  , labels=[0,1]
                  , quantiles = [ .5, 1])


    #df = df.fillna(0) # better remove them?

    for i in REPO_FEATURES_NAMES:
        df[i] = df[i].map(lambda x: True if x == 1 else False)

    stats = pair_features_vs_concept(df
                             , features=set(REPO_FEATURES_NAMES) - set (columns_with_nulls) - {CONCEPT}
                             , concept='retention_prob'
                             , verbose=True
                             )
    #pretty_print(stats)
    stats_df = features_stats_to_cm_df(stats)
    print(stats_df)
    stats_df.to_csv(join(DATA_PATH
                         , 'halves_prediction_performance.csv'))

if __name__ == "__main__":
    analyze_repo_halves_prediction()