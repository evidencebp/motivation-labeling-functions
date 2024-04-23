from os.path import join
import pandas as pd

from configuration import DATA_PATH, REPO_AGG_STATS_FILE, REPO_FEATURES_NAMES
from decorate_features import display_name, feature_category #, feature_description
from df_to_latex_table import df_to_latex_table


def print_retention_table():
    df = pd.read_csv(join(DATA_PATH
                  , REPO_AGG_STATS_FILE))
    df = df.fillna('')

    df = df[['metric', 'Self_year_Pearson', 'Self_year_relative_diff', 'precision_lift_cochange_by_retention', 'Pearson_with_retention_prob']]

    """
    df = df.drop(columns=['Pearson_with_same_day_duration_avg'
                          , 'Pearson_with_commits'
                          , 'precision_lift_with_same_day_duration_avg'])
    """
    df = df.rename(columns={'metric' : 'Metric'
                                , 'Self_year_Pearson' : 'Self Pearson'
                                , 'Self_year_relative_diff' : 'Self Relative Diff'
                                , 'precision_lift_cochange_by_retention' : 'Precision Lift'
                                , 'Pearson_with_retention_prob' : 'Pearson'
                                })
    #df['Metric'] = df.Metric.map(lambda x: x.replace("_", " "))
    df = df[df.Metric.isin(REPO_FEATURES_NAMES)]
    df['Category'] = df.Metric.map(feature_category)
    #df['Description']=  df.Metric.map(feature_description)
    df['Metric'] = df.Metric.map(display_name)
    df = df.sort_values(['Category','Metric'])



    columns_header = '{ | p{25mm} | p{25mm}| p{12mm}| p{12mm}| p{12mm} | p{12mm}|}'
    df_to_latex_table(df[['Category' ,'Metric' #, 'Description'
                            , 'Self Pearson', 'Self Relative Diff', 'Precision Lift', 'Pearson' ]]
                        , caption=' \label{tab:metrics-prop} Metrics Properties'
                        , columns_to_name=None
                        , star_table=True
                        , columns_header=columns_header)


if __name__ == "__main__":
    print_retention_table()
