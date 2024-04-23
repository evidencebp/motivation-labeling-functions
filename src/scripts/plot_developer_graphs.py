from os.path import join
import pandas as pd
import plotly.express as px

from configuration import DATA_PATH, LAST_ANALYZED_YEAR
from data_utils import get_developer_motivation_per_year_ds
from decorate_features import display_name
from decorate_figure import decorate_figure
from ml_utils import extract_relevent_features
from plot_deciles import plot_deciles

KEYS = ['id', 'year']

def plot_developer_scatter():
    df = get_developer_motivation_per_year_ds()
    #df = df[(df.year == LAST_ANALYZED_YEAR)
    #        ]
    #df['active_wip_tasks_group'] = df['active_wip_tasks'].map(lambda x: round(x))
    plot_dev_graphs(df
                    , 'commit_period')


def plot_dev_scatter(df
                    , x
                    , y):
    fig = px.scatter(x=df[x]
                     , y=df[y]
                     , trendline="ols")
    fig = decorate_figure(fig
                          , title="Developer {feature} by {concept}".format(feature=display_name(y)
                                                                            , concept=display_name(x))
                          , xaxis_title=display_name(x)
                          , yaxis_title=display_name(y)
                          )
    return fig


def plot_dev_graphs(df
                    , y):
    x_dimension = ['authors', 'repo_stargazers_count']
    #features = extract_relevent_features(df
    #                                        , excluded_features=KEYS)

    for x in x_dimension:
        print(x)
        """
        fig = plot_dev_scatter(df[~df[x].isna()]
                    , x
                    , y)
        """
        fig = plot_deciles(df
                     , grouping_column=x
                     , metric_column=y
                     , title="Developer {feature} by {concept}".format(feature=display_name(y)
                                                                            , concept=display_name(x))
                     , xaxis_title=display_name(x)
                    )
        fig.show()
        """
        fig = plot_groups(df
                 , concept
                 , feature
                 , title="Developer {feature} by {concept}".format(feature=display_name(display_name(feature))
                                                    , concept=display_name(concept))
                 , xaxis_title=display_name(concept)
                 , output_file=None)

        fig.show()
        """

if __name__ == "__main__":
    plot_developer_scatter()
