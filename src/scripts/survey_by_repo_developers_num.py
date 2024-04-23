from os.path import join
import pandas as pd

from configuration import ENHANCED_CORRECTED_REPOS_FILE, PAY_QUESTION, ONLINE_PORTFOLIO_QUESTION, PROJECT_CORE_QUESTION\
    , PROJECT_RECOGNITION_QUESTION, PROJECT_MOTIVATION_QUESTION, PERSONAL_PRODUCTIVITY_QUESTION, TESTS_QUESTION\
    , DETAILED_MESSAGES_QUESTION, PROJECT_SATISFACTION_QUESTION, DATA_PATH, REPO_PROPERTIES, MOTIVATION_QUESTIONS_TAB\
    , COUNT_COL, MOTIVATION_QUESTION_STATS, IDEOLOGY_QUESTION, COUNT_COL
from configuration import PROJECT_COMMUNITY_QUESTION, PROJECT_CORE_QUESTION, PERFOSANL_INFLUENCE_QUESTION, \
    PROJECT_RECOGNITION_QUESTION, PERFOSANL_RESPOSIBILITY_QUESTION
from df_to_latex_table import df_to_latex_table
from performance_by_repo_developers_num import developer_group

HIGH_THRESHOLD = 10

community_questions = {'Q76' : "The community is very professional."
                , 'Q83.1' :"The repository’s community of developers is more motivated than that of other repositories."
                , 'Q75' : "Belonging to the  community is motivating my work on the repository."
                , 'Q97.1' : "In the past year, members of my GitHub community asked questions that show their understanding of my contributions."
                , 'Q98.1' : "In the past year, members of my GitHub community expressed interest in my contributions."
                #, 'Q89.1' # Your colleagues and fellow workers
                       }

ownership_questions =  {'Q34' : "I have complete autonomy in contributing to the repository"
                , 'Q102': "I have significant influence on the repository"
                , 'Q101': "I feel responsible to the repository success"
                , 'Q78': "I am a core member of the repository"
                #, 'Q93.1' # Amount of responsibility you are given

                        }

ideology_questions = {IDEOLOGY_QUESTION: "I contribute to open source due to ideology"}


recognition_questions = {'Q96' : "I try to write high quality code because others will see it"
                   , 'Q95': "I contribute to open source in order to have an online portfolio"
                   , 'Q77': "I get recognition due to my contribution to the repository"
                   #, 'Q90.1' # Recognition you get for good work
                   , 'Q97.1': "In the past year, members of my GitHub community asked questions that show their understanding of my contributions."
                   , 'Q98.1': "In the past year, members of my GitHub community expressed interest in my contributions."
                       }

question_to_index_dict ={ 'Q1' : '2.1'
, 'Q83' : '2.2'
, 'Q84' : '2.3'
, 'Q85' : '2.4'
, 'Q87' : '2.5'
, 'Q88' : '2.6'
, 'Q89' : '2.7'
, 'Q90' : '2.8'
, 'Q91' : '2.9'
, 'Q92' : '2.10'
, 'Q93' : '2.11'
, 'Q94' : '2.12'
, 'Q95' : '2.13'
, 'Q96' : '2.14'
, 'Q97' : '2.15'
, 'Q98' : '2.16'
, 'Q99' : '2.17'
, 'Q71' : '2.18'
, 'Q29' : '3.a'
, 'Q30' : '3.b'
, 'Q31' : '3.c'
, 'Is_Paid' : '3.c'
, 'Q86' : '3.1'
, 'Q34' : '3.2'
, 'Q102' : '3.3'
, 'Q101' : '3.4'
, 'Q67' : '3.5'
, 'Q68' : '3.6'
, 'Q69' : '3.7'
, 'Q70' : '3.8'
, 'Q71.1' : '3.9'
, 'Q72' : '3.10'
, 'Q73' : '3.11'
, 'Q74' : '3.12'
, 'Q75' : '3.13'
, 'Q76' : '3.14'
, 'Q77' : '3.15'
, 'Q78' : '3.16'
, 'Q79' : '3.17'
, 'Q81' : '3.18'
, 'Q82' : '3.19'
, 'Q83.1' : '3.20'
, 'Q84.1' : '3.21'
, 'Q95.1' : '3.22'
, 'Q96.1' : '3.23'
, 'Q97.1' : '3.24'
, 'Q98.1' : '3.25'
, 'Q72.1' : '4.1'
, 'Q86.1' : '4.2'
, 'Q87.1' : '4.3'
, 'Q88.1' : '4.4'
, 'Q89.1' : '4.5'
, 'Q90.1' : '4.6'
, 'Q91.1' : '4.7'
, 'Q92.1' : '4.8'
, 'Q93.1' : '4.9'
, 'Q94.1' : '4.10'
, 'Q60' : '5.1'
, 'Q61_1' : '5.2'
, 'Q62' : '5.3'
, 'Q63' : '5.4'
, 'Q64' : '5.5'
, 'Q65_1' : '5.6'
, 'Q66' : '5.7'
, 'Q68.1' : '5.8'
, 'Q71.2' : '6.1'
, 'Q68.2' : '6.2'
}

def survey_by_motivation_type():


    print("Community")
    developer_group_by_type_questions(questions=community_questions
                                      , caption=' \label{tab:devgroup_survey_community} Community Self Report by Developers '
                                      , columns_header='{ | p{15mm}| p{15mm}| p{12mm}| p{12mm}| p{12mm}| p{12mm}| p{12mm}|}'
                                      , questions_text_dict=community_questions
                                      )
    print("")
    print_questions(community_questions
                    , question_to_index_dict)

    print("Ownership")
    developer_group_by_type_questions(questions=ownership_questions
                                      , caption=' \label{tab:devgroup_survey_ownership} Ownership Self Report by Developers '
                                      , columns_header='{ | p{15mm}| p{15mm}| p{12mm}| p{12mm}| p{12mm}| p{12mm}|}'
                                      , questions_text_dict=ownership_questions)
    print("")
    print_questions(ownership_questions
                    , question_to_index_dict)

    print("Ideology")
    repo_license_by_type_questions(questions=ideology_questions
                                   , caption=' \label{tab:license_survey_ideology} Ideology Self Report by License '
                                   , columns_header='{ | p{15mm}| p{15mm}| p{12mm}|}'
                                   , questions_text_dict=ideology_questions)

    print_questions(ideology_questions
                    , question_to_index_dict)


    print_questions(recognition_questions
                    , question_to_index_dict)

def developer_group_by_type_questions(questions
                                      , caption
                                      , columns_header
                                      , questions_text_dict):

    REPO_DEV_COL = 'repo_authors'
    AGG_COLUMN = 'Developers'

    df = pd.read_csv('C:/src/motivation/data/anon_survey_results.csv')

    df = df[~df[REPO_DEV_COL].isna()]
    df[AGG_COLUMN] = df[REPO_DEV_COL].map(developer_group)

    stats = {}
    stats[COUNT_COL] = 'count'
    stats.update({k: 'mean' for k in questions.keys()})


    titles = {}
    titles[COUNT_COL] = 'Answers'
    titles.update({k: question_to_index_dict[k] + ' ' + questions_text_dict.get(k, k) for k in questions.keys()})

    validate_by_survey_questions(AGG_COLUMN
                                 , df
                                 , stats
                                 , titles
                                 , caption=caption
                                 , columns_header=columns_header
                                 , order_dict={'Single': 1
                                               , 'Small': 2
                                               , 'Medium': 3
                                               , 'Large': 4})



def repo_license_by_type_questions(questions
                                      , caption
                                      , columns_header
                                      , questions_text_dict):
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
        'Closed': 1
        , 'Other': 2
        , 'Open': 3
        , 'Highly Open': 4}

    REPO_DEV_COL = 'repo_authors'

    df = pd.read_csv('C:/src/motivation/data/anon_survey_results.csv')

    df = df[~df[BASE_COL].isna()]
    df[AGG_COLUMN] = df[BASE_COL].map(lambda x: LICENSE_GROUP[x])


    stats = {}
    stats[COUNT_COL] = 'count'
    stats.update({k: 'mean' for k in questions.keys()})


    titles = {}
    titles[COUNT_COL] = 'Answers'
    titles.update({k: question_to_index_dict[k] + ' ' + questions_text_dict.get(k, k) for k in questions.keys()})

    validate_by_survey_questions(AGG_COLUMN
                                 , df
                                 , stats
                                 , titles
                                 , caption=caption
                                 , columns_header=columns_header
                                 , order_dict=LICENSE_ORDER)





def validate_by_survey_questions(AGG_COLUMN
                                 , df
                                 , stats
                                 , titles
                                 , caption
                                 , columns_header
                                 , order_dict):
    motivation_df = df.groupby(AGG_COLUMN
                               , as_index=False).agg(stats)
    motivation_df['ORDER'] = motivation_df[AGG_COLUMN].map(lambda x: order_dict.get(x, 0))
    motivation_df = motivation_df.sort_values('ORDER')
    motivation_df = motivation_df.rename(columns=titles)

    df_to_latex_table(motivation_df[[AGG_COLUMN] + list(titles.values())]
                      , caption=caption
                      , rounding_digits=1
                      , columns_to_name=None
                      , star_table=False
                      , columns_header=columns_header)


def print_questions(questions_text
                    , questions_index):

    print(r"\begin{itemize}")
    for i in sorted(questions_text.keys(), key=lambda x: questions_index[x]):
        print('\item ', questions_index[i], questions_text[i])

    print('\end{itemize}')

if __name__ == '__main__':
    survey_by_motivation_type()