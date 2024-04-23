from os.path import join
import pandas as pd

from configuration import GENERAL_PATH, COMPANIES_DOMAINS

from compare_twin_behaviours import build_twin_ds
from data_utils import get_developer_motivation_per_year_ds, get_repo_ds
from etl import generate_enhanced_developer_motivation_per_year_ds
from df_to_latex_table import df_to_latex_table
from performance_by_repo_developers_num import developer_group
from performance_by_repo_employment import is_employee, get_email_domain
from survey_by_repo_license_type import AGG_COLUMN, BASE_COL, LICENSE_GROUP

def build_twins_df():
    """
    Choosing different projects of the same developer in the same year
    :return:
    """
    keys= ['year', 'author_email'] # Consider comparing different repos, same year and developer

    filtering_function = lambda x: x.repo_name_x == x.repo_name_y  # Might remove for more cases
    comparision_columns = ['repo_name', 'License Type', 'Popularity', 'Community', 'Employment']

    dry_df = generate_enhanced_developer_motivation_per_year_ds(include_git=True)
    dry_df = dry_df[keys + comparision_columns].copy()

    df =  build_twin_ds(first_behaviour=dry_df
                            , second_behaviour=dry_df
                            , keys=keys
                            , comparision_columns=comparision_columns
                            , filtering_function=filtering_function)
    return df

def expected_agreement(df
                       , col
                       ):
    ind_prob = 0.0
    for val, p in df[col].value_counts(normalize=True).iteritems():
        ind_prob += p*p

    return ind_prob


def evaluate_license_stability(df):
    license_df = df.copy()
    license_df = license_df[(license_df['License Type_x'].isin(['Closed', 'Open', 'Highly Open']))
                            & (license_df['License Type_y'].isin(['Closed', 'Open', 'Highly Open']))]
    return evaluate_stability(license_df
                       , 'License Type')

def evaluate_stability(df
                       , col):
    print(df.groupby([col + '_x', col + '_y'], as_index=False).agg({'author_email' : 'count'}))
    df['same_group'] = df.apply(lambda x: x[col + '_x'] == x[col + '_y']
                                                , axis=1)
    accuracy=df['same_group'].mean()
    ind_prob = expected_agreement(df
                       , col + '_x'
                       )
    lift = accuracy/ind_prob - 1

    return {'Accuracy': accuracy
            , 'Independent Prob': ind_prob
            , 'Lift': lift}


if __name__ == '__main__':
    df = build_twins_df()

    stats = []
    stat = evaluate_license_stability(df)
    stat['Function'] = 'Ideology'
    print(stat)
    stats.append(stat)

    stat = evaluate_stability(df
                       , 'Popularity')
    stat['Function'] = 'Popularity'
    print(stat)
    stats.append(stat)

    stat = evaluate_stability(df
                       , 'Community')
    stat['Function'] = 'Community'
    print(stat)
    stats.append(stat)

    stat = evaluate_stability(df
                       , 'Employment')
    stat['Function'] = 'Employment'
    print(stat)
    stats.append(stat)

    stats_df = pd.DataFrame(stats, columns=['Accuracy', 'Independent Prob.', 'Lift', 'Function'])
    stats_df = stats_df.sort_values('Function')

    columns_header = '{ | l| c| c| c | }'
    print()
    df_to_latex_table(stats_df[['Function', 'Accuracy', 'Independent Prob', 'Lift']]
                  , caption=' \label{tab:lb-stability} Developer Labeling Function Preferences Stability'
                  , columns_to_name=None
                  , star_table=True
                  , columns_header=None)
