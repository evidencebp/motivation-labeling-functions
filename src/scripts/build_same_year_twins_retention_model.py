
from os.path import join

import pandas as pd
import time

from configuration import DATA_PATH, NUMERIC_NULL, \
    TEST_SIZE, RANDOM_STATE, FIGURES_PATH, PERFORMANCE_PATH, MODELS_PATH, NON_PREDICTIVE_FEATURES
from build_retention_model import settings, build_models_by_setting, controls
from data_utils import get_developer_motivation_per_year_ds
from ml_utils import build_models, extract_relevent_features

CONCEPT = 'will_continue'


from sklearn.ensemble import AdaBoostClassifier
from sklearn.ensemble import GradientBoostingClassifier
from sklearn.tree import DecisionTreeClassifier, plot_tree
from sklearn.neighbors import KNeighborsClassifier
from sklearn.linear_model import LogisticRegression
from sklearn.naive_bayes import MultinomialNB
from sklearn.neural_network import MLPClassifier
from sklearn.ensemble import RandomForestClassifier
from sklearn.linear_model import SGDClassifier
from sklearn.svm import SVC

class_weight = {1: 1, 0: 1}

# play to get better accuracy
MIN_SAMPLES = 100
MAX_DEPTH = 5

controls = ['employee_code', 'dev_group_code', 'popularity_group_code', 'language_group', 'age_group_code'
    , 'License Type_code']
# missing {'dev_group_code', 'age_group_code', 'popularity_group_code'}
classifiers = {'Tree_ms_md': DecisionTreeClassifier(min_samples_leaf=MIN_SAMPLES
                                                       , max_depth=MAX_DEPTH
                                                       , class_weight=class_weight)
    , 'Tree_default': DecisionTreeClassifier(class_weight=class_weight)
    , 'Tree_ms': DecisionTreeClassifier(min_samples_leaf=MIN_SAMPLES
                                          , class_weight=class_weight)
    , 'Tree_md': DecisionTreeClassifier(max_depth=MAX_DEPTH
                                         , class_weight=class_weight)
    #, 'RandomForest': RandomForestClassifier(n_estimators=10
    #                                         , min_samples_leaf=MIN_SAMPLES)
               }

large_classifiers = {'Tree_ms50_md3': DecisionTreeClassifier(min_samples_leaf=MIN_SAMPLES
                                                             , max_depth=MAX_DEPTH
                                                             , class_weight=class_weight)
    , 'Tree_default': DecisionTreeClassifier(class_weight=class_weight)
    , 'Tree_ms50': DecisionTreeClassifier(min_samples_leaf=MIN_SAMPLES
                                          , class_weight=class_weight)
    , 'Tree_md3': DecisionTreeClassifier(max_depth=MAX_DEPTH
                                         , class_weight=class_weight)
    , 'RandomForest': RandomForestClassifier(n_estimators=10
                                             , min_samples_leaf=MIN_SAMPLES)
    , 'AdaBoost': AdaBoostClassifier(n_estimators=100, random_state=0, learning_rate=0.1)
    , 'AdaBoost_n_small': AdaBoostClassifier(n_estimators=30, random_state=0, learning_rate=0.1)
    # , 'AdaBoost_base_small': AdaBoostClassifier(base_estimator=base
    #                                             , n_estimators=50, random_state=0, learning_rate=0.1)
    # , 'AdaBoost_v1': AdaBoostClassifier(base_estimator=base
    #                                     , n_estimators=100, random_state=0, learning_rate=0.1)
    # , 'GradientBoostingClassifier': GradientBoostingClassifier(learning_rate=0.1
    #                                                            , min_samples_leaf=MIN_SAMPLES
    #                                                            , max_depth=MAX_DEPTH)
    , 'Stump': DecisionTreeClassifier(max_depth=1
                                      , class_weight=class_weight)
    , 'LogisticRegression': LogisticRegression(class_weight=class_weight, max_iter=1000)
    # , 'SVC': SVC()
    , 'SGDClassifier': SGDClassifier()
    # , 'KNeighborsClassifier': KNeighborsClassifier()
                     # , 'MultinomialNB': MultinomialNB()
    # , 'MLPClassifier': MLPClassifier(solver='lbfgs', alpha=1e-5,
    #                                  hidden_layer_sizes=(5, 2), random_state=1, max_iter=20000)

                     }

def model_twins_as_singles():
    """
    Regular twins experiment allow to factor out the person.
    Adding control variables enable to prevent the influence of a single one.
    Reducing to supervised learning, where we have both twins features can help to
    take care of all controls together.
    However, the model rules might not be in terms of a single twin but in both.
    In order to avoid that, we build a dataset of the twins but break the relation
    between them and add each twin as a row.
    A model that have accuracy above 50% necessrily differs between some twins.
    It also means that it differ in some of the pairs.
    """

    start = time.time()

    twins_df = pd.read_csv(join(DATA_PATH
                                , 'same_year_continue_twins_pairs.csv'))
    df = get_developer_motivation_per_year_ds()
    df = df[df.project_continued]
    df = df.fillna(NUMERIC_NULL)

    cont_twin = pd.merge(twins_df
                         , df
                         , left_on=['author_email', 'year', 'cont_repo']
                         , right_on=['author_email', 'year', 'repo_name'])
    no_cont_twin = pd.merge(twins_df
                         , df
                         , left_on=['author_email', 'year', 'no_cont_repo']
                         , right_on=['author_email', 'year', 'repo_name'])

    twins = pd.concat([cont_twin[list(df.columns)]
                      , no_cont_twin[list(df.columns)]])

    twins[CONCEPT] = twins.apply(lambda x: (x.status == 'Continue')
                           , axis='columns')

    features = ['high_message_length', 'high_refactor', 'high_hours']


    build_models_by_setting(twins
                            , settings
                            , concept=CONCEPT
                            , performance_path=join(PERFORMANCE_PATH
                               , "retention_by_lb_same_year_twins.csv"))


    end = time.time()
    print("Model running time", end - start)


def model_twins_as_pairs():

    start = time.time()
    keys = ['author_email', 'year']

    twins_df = pd.read_csv(join(DATA_PATH
                                , 'same_year_continue_twins_pairs.csv'))
    twins_df = twins_df.sample(n=50000) # to be fit memory limit

    df = get_developer_motivation_per_year_ds()
    df = df[df.project_continued]
    df = df.fillna(NUMERIC_NULL)

    cont_twin = pd.merge(twins_df
                         , df
                         , left_on=['author_email', 'year', 'cont_repo']
                         , right_on=['author_email', 'year', 'repo_name'])
    no_cont_twin = pd.merge(twins_df
                         , df
                         , left_on=['author_email', 'year', 'no_cont_repo']
                         , right_on=['author_email', 'year', 'repo_name'])

    CONCEPT = 'continuing_twin'
    features = ['high_message_length', 'high_refactor', 'high_hours']

    twins0 = pd.merge(cont_twin[keys + features + controls]
                      , no_cont_twin[keys + features + controls]
                      , on=keys + controls)

    twins0[CONCEPT] = 0
    twins1 = pd.merge(no_cont_twin[keys + features + controls]
                      , cont_twin[keys + features + controls]
                      , on=keys + controls)

    twins1[CONCEPT] = 1
    twins = pd.concat([twins0, twins1])

    twins = twins[extract_relevent_features(twins)]

    build_models(df=twins
                    , classifiers=classifiers
                    , concept=CONCEPT
                    , test_size=TEST_SIZE
                    , random_state=RANDOM_STATE
                    , verbose=True
                    , performance_path=join(PERFORMANCE_PATH
                               , "retention_by_lb_same_year_twins_pairs.csv")
                    , models_path=MODELS_PATH
                    , models_text_format="retention_by_lb_same_year_twins_pairs_{model_name}.sql"
                    )


    end = time.time()
    print("Model running time", end - start)

if __name__ == "__main__":
    #model_twins_as_singles()
    model_twins_as_pairs()
