from os.path import join
import pandas as pd

from configuration import DATA_PATH, REPO_AGG_STATS_FILE
from df_to_latex_table import df_to_latex_table

def print_ccp_and_productivity_table():

    df = pd.read_csv(join(DATA_PATH
                          , REPO_AGG_STATS_FILE))

    #df = df[df.metric.isin(['ccp', 'merged_issues_per_involved_developer', 'commits_per_involved_developer', 'commits'
    #                           , 'merged_prs_per_involved_developer', 'same_day_duration_avg'])]

    df = df.fillna('')
    df['metric'] = df.metric.map(lambda x: x.replace("_", " "))
    df = df.drop(columns=['Pearson_with_same_day_duration_avg'
                          , 'Pearson_with_commits'
                          , 'precision_lift_with_same_day_duration_avg'])

    df = df.rename(columns={'metric' : 'Metric'
                                , 'Self_year_Pearson' : 'Stability'
                                , 'precision_lift_with_ccp' : 'Lift(CCP)'
                                , 'precision_lift_with_same_day_duration_avg' : 'Lift(Duration)'
                                , 'precision_lift_with_commits' : 'Lift(Commits)'
                                , 'precision_lift_with_commits_per_involved_developer': 'Lift(CPID)'
                                , 'Pearson_with_ccp' :'Pearson(CCP)'
                                , 'Pearson_with_same_day_duration_avg': 'Pearson(Duration)'
                                , 'Pearson_with_commits': 'Pearson(Commits)'
                                , 'Pearson_with_commits_per_involved_developer': 'Pearson(CPID)'
                                })
    df_to_latex_table(df
                        , caption=' \label{tab:ccp-prod} CCP and Productivity'
                        , columns_to_name=None)
    # TODO - add minimal threshold commits in computations
    # TODO - per developer normalization

if __name__ == "__main__":
    print_ccp_and_productivity_table()