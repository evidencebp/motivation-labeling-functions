import pandas as pd

from configuration import ANON_SURVEY_FILE, PAY_QUESTION, ONLINE_PORTFOLIO_QUESTION, PROJECT_CORE_QUESTION\
    , PROJECT_RECOGNITION_QUESTION, PROJECT_MOTIVATION_QUESTION, PERSONAL_PRODUCTIVITY_QUESTION, TESTS_QUESTION\
    , DETAILED_MESSAGES_QUESTION, PROJECT_SATISFACTION_QUESTION
from df_to_latex_table import df_to_latex_table

HIGH_THRESHOLD = 10

COUNT_COL = 'Q1'

MOTIVATION_TYPE = {PAY_QUESTION : 'Payment'
                    , ONLINE_PORTFOLIO_QUESTION: 'Reputation'
                    , PROJECT_RECOGNITION_QUESTION: 'Recognition'
                    , PROJECT_CORE_QUESTION : 'Core'}

METRIC_TYPE = { COUNT_COL: 'Developers'
                    , PROJECT_MOTIVATION_QUESTION: 'Motivation in Project'
                    , PROJECT_SATISFACTION_QUESTION: 'Satisfaction in Project'
                    , PERSONAL_PRODUCTIVITY_QUESTION: 'Personal Productivity'
                    , TESTS_QUESTION : 'Test Writing'
                    , DETAILED_MESSAGES_QUESTION: 'Detailed Commit Messages'}

PROJECT_MOTIVATION_QUESTION = 'Q86'
PERSONAL_PRODUCTIVITY_QUESTION = 'Q84'
TESTS_QUESTION = 'Q93'
DETAILED_MESSAGES_QUESTION = 'Q94'
PROJECT_SATISFACTION_QUESTION = 'Q72'

SAMPLING_COL = 'sampling_method'

def survey_by_motivation_type():

    df = pd.read_csv(ANON_SURVEY_FILE)
    #df = df[df[SAMPLING_COL] == 'random_approach'] # TODO - check if populations behave differently

    # Beautiful code
    df['beautiful'] = df['Q90'].map(lambda x: x>=9)
    print(df.groupby('beautiful').agg({'repo_ccp': 'mean', 'Q91': 'count'}))

    # quality_over_productivity
    df['quality_over_productivity'] = df['Q1'].map(lambda x: x<=2)
    print(df.groupby('quality_over_productivity').agg({'repo_ccp': 'mean', 'Q91': 'count'}))

    motivation = []

    for type in MOTIVATION_TYPE.keys():

        cur_df = df.copy()
        cur_df = cur_df[~cur_df[type].isna()]

        if type == PAY_QUESTION:
            cur_df[type] = cur_df[type].map(lambda x: 'Paid' if x == 1 else 'Not Paid' if x == 2 else None)
        else:
            cur_df[type] = cur_df[type].map(lambda x: 'High' if x > HIGH_THRESHOLD else 'Low' if x <= HIGH_THRESHOLD else None)

        g = cur_df.groupby(type
                       , as_index=False).agg({COUNT_COL: 'count'
                                              , PROJECT_MOTIVATION_QUESTION : 'mean'
                                              , PROJECT_SATISFACTION_QUESTION : 'mean'
                                              , PERSONAL_PRODUCTIVITY_QUESTION : 'mean'
                                              , TESTS_QUESTION : 'mean'
                                              , DETAILED_MESSAGES_QUESTION : 'mean'})
        g['Type'] = MOTIVATION_TYPE[type]
        g = g.rename(columns={type: 'Status'})
        motivation.append(g)
        #print(type)
        #print(g)

    motivation_df = pd.concat(motivation)
    motivation_df = motivation_df.rename(columns=METRIC_TYPE)

    df_to_latex_table(motivation_df[['Type', 'Status'] + list(METRIC_TYPE.values())]
                        , caption=' \label{tab:survey_answers} Developers Self Report'
                        , rounding_digits=1
                        , columns_to_name=None
                        , star_table=False
                        , columns_header='{ | p{16mm}| p{12mm}| p{12mm}| p{12mm}| p{12mm}| p{12mm}| p{12mm}| p{12mm}  |}')
if __name__ == '__main__':
    survey_by_motivation_type()