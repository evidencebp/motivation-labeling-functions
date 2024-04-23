from os.path import join
import pandas as pd

from configuration import DATA_PATH, REPO_AGG_STATS_FILE

def run_metrics_summarization():
    df = pd.read_csv(join(DATA_PATH
                  , REPO_AGG_STATS_FILE))


    print("metrics", len(df))
    print(df.columns)
    print("stable metrics", len(df[df.Self_year_Pearson > 0.5]))
    print("cochange metrics", len(df[df.precision_lift_with_retention_prob > 0.0]))
    print("dev status monotone metrics", len(df[df.dev_status_monotone > 0.0]))
    print("twins monotone metrics", len(df[df.twins_monotone > 0.0]))
    print("repo retention group monotone metrics", len(df[df.repo_retention_monotone > 0.0]))

    # TODO - add twins

    robust = df[(df.Self_year_Pearson > 0.5)
                & (df.precision_lift_with_retention_prob > 0.0)
                & (df.repo_retention_monotone > 0.0)
                & (df.dev_status_monotone > 0.0)
                & (df.twins_monotone > 0.0)
                ]
    print("robust metrics", len(robust))
    print(sorted(robust.metric.unique()))

    """
    'metric', 'Self_year_Pearson', 'precision_lift_with_ccp',
       'precision_lift_with_same_date_duration_avg',
       'precision_lift_with_commits',
       'precision_lift_with_avg_coupling_code_size_cut',
       'precision_lift_with_retention_prob', 'Pearson_with_ccp',
       'Pearson_with_same_date_duration_avg', 'Pearson_with_commits',
       'Pearson_with_avg_coupling_code_size_cut',
       'Pearson_with_retention_prob', 'cnt_abndavg', 'cnt_abndstd',
       'cnt_cntavg', 'cnt_cntstd', 'year_cnt_abndavg', 'year_cnt_abndstd',
       'dev_status_Abandoned', 'dev_status_Continue', 'dev_status_No activity',
       'dev_status_monotone', 'repo_retention_Low', 'repo_retention_Medium',
       'repo_retention_High', 'repo_retention_monotone']
    """

if __name__ == "__main__":
    run_metrics_summarization()