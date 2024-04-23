from os.path import join
import pandas as pd

from configuration import ENHANCED_CORRECTED_REPOS_FILE, PAY_QUESTION, ONLINE_PORTFOLIO_QUESTION, PROJECT_CORE_QUESTION\
    , PROJECT_RECOGNITION_QUESTION, PROJECT_MOTIVATION_QUESTION, PERSONAL_PRODUCTIVITY_QUESTION, TESTS_QUESTION\
    , DETAILED_MESSAGES_QUESTION, PROJECT_SATISFACTION_QUESTION, DATA_PATH, REPO_PROPERTIES, MOTIVATION_QUESTIONS_TAB\
    , COUNT_COL, MOTIVATION_QUESTION_STATS, IDEOLOGY_QUESTION
from df_to_latex_table import df_to_latex_table
from performance_by_repo_developers_num import developer_group

HIGH_THRESHOLD = 10

BASE_COL = 'repo_license'
AGG_COLUMN = 'License Type'

# According to "Motivation and Sorting in Open Source Software Innovation", page 13
# http://eprints.lse.ac.uk/51594/1/dp0893.pdf
LICENSE_GROUP = {
    'Apache License 2.0': 'Other'
    , 'Creative Commons Zero v1.0 Universal': 'Other'
    , 'GNU Affero General Public License v3.0': 'Highly Open'
    , 'GNU General Public License v2.0': 'Highly Open'
    , 'GNU General Public License v3.0': 'Highly Open'
    , 'GNU Lesser General Public License v2.1': 'Open'
    , 'GNU Lesser General Public License v3.0': 'Open'
    , 'ISC License': 'Other'
    , 'MIT License': 'Closed'
    , 'Mozilla Public License 2.0': 'Other'
    , 'Other': 'Other'
}

LICENSE_ORDER = {
         'Other' : 1
         , 'Closed' : 2
         , 'Open': 3
         , 'Highly Open': 4}

def survey_by_motivation_type():


    df = pd.read_csv(ENHANCED_CORRECTED_REPOS_FILE)

    df = df[~df[BASE_COL].isna()]
    df[AGG_COLUMN] = df[BASE_COL].map(lambda x: LICENSE_GROUP[x])

    stats = MOTIVATION_QUESTION_STATS.copy()
    stats[IDEOLOGY_QUESTION] = 'mean'

    motivation = []

    for type in [AGG_COLUMN]:


        g = df.groupby(type
                       , as_index=False).agg(stats)
        #g['Type'] = type
        #g = g.rename(columns={type: 'Status'})
        motivation.append(g)
        #print(type)
        #print(g)

    motivation_df = pd.concat(motivation)
    motivation_df = motivation_df.rename(columns=MOTIVATION_QUESTIONS_TAB)
    motivation_df['order'] = motivation_df[AGG_COLUMN].map(lambda x: LICENSE_ORDER.get(x))
    motivation_df = motivation_df.sort_values('order')

    df_to_latex_table(motivation_df[[ AGG_COLUMN] + list(MOTIVATION_QUESTIONS_TAB.values())]
                        , caption=' \label{tab:survey_by_license} Developers Self Report by Project ' + type
                        , rounding_digits=1
                        , columns_to_name=None
                        , star_table=False
                        , columns_header='{ | p{15mm}| p{15mm}| p{12mm}| p{12mm}| p{12mm}| p{12mm}| p{12mm}| p{15mm}  | }')
if __name__ == '__main__':
    survey_by_motivation_type()