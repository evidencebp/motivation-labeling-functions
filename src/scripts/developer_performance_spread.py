from os.path import join
import pandas as pd

from configuration import DATA_PATH
from data_utils import get_developer_motivation_per_year_ds
from decorate_features import display_name
from df_to_latex_table import df_to_latex_table

from performance_by_affiliation import performance_features

def developer_performance_spread(dry):

    rows = []
    for feature in performance_features:
        rows.append((display_name(feature)
                     , dry[feature].quantile(0.10)
                     , dry[feature].quantile(0.25)
                     , dry[feature].quantile(0.50)
                     , dry[feature].quantile(0.75)
                     , dry[feature].quantile(0.90)
                     ))

    df = pd.DataFrame(rows
                      , columns=['Metric', '10\%', '25\%', '50\%', '75\%', '90\%'])


    df_to_latex_table(df
                      , caption='\label{tab:pref-spread} Performance Spread'
                      , columns_to_name=None
                      , star_table=True
                      , columns_header=None)


def performance_metrics_correlation(dry):
    corr = dry[performance_features].corr()

    corr.to_csv(join(DATA_PATH
                     , 'developer_performance_metrics_correlation.csv'))

if __name__ == '__main__':
    dry = get_developer_motivation_per_year_ds()
    dry = dry[dry['commits'] >= 200]

    developer_performance_spread(dry)
    performance_metrics_correlation(dry)


