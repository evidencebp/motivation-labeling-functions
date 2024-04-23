from os.path import join
import pandas as pd


from configuration import DATA_PATH
from df_to_latex_table import df_to_latex_table
from performance_by_repo_stars import transpose_metrics_df
STATS_PATH = join(DATA_PATH
                  , 'labeling_functions')

features = ['refactor_mle'
    ,	'message_length_avg'
    , 'commit_hours'
    , 'high_refactor'
    , 'high_message_length_avg'
    , 'high_commit_hours'
    , 'retention'
]

order_dict = {'repos': 1
, 'developers': 2
, 'cnt': 3
, 'retention': 4
, 'Commit Hours': 5
, 'high_commit_hours': 6
, 'Message Len.': 7
, 'high_message_length_avg': 8
, 'Refactor Prob.': 9
, 'high_refactor': 10
}


display_dict = {'repos': 'Repositories'
, 'developers': 'Developers'
, 'cnt': 'Cases'
, 'retention': 'Retention'
, 'high_commit_hours': 'High Commit Hours'
, 'high_message_length_avg': 'High Message Len.'
, 'high_refactor': 'High Refactor Prob.'
}

def motivation_by_types():

    motivation_by_employment()

    motivation_by_licence()

    motivation_by_dev_group()

    motivation_by_popularity_group()

def motivation_by_employment():
    motivation_by_function(agg_column='Employee'
                           , stat_path=join(STATS_PATH
                                            , 'labeling_functions_stats_by_employment.csv')
                           , caption=' \label{tab:motivation_by_employment} Motivation by Employment '
                           , ref_val=False)

def motivation_by_licence():
    motivation_by_function(agg_column='Licence'
                           , stat_path=join(STATS_PATH
                                            , 'labeling_functions_stats_by_ideology.csv')
                           , caption=' \label{tab:motivation_by_licence} Motivation by Licence '
                           , ref_val='Closed'
                           , columns=['Licence', 'Closed', 'Other', 'Open', 'Highly Open'])


def motivation_by_dev_group():
    motivation_by_function(agg_column='Developers'
                           , stat_path=join(STATS_PATH
                                            , 'labeling_functions_stats_by_dev_group.csv')
                           , caption=" \label{tab:motivation_by_dev_group} Motivation by Developers' Group "
                           , ref_val='Single'
                           , columns=['Developers', 'Single', 'Small', 'Medium', 'Large'])


def motivation_by_popularity_group():
    motivation_by_function(agg_column='Popularity'
                           , stat_path=join(STATS_PATH
                                            , 'labeling_functions_stats_by_popularity_group.csv')
                           , caption=" \label{tab:motivation_by_dev_group} Motivation by Popularity Group "
                           , ref_val='Low'
                           , columns=['Popularity', 'Low', 'Medium', 'High', 'Extraordinary'])

def motivation_by_function(agg_column
                           , stat_path
                           , caption
                           , ref_val
                           , columns=None):

    df = pd.read_csv(stat_path)

    ndf, agg_values = transpose_metrics_df(features
                         , group_column='f'
                         , grouped_df=df
                         , ref_val=ref_val
                         , group_display_name=agg_column
                         , change_to_display=True)

    ndf.columns = [str(i) for i in ndf.columns]

    ndf['ORDER'] = ndf[agg_column].map(lambda x: order_dict.get(x, 0))
    ndf = ndf.sort_values('ORDER')
    ndf.drop(columns=['ORDER', 'Category']
             , inplace=True)
    ndf[agg_column] = ndf[agg_column].map(lambda x: display_dict.get(x,x))

    if columns:
        ndf = ndf[columns]
    print()
    df_to_latex_table(ndf
                      , caption=caption
                      , rounding_digits=2
                      , columns_to_name=None
                      , star_table=False
                      #, columns_header=columns_header
                      )
    print()


if __name__ == "__main__":
    motivation_by_types()