from os.path import join
import pandas as pd


from configuration import REPO_FEATURES_NAMES
from data_utils import get_repo_ds

from plot_deciles import plot_deciles

def run_plots():
    df = get_repo_ds()


    grouping_columns = ['textual_abstraction_commits_rate'#, 'implementation_involved_rate', 'abs_content_ratio'
                        ]

    metrics = ['one_file_fix_rate'
, 'one_file_refactor_rate'
, 'test_involved_rate'
, 'no_test_refactor_rate'
, 'test_usage_rate'
, 'test_usage_in_refactor_rate']

    for grouping_column in grouping_columns:
        for metric_column in metrics:
            fig = plot_deciles(df
                             , grouping_column
                             , metric_column
                             , title="{metric} by {group}".format(metric=metric_column
                                                                  , group=grouping_column)
                             , xaxis_title="Deciles of {group}".format(group=grouping_column)
                             , output_file=None)
            fig.show()




if __name__ == "__main__":
    run_plots()