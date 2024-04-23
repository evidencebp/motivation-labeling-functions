from datetime import datetime
from os.path import join
import pandas as pd

from configuration import ENHANCED_CORRECTED_REPOS_FILE, PAY_QUESTION, ONLINE_PORTFOLIO_QUESTION, PROJECT_CORE_QUESTION\
    , PROJECT_RECOGNITION_QUESTION, PROJECT_MOTIVATION_QUESTION, PERSONAL_PRODUCTIVITY_QUESTION, TESTS_QUESTION\
    , DETAILED_MESSAGES_QUESTION, PROJECT_SATISFACTION_QUESTION, DATA_PATH, REPO_PROPERTIES
from df_to_latex_table import df_to_latex_table

HIGH_THRESHOLD = 10

COUNT_COL = 'Q1'

MOTIVATION_TYPE = {PAY_QUESTION : 'Payment'
                    , ONLINE_PORTFOLIO_QUESTION: 'Reputation'
                    , PROJECT_RECOGNITION_QUESTION: 'Recognition'
                    , PROJECT_CORE_QUESTION : 'Core'}

METRIC_TYPE = { COUNT_COL: 'Developers'
                    , PROJECT_MOTIVATION_QUESTION: 'Motiva\-tion in Project'
                    , PROJECT_SATISFACTION_QUESTION: 'Satis\-faction in Project'
                    , PERSONAL_PRODUCTIVITY_QUESTION: 'Personal Productivity'
                    , TESTS_QUESTION : 'Test Writing'
                    , DETAILED_MESSAGES_QUESTION: 'Detailed Commit Messages'}
PROJECT_MOTIVATION_QUESTION = 'Q86'
PERSONAL_PRODUCTIVITY_QUESTION = 'Q84'
TESTS_QUESTION = 'Q93'
DETAILED_MESSAGES_QUESTION = 'Q94'
PROJECT_SATISFACTION_QUESTION = 'Q72'

SAMPLING_COL = 'sampling_method'

MAXIMAL_ANSWER_TIME = datetime(year=2021
                               , month=1
                               , day=1)
MINMIAL_ACTIVITY_DAYS = 3*30

def survey_by_motivation_type():

    survey_df = pd.read_csv(ENHANCED_CORRECTED_REPOS_FILE)

    behaviour_df = pd.read_csv(join(DATA_PATH
                               , 'survey_matching_developer_per_repo_profile.csv'))
    df = pd.merge(survey_df
                  , behaviour_df
                  , left_on=['correct_repo_name', 'corrected_profile']
                  , right_on=['repo_name', 'author_name'])

    df['old_enough'] = df.answer_day.map(lambda x: datetime.strptime(str(x), '%Y-%M-%d') < MAXIMAL_ANSWER_TIME )
    df = df[df['old_enough'] == True]
    df['Churn'] = df.apply(lambda x: 'Not Active' if (datetime.strptime(str(x.max_commit_timestamp)[:10], '%Y-%M-%d')
                                         - datetime.strptime(str(x.answer_day), '%Y-%M-%d')).days < MINMIAL_ACTIVITY_DAYS else 'Active'
                           , axis=1)

    # , 'answer_day', max_commit_timestamp

    #df = df[df[SAMPLING_COL] == 'random_approach'] # TODO - check if populations behave differently


    motivation = []

    for type in ['Churn']:


        g = df.groupby(type
                       , as_index=False).agg({COUNT_COL: 'count'
                                              , PROJECT_MOTIVATION_QUESTION : 'mean'
                                              , PROJECT_SATISFACTION_QUESTION : 'mean'
                                              , PERSONAL_PRODUCTIVITY_QUESTION : 'mean'
                                              , TESTS_QUESTION : 'mean'
                                              , DETAILED_MESSAGES_QUESTION : 'mean'})
        #g['Type'] = type
        g = g.rename(columns={type: 'Status'})
        motivation.append(g)
        #print(type)
        #print(g)

    motivation_df = pd.concat(motivation)
    motivation_df = motivation_df.rename(columns=METRIC_TYPE)

    df_to_latex_table(motivation_df[[ 'Status'] + list(METRIC_TYPE.values())]
                        , caption=' \label{tab:survey_by_retention} Developers Self Report by Retention ' + type
                        , rounding_digits=1
                        , columns_to_name=None
                        , star_table=False
                        , columns_header='{ | p{15mm}| p{15mm}| p{12mm}| p{12mm}| p{12mm}| p{12mm}| p{12mm}| p{12mm}  | }')
if __name__ == '__main__':
    survey_by_motivation_type()