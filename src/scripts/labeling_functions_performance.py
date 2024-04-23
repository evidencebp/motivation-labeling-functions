from os.path import join
import pandas as pd

from configuration import DATA_PATH
from decorate_features import display_name, feature_description
from df_to_latex_table import df_to_latex_table

LF_DATA_PATH = join(DATA_PATH, r'labeling_functions')

def labeling_functions_performance():

    suffixes = ['continue', 'high_hours', 'high_refactoring', 'long_messages']

    dfs = []
    for i in suffixes:
        df = pd.read_csv(join(LF_DATA_PATH
                              , 'performance_by_{s}.csv'.format(s=i)))
        df['classifier'] = i
        df = df.reset_index()
        dfs.append(df)


    df = pd.concat(dfs).reset_index()
    df = df.T
    df = df.reset_index()
    df.columns = ['Metric'
        , 'Quit'
        , 'Continue'
        , 'Low Hours'
        , 'High Hours'
        , 'Low Refactoring'
        , 'High Refactoring'
        , 'Short Messages'
        , 'Long Messages']
    df['Description'] = df['Metric'].map(feature_description)
    df['Metric'] = df['Metric'].map(display_name)
    df = df[~df['Metric'].isin(['classifier', 'level_0', 'index'
                                   , 'f', 'developers', 'repos', 'cnt', 'owned_repository'])]

    df['Hours'] = df['High Hours'].divide(df['Low Hours'])
    df['Refactoring'] = df['High Refactoring'].divide(df['Low Refactoring'])
    df['Messages'] = df['Long Messages'].divide(df['Short Messages'])


    df['Retention'] = df.apply(lambda x: '' if x['Quit'] == 0 else x['Continue']/x['Quit']
                                , axis=1)
    df['Metric'] = df['Metric'].map(lambda x: {'developers': 'Developers'
                                               , 'repos': 'Repositories'
                                               , 'cnt': 'Cases'}.get(x, x))

    print()
    df_to_latex_table(
        df[['Metric'
        , 'Description'
        , 'Retention'
        , 'Hours'
        , 'Messages'
        , 'Refactoring']]
        , '\label{tab:performance-by-motivation} Performance By Labeling Functions'
        , columns_header='{ | p{15mm}| p{40mm} | l| l| l| l  | }'
        #, columns_to_name={'feature' : 'Smell', 'precision' : 'Precision'}
        )
    print()


    df.to_csv(join(LF_DATA_PATH
                   , 'performance_by_labeling_functions.csv'))

if __name__ == "__main__":
    labeling_functions_performance()
