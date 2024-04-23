from os.path import join
import pandas as pd

from configuration import ENHANCED_CORRECTED_REPOS_FILE \
    ,  DATA_PATH, REPO_PROPERTIES
# survey entities
from configuration import COUNT_COL, DETAILED_MESSAGES_QUESTION, METRIC_TITLE, ONLINE_PORTFOLIO_QUESTION, PAY_QUESTION,\
    PROJECT_CORE_QUESTION, PROJECT_MOTIVATION_QUESTION, PERSONAL_PRODUCTIVITY_QUESTION, PROJECT_RECOGNITION_QUESTION,\
    PROJECT_SATISFACTION_QUESTION, SAMPLING_COL,  TESTS_QUESTION
from df_to_latex_table import df_to_latex_table

HIGH_THRESHOLD = 10

MOTIVATION_TYPE = {PAY_QUESTION : 'Payment'
                    , ONLINE_PORTFOLIO_QUESTION: 'Reputation'
                    , PROJECT_RECOGNITION_QUESTION: 'Recognition'
                    , PROJECT_CORE_QUESTION : 'Core'}

recognition_questions = {'Q96' : "I try to write high quality code because others will see it"
                   , 'Q95': "I contribute to open source in order to have an online portfolio"
                   , 'Q77': "I get recognition due to my contribution to the repository"
                   #, 'Q90.1' # Recognition you get for good work
                   , 'Q97.1': "In the past year, members of my GitHub community asked questions that show their understanding of my contributions."
                   , 'Q98.1': "In the past year, members of my GitHub community expressed interest in my contributions."
                       }
question_to_index_dict = {'Q96' : "2.14"
                   , 'Q95': "2.13"
                   , 'Q77': "3.15"
                   #, 'Q90.1' # Recognition you get for good work
                   , 'Q97.1': "3.24"
                   , 'Q98.1': "3.25"
                       }

MISSING_VAL = -1

popularity_thresholds = {1 : {'quantile': 0.25, 'name' : 'Low'}
                         , 2 : {'quantile': 0.75, 'name' : 'Medium'}
                         , 3 : {'quantile': 0.95, 'name' : 'High'}
                         , 4 : {'quantile': 1.0, 'name' : 'Extraordinary'}
                        }

def populate_popularity_thresholds(df
                                   , star_column='stargazers_count'):

    for i in popularity_thresholds.keys():
        popularity_thresholds[i]['val'] = df[star_column].quantile(popularity_thresholds[i]['quantile'])

    print(popularity_thresholds)

def find_popularity_group(stars):

    for i in sorted(popularity_thresholds.keys()):
        if stars <= popularity_thresholds[i]['val']:
            return i

    return MISSING_VAL

def survey_by_motivation_type():

    repo_df = pd.read_csv(join(DATA_PATH
                               , REPO_PROPERTIES))

    populate_popularity_thresholds(repo_df)
    #stars95 = repo_df.stargazers_count.quantile(0.95)
    #print("stars threhold", stars95)

    #df = pd.read_csv(ENHANCED_CORRECTED_REPOS_FILE)
    df = pd.read_csv('C:/src/motivation/data/anon_survey_results.csv')

    df['Popularity'] = df['repo_stargazers_count'].map(lambda x: find_popularity_group(x))
    df = df[df.Popularity!= MISSING_VAL]

    #df = df[df[SAMPLING_COL] == 'random_approach'] # TODO - check if populations behave differently

    # Adding survey specific questions
    METRIC_TITLE[ONLINE_PORTFOLIO_QUESTION] = 'Online Portfolio'

    stats = {}
    stats[COUNT_COL] = 'count'
    stats.update({k: 'mean' for k in recognition_questions.keys()})


    titles = {}
    titles[COUNT_COL] = 'Developers'
    titles.update({k: question_to_index_dict[k] for k in recognition_questions.keys()})

    motivation = []

    for type in ['Popularity']:


        g = df.groupby(type
                       , as_index=False).agg(stats)
        #g['Type'] = type
        #g = g.rename(columns={type: 'Status'})
        motivation.append(g)
        #print(type)
        #print(g)

    motivation_df = pd.concat(motivation)
    motivation_df = motivation_df.rename(columns=titles)
    motivation_df['Popularity'] = motivation_df['Popularity'].map(lambda x: popularity_thresholds[x]['name'])

    popularity_questions = {'2.14' : 'I try to write high quality code because others will see it'
        , '2.13': 'I contribute to open source in order to have an online portfolio'
        , '3.15' : 'I get recognition due to my contribution to the repository'
        , '3.24': "In the past year, members of my GitHub community asked questions that show their understanding of my contributions."
        , '3.25': "In the past year, members of my GitHub community expressed interest in my contributions."
        }
    columns_to_names = {k: k + ' ' + popularity_questions.get(k,k) for k in popularity_questions.keys()}
    df_to_latex_table(motivation_df[[ 'Popularity'] + list(titles.values())]
                        , caption=' \label{tab:survey_popularity} Developers Self Report by Project ' + type
                        , rounding_digits=1
                        , columns_to_name=columns_to_names
                        , star_table=False
                        , columns_header=
                      '{ | l | p{11mm}| p{11mm}| p{11mm}| p{11mm}| p{11mm}| p{11mm}| p{11mm}| p{11mm}| }')
if __name__ == '__main__':
    survey_by_motivation_type()