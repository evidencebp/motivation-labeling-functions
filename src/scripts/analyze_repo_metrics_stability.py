import os
import pandas as pd

from configuration import DATA_PATH, FIRST_ANALYZED_YEAR, REPO_FEATURES_NAMES, STABILITY_STATS_FILE\
    , MINIMAL_PRS_PER_REPO_THRESHOLD, MINIMAL_COMMIT_PER_REPO
from data_utils import get_repo_per_year_ds
from stability_analysis import analyze_stability


def analyze_repo_metrics_stability(stability_stats_file):

    keys = [ 'repo_name']

    metric_per_year_df = get_repo_per_year_ds()

    stats = analyze_stability(metric_per_year_df
                                , keys=keys
                                , metrics=REPO_FEATURES_NAMES
                                , time_column='year'
                                , minimal_time=FIRST_ANALYZED_YEAR
                                , control_variables=[]
                               , min_cnt_column='commits'
                               , min_cnt_threshold=MINIMAL_COMMIT_PER_REPO
                              #, min_cnt_column='merged_prs'
                              #, min_cnt_threshold=MINIMAL_PRS_PER_REPO_THRESHOLD
                              )

    stats_df = pd.DataFrame.from_dict(stats, orient='index')
    stats_df = stats_df.reset_index()
    stats_df = stats_df.rename(columns={'index': 'metric'})
    stats_df = stats_df.sort_values(['metric'], ascending=[True])

    stats_df.to_csv(stability_stats_file)

def run_analayze_repo_metrics_stability():
    return analyze_repo_metrics_stability(stability_stats_file = os.path.join(DATA_PATH
                                                            , STABILITY_STATS_FILE))

def find_minimal_pearson():
    df = pd.read_csv(os.path.join(DATA_PATH
                                  , STABILITY_STATS_FILE))
    print("Minimal Pearson", df.Pearson.min())
    print("Avg Pearson", df.Pearson.mean())

if __name__ == '__main__':
    run_analayze_repo_metrics_stability()
    find_minimal_pearson()