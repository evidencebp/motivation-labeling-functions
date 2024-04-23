# Performance by affiliation
# https://github.com/evidencebp/corrective-commit-probability/blob/master/code/queries/developer_metrics_by_affiliation.sql

from os.path import join
import pandas as pd

from configuration import DATA_PATH
from decorate_features import display_name
from df_to_latex_table import df_to_latex_table
from normalization_utils import normalize_by_ref

performance_features = ['ccp'  #
    , 'avg_coupling_code_size_cut'  #
    , 'tests_presence'  #
    , 'same_date_duration_avg'  #
    , 'refactor_mle'  #
    , 'one_file_fix_rate'  #
                        ]


def performance_by_affiliation():

    AFFILIATIONS = {'other': 'Other'
, 'redhat.com': 'RedHat'
, 'apache.org': 'Apache'
, 'microsoft.com': 'Microsoft'
, 'fb.com': 'Facebook'
, 'intel.com': 'Intel'
, 'apple.com': 'Apple'
, 'us.ibm.com': 'IBM'
, 'amazon.com': 'Amazon'
, 'inria.fr': 'Inria'
, 'mit.edu': 'MIT'
, 'cornell.edu': 'Cornell'
, 'umich.edu': 'University of Michigan'
, 'stanford.edu': 'Stanford'
}
    organizations = ['Amazon', 'Google', 'RedHat', 'Microsoft', 'Apache', 'Facebook', 'Intel', 'Apple', 'IBM']
    schools = ['Inria', 'MIT', 'Cornell', 'University of Michigan', 'Stanford']

    df = pd.read_csv(join(DATA_PATH
                          , 'Performance_by_affiliation.csv'))
    df = df[['affiliation', 'developers'] + performance_features]
    df['affiliation'] = df['affiliation'].map(lambda x: AFFILIATIONS.get(x,x))
    df['developers'] = df['developers'].map(lambda x: str(x) + ' ')
    df['order'] = df['affiliation'].map(lambda x: 1 if x in organizations else 2 if x in schools else 3
                                        )
    df.sort_values(['order', 'affiliation']
                    , inplace=True)
    df.drop(columns=['order']
             , inplace=True)

    ndf = normalize_by_ref(df=df
                           , ref_column='affiliation'
                           , ref_val='Other'
                           , features=set(df.columns) - set(['affiliation',	'developers']))

    ndf.columns = [display_name(i) for i in ndf.columns]

    ndf.rename(columns={'affiliation' : 'Affiliation'
                        , 'developers': 'Developers'}
               , inplace=True)


    df_to_latex_table(ndf
                      , caption='\label{tab:pref-by-affiliation} Performance by Affiliation'
                      , columns_to_name=None
                      , star_table=True
                      , columns_header='{ | l| p{15mm}| p{15mm}| p{12mm}| p{12mm}| p{12mm}| p{12mm}| p{12mm} | }')

if __name__ == "__main__":
    performance_by_affiliation()


