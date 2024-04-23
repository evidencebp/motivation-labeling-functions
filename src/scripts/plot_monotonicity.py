import math
from os.path import join
import numpy as np
import pandas as pd

from configuration import FIGURES_PATH
from data_utils import get_developer_motivation_per_year_ds

from plot_boxplot import plot_boxplot
from plot_deciles import plot_deciles, generate_deciles
from plot_std_err_bar import plot_std_err_bar
CONCEPT = 'will_continue'
MIN_COMMITS = 12
MAX_COMMITS = 1000

def plot_monotonicity():

    df: pd.DataFrame = get_developer_motivation_per_year_ds()
    df[CONCEPT] = df.apply(lambda x: 1 if x.status == 'Continue' else 0
                           , axis='columns')
    df = df[(df['commits'] >= MIN_COMMITS)
                & (df['commits'] <= MAX_COMMITS)]

    features = {'commit_hours' : 'Distinct Hours'
        , 'refactor_mle' : 'Refactoring Prob.'
        , 'message_length_avg': 'Message Len.'}

    plot_retention_by_hours(df)

    #plot_retention_by_refactor(df)

    #plot_retention_by_commit_message_len(df)

def plot_retention_by_refactor(df: pd.DataFrame):

    feature = 'refactor_mle'
    df[feature] = df[feature].map(lambda x: 0 if x< 0 else 1 if x > 1 else x)
    fig = plot_deciles(df
                 , grouping_column=feature
                 , metric_column=CONCEPT
                 , title='Retention by refactoring probability deciles'
                 , xaxis_title='refactoring probability deciles'
                 , output_file=None)

    fig.show()

    deciles_column = feature + "_deciles"
    deciles_df = generate_deciles(df=df
                                  , grouping_column=feature
                                  , deciles_column=deciles_column)
    g = deciles_df.groupby(deciles_column
                     , as_index=False).agg(
             avg=(CONCEPT, 'mean'),
             std=(CONCEPT, 'std'),
             cnt=(CONCEPT, 'count')).sort_values(deciles_column)
    g = g.reset_index()
    g['index'] = g['index'] + 1
    fig = plot_std_err_bar(df=g
                    , x_column='index'
                    , y_avg='avg'
                    , y_std='std'
                    , y_count='cnt'
                    , title='Retention by refactoring probability deciles'
                    , x_title='Probability of a refactoring commit decile'
                    , y_title='Retention probability'
                    , text_digits=2)
    fig.show()

    df[feature] = df[feature].map(lambda x: round(0 if x< 0 else 1 if x > 1 else x, 1))

    g = df.groupby(feature
                     , as_index=False).agg(
             avg=(CONCEPT, 'mean'),
             std=(CONCEPT, 'std'),
             cnt=(CONCEPT, 'count')).sort_values(feature)
    print(g)
    fig = plot_std_err_bar(df=g
                    , x_column=feature
                    , y_avg='avg'
                    , y_std='std'
                    , y_count='cnt'
                    , title='Retention by refactoring probability'
                    , x_title='Probability of a refactoring commit'
                    , y_title='Retention probability'
                    , text_digits=2)
    fig.show()


def plot_retention_by_hours(df: pd.DataFrame):

    feature = 'commit_hours'

    g = df.groupby(feature
                     , as_index=False).agg(
             avg=(CONCEPT, 'mean'),
             std=(CONCEPT, 'std'),
             cnt=(CONCEPT, 'count')).sort_values(feature)
    print(g)
    fig = plot_std_err_bar(df=g
                    , x_column=feature
                    , y_avg='avg'
                    , y_std='std'
                    , y_count='cnt'
                    , title=''#'Retention by distinct hours of day'
                    , x_title='Distinct hours worked'#'Distinct hours of day in year'
                    , y_title='Retention probability'
                    , text_digits=2)
    fig.show()
    #fig.write_image(join(FIGURES_PATH
    #                     , 'retention_by_hours.png'))



def plot_retention_by_commit_message_len(df: pd.DataFrame):

    STEP = 50
    MAX_BOUND = 1000
    feature = 'message_length_avg'

    fig = plot_deciles(df
                 , grouping_column=feature
                 , metric_column=CONCEPT
                 , title='Retention by message length deciles'
                 , xaxis_title='message length deciles'
                 , output_file=None)

    fig.show()

    deciles_column = feature + "_deciles"
    deciles_df = generate_deciles(df=df
                                  , grouping_column=feature
                                  , deciles_column=deciles_column)
    g = deciles_df.groupby(deciles_column
                     , as_index=False).agg(
             avg=(CONCEPT, 'mean'),
             std=(CONCEPT, 'std'),
             cnt=(CONCEPT, 'count')).sort_values(deciles_column)
    g = g.reset_index()
    g['index'] = g['index'] + 1
    #g[feature + "_deciles"] = g[feature + "_deciles"].map(lambda x: str(x))
    g[feature + "_deciles"] = g[feature + "_deciles"].map(
        lambda x: ">" + str(round(x.left)) if x.right == np.inf else "<=" + str(round(x.right)))
    fig = plot_std_err_bar(df=g
                    , x_column=feature + "_deciles" #'index'
                    , y_avg='avg'
                    , y_std='std'
                    , y_count='cnt'
                    , title='Retention by message length deciles'
                    , x_title='message length decile'
                    , y_title='Retention probability'
                    , text_digits=2)
    fig.show()

    df[feature] = df[feature].map(lambda x: math.floor(MAX_BOUND/STEP) if MAX_BOUND < x else math.floor(x/STEP))

    g = df.groupby(feature
                     , as_index=False).agg(
             avg=(CONCEPT, 'mean'),
             std=(CONCEPT, 'std'),
             cnt=(CONCEPT, 'count')).sort_values(feature)

    g['feature_text'] = g[feature].map(lambda x: '<= ' + str(x*STEP) if x < math.floor(MAX_BOUND/STEP)
                                        else ' >= ' + str(MAX_BOUND))
    print(g)

    fig = plot_std_err_bar(df=g
                    , x_column='feature_text'
                    , y_avg='avg'
                    , y_std='std'
                    , y_count='cnt'
                    , title='Retention by average commit message length'
                    , x_title='Average commit message length (50 characters buckets)'
                    , y_title='Retention probability'
                    , text_digits=2)
    fig.show()


if __name__ == "__main__":
    plot_monotonicity()