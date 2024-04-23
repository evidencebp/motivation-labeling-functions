from os.path import join

import pandas as pd
import time

from configuration import DATA_PATH, NUMERIC_NULL, \
    TEST_SIZE, RANDOM_STATE, FIGURES_PATH, PERFORMANCE_PATH, MODELS_PATH, NON_PREDICTIVE_FEATURES
from data_utils import get_developer_motivation_per_year_ds
from ml_utils import build_models, save_performance, extract_relevent_features

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

class_weight = {1: 1, 0: 3}

# play to get better accuracy
MIN_SAMPLES = 500
MAX_DEPTH = 3

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
    , 'RandomForest': RandomForestClassifier(n_estimators=10
                                             , min_samples_leaf=MIN_SAMPLES)
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
raw_lb =['message_length_avg', 'refactor_mle', 'commit_hours']
labeling_functions = ['high_message_length', 'high_refactor', 'high_hours']

settings = {
    'balanced_lfc': {'weights': {1: 1, 0: 1}
        , 'features': labeling_functions + controls}
    , '3_1_lfc': {'weights': {1: 3, 0: 1}
        , 'features': labeling_functions + controls}
    , '1_3_lfc': {'weights': {1: 1, 0: 3}
        , 'features': labeling_functions + controls}

    , 'balanced_rc': {'weights': {1: 1, 0: 1}
        , 'features': raw_lb + controls}
    , '3_1_rc': {'weights': {1: 3, 0: 1}
        , 'features': raw_lb + controls}
    , '1_3_rc': {'weights': {1: 1, 0: 3}
        , 'features': raw_lb + controls}

    , 'balanced_c': {'weights': {1: 1, 0: 1}
        , 'features': controls}
    , '3_1_c': {'weights': {1: 3, 0: 1}
        , 'features': controls}
    , '1_3_c': {'weights': {1: 1, 0: 3}
        , 'features': controls}

    , 'balanced_l': {'weights': {1: 1, 0: 1}
        , 'features': labeling_functions}
    , '3_1_l': {'weights': {1: 3, 0: 1}
        , 'features': labeling_functions}
    , '1_3_l': {'weights': {1: 1, 0: 3}
        , 'features': labeling_functions}

    , 'balanced_r': {'weights': {1: 1, 0: 1}
        , 'features': raw_lb}
    , '3_1_r': {'weights': {1: 3, 0: 1}
        , 'features': raw_lb}
    , '1_3_r': {'weights': {1: 1, 0: 3}
        , 'features': raw_lb}

}


def run_build_retention_model():
    start = time.time()


    df = get_developer_motivation_per_year_ds()
    df = df[df.project_continued]
    df = df.fillna(NUMERIC_NULL)
    df[CONCEPT] = df.apply(lambda x: (x.status == 'Continue')
                           , axis=1)

    build_models_by_setting(df
                            , settings
                            , concept=CONCEPT
                            , performance_path=join(PERFORMANCE_PATH
                               , "retention_by_lb.csv"))
    end = time.time()
    print("Model running time", end - start)


def run_build_adjacent_years_retention_model():
    start = time.time()


    df = get_developer_motivation_per_year_ds()
    df = df[df.project_continued]
    df = df.fillna(NUMERIC_NULL)
    df['next_year'] = df['year'] + 1

    adj = pd.merge(df
             , df
             , left_on=['author_email', 'repo_name', 'next_year']
             , right_on=['author_email', 'repo_name', 'year']
             , suffixes=('_cur', '_next'))
    adj[CONCEPT] = adj.apply(lambda x: 1 if (x.status_next == 'Continue') else 0
                           , axis='columns')
    # TODO add controls
    for i in raw_lb:
        adj[i +'_diff'] = adj[i +'_next'] - adj[i +'_cur']

    state_features = [i + '_cur' for i in labeling_functions] + [i + '_next' for i in labeling_functions]
    diff_features = [i + '_diff' for i in raw_lb]
    control_features = [i + '_cur' for i in controls] + [i + '_next' for i in controls]

    pair = adj[state_features
        + diff_features
        + control_features
        + [CONCEPT]
    ]

    #adj = adj[extract_relevent_features(adj)]
    build_models(df=pair
                    , classifiers=large_classifiers
                    , concept=CONCEPT
                    , test_size=TEST_SIZE
                    , random_state=RANDOM_STATE
                    , verbose=True
                    , performance_path=join(PERFORMANCE_PATH
                               , "adjacent_years_retention.csv")
                    , models_path=MODELS_PATH
                    , models_text_format=None #"adjacent_years_retention_{model_name}.sql"
                    )

    build_models_by_setting(pair
                            , settings= {
    'sd_balanced': {'weights': {1: 1, 0: 1}
        , 'features': state_features + diff_features}
    , 'sd_3_1': {'weights': {1: 3, 0: 1}
        , 'features': state_features + diff_features}
    , 'sd_1_3': {'weights': {1: 1, 0: 3}
        , 'features': state_features + diff_features}
    , 'd_balanced': {'weights': {1: 1, 0: 1}
        , 'features': diff_features}
    , 'd_3_1': {'weights': {1: 3, 0: 1}
        , 'features': diff_features}
    , 'd_1_3': {'weights': {1: 1, 0: 3}
        , 'features': diff_features}
    , 'sdc_balanced': {'weights': {1: 1, 0: 1}
        , 'features': state_features + diff_features + control_features}
    , 'sdc_3_1': {'weights': {1: 3, 0: 1}
        , 'features': state_features + diff_features + control_features}
    , 'sdc_1_3': {'weights': {1: 1, 0: 3}
        , 'features': state_features + diff_features + control_features}

        }
                            , concept=CONCEPT
                            , performance_path=join(PERFORMANCE_PATH
                               , "adjacent_years_retention_settings.csv"))

    diff = adj[[i + '_diff' for i in raw_lb]
        + [CONCEPT]
    ]

    #adj = adj[extract_relevent_features(adj)]
    build_models(df=diff
                    , classifiers=large_classifiers
                    , concept=CONCEPT
                    , test_size=TEST_SIZE
                    , random_state=RANDOM_STATE
                    , verbose=True
                    , performance_path=join(PERFORMANCE_PATH
                               , "adjacent_years_retention_diff.csv")
                    , models_path=MODELS_PATH
                    , models_text_format=None #"adjacent_years_retention_diff_{model_name}.sql"
                    )

    end = time.time()
    print("Model running time", end - start)


def build_models_by_setting(df
                            , settings
                            , concept
                            , performance_path: str = None):
    performance = []
    for i in settings.keys():

        print("computing setting", i)

        setting_classifiers = {'Tree_ms_md': DecisionTreeClassifier(min_samples_leaf=MIN_SAMPLES
                                                                    , max_depth=MAX_DEPTH
                                                                    , class_weight=settings[i]['weights'])
            , 'Tree_default': DecisionTreeClassifier(class_weight=settings[i]['weights'])
            , 'Tree_ms': DecisionTreeClassifier(min_samples_leaf=MIN_SAMPLES
                                                , class_weight=settings[i]['weights'])
            , 'Tree_md': DecisionTreeClassifier(max_depth=MAX_DEPTH
                                                , class_weight=settings[i]['weights'])
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
                               , 'KNeighborsClassifier': KNeighborsClassifier()
                               # , 'MultinomialNB': MultinomialNB()
                               , 'MLPClassifier': MLPClassifier(solver='lbfgs', alpha=1e-5,
                                                                 hidden_layer_sizes=(5, 2), random_state=1, max_iter=20000)

                               }

        results = build_models(df[settings[i]['features'] + [concept]]
                               , classifiers=setting_classifiers
                               , concept=concept
                               , test_size=TEST_SIZE
                               , random_state=RANDOM_STATE
                               , verbose=True
                               , performance_path=None
                               , models_path=MODELS_PATH
                               , models_format=None # "retention_by_lb_{model_name}.pkl"
                               , models_text_format=None  # "retention_by_lb_{model_name}.sql"
                               )
        results_df = save_performance(results)
        results_df['setting'] = i
        performance.append(results_df)
    performance_df = pd.concat(performance)
    if performance_path:
        performance_df.to_csv(performance_path
                          , index=False)

    return performance_df


if __name__ == "__main__":
    run_build_retention_model()
    run_build_adjacent_years_retention_model()
