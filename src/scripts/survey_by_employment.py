from os.path import join
import pandas as pd

from configuration import ENHANCED_CORRECTED_REPOS_FILE, PAY_QUESTION, ONLINE_PORTFOLIO_QUESTION, PROJECT_CORE_QUESTION\
    , PROJECT_RECOGNITION_QUESTION, PROJECT_MOTIVATION_QUESTION, PERSONAL_PRODUCTIVITY_QUESTION, TESTS_QUESTION\
    , DETAILED_MESSAGES_QUESTION, PROJECT_SATISFACTION_QUESTION, DATA_PATH, REPO_PROPERTIES, MOTIVATION_QUESTIONS_TAB\
    , COUNT_COL, MOTIVATION_QUESTION_STATS
from df_to_latex_table import df_to_latex_table
from etl import add_employment_group

HIGH_THRESHOLD = 10


def survey_by_motivation_type():

    EMAIL_COL = 'dev_author_email'
    AGG_COLUMN = 'Employment'
    df = pd.read_csv(ENHANCED_CORRECTED_REPOS_FILE)

    print("payment")
    g = df.groupby([PAY_QUESTION]
                   , as_index=False).agg({COUNT_COL: 'count'})
    print(g)

    print("payment, 'random_approach'")
    g = df[df['sampling_method'] =='random_approach'].groupby([PAY_QUESTION]
                   , as_index=False).agg({COUNT_COL: 'count'})
    print(g)

    df = df[~df[EMAIL_COL].isna()]

    df = add_employment_group(dev_df=df
                         , base_col='email_domain'
                         , group_col=AGG_COLUMN
                         , repo_col='correct_repo_name'
                         ,email_col=EMAIL_COL)

    print("employment") # 1, not paid, 2 paid
    g = df.groupby([AGG_COLUMN, PAY_QUESTION]
                   , as_index=False).agg({COUNT_COL: 'count'})
    print(g)

    print("employment, 'random_approach'") # 1, not paid, 2 paid
    g = df[df['sampling_method'] =='random_approach'].groupby([AGG_COLUMN, PAY_QUESTION]
                   , as_index=False).agg({COUNT_COL: 'count'})
    print(g)


if __name__ == '__main__':
    survey_by_motivation_type()