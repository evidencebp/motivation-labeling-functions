import os
import pandas as pd


from configuration import DATA_PATH
import metrics_utils
from plot_multi_bar import plot_multi_bar
from decorate_figure import decorate_figure

def plot_performance_by_developer_status():

    order_column = 'order'

    df = pd.read_csv(os.path.join(DATA_PATH
                                  , 'developer_performance_by_status.csv'))
    df[order_column] = df.status.map(lambda x: 1 if x == 'Continue' else 2 if x == 'No activity' else 3)
    df = df.sort_values(order_column)

    df, metrics_description = metrics_utils.add_normalized_metrics(df=df
                           , metrics_to_normalize=metrics_utils.metrics_to_normalize
                           , metrics_description=metrics_utils.metrics_description)

    # df["commits_avg_nrm"] = df['ccp_avg']/df['ccp_avg'].max()
    # df["message_length_nrm"] = df['message_length_avg_avg']/df['message_length_avg_avg'].max()
    # df["same_date_duration_nrm"] = df['same_date_duration_avg']/df['same_date_duration_avg'].max()
    # df["commit_days_nrm"] = df['commit_days_avg']/df['commit_days_avg'].max()
    # df["message_length_nrm"] = df['message_length_avg_avg']/df['message_length_avg_avg'].max()

    fig = plot_multi_bar(df
                   , grouping_column='status'
                   , metrics=metrics_description)

    fig = decorate_figure(fig
                          , title="Performance by Developer's Status"
                          , xaxis_title="Developer's Status"
                          , font_dict=dict(
                                    family="Courier New, monospace",
                                    size=18,
                                    color="black"
                                )
                          )

    fig.show()


if __name__ == "__main__":
    plot_performance_by_developer_status()


