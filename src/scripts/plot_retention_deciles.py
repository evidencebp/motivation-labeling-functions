from os.path import join
import pandas as pd


from configuration import REPO_FEATURES_NAMES
from data_utils import get_repo_ds

from plot_deciles import plot_deciles

def run_plots():
    df = get_repo_ds()


    grouping_column='retention_prob'

    metrics = list(set(REPO_FEATURES_NAMES) - set([grouping_column]))
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