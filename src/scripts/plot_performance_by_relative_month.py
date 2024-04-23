import os
import pandas as pd


from configuration import DATA_PATH
import metrics_utils
from plot_multi_bar import plot_multi_bar
from decorate_figure import decorate_figure

def plot_performance_by_relative_month():

    order_column = 'months_from_last_commit'
    metrics_to_normalize = ['commits_avg', 'ccp_avg', 'message_length_avg_avg', 'same_date_duration_avg'
        , 'commit_days_avg']

    df = pd.read_csv(os.path.join(DATA_PATH
                                  , 'performance_per_relative_month_agg.csv'))
    df = df.sort_values(order_column)
    df = df[df.status == "Abandoned"]

    df, metrics_description = metrics_utils.add_normalized_metrics(df=df
                           , metrics_to_normalize=metrics_to_normalize
                           , metrics_description=metrics_utils.metrics_description)

    fig = plot_multi_bar(df
                   , grouping_column='months_from_last_commit'
                   , metrics=metrics_utils.metrics_description)

    fig = decorate_figure(fig
                          , title="Performance by Month Relative to Abandoning"
                          , xaxis_title="Month Relative to Abandoning"
                          , font_dict=dict(
                                    family="Courier New, monospace",
                                    size=18,
                                    color="black"
                                )
                          )

    fig.show()


if __name__ == "__main__":
    plot_performance_by_relative_month()


