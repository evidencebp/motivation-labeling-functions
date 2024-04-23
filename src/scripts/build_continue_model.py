from functools import *
import os
import pandas as pd
from sklearn.tree import DecisionTreeClassifier
import time

from configuration import DATA_PATH, NUMERIC_NULL, \
    TEST_SIZE, RANDOM_STATE, FIGURES_PATH, PERFORMANCE_PATH, MODELS_PATH, NON_PREDICTIVE_FEATURES
from data_utils import get_developer_motivation_per_year_ds
from ml_utils import get_predictive_columns, build_and_eval_model, save_model, plot_tree, same_set_build_and_eval_model
from transform_tree import tree_to_sql, random_forest_to_sql

CONCEPT = 'will_continue'

project_predictive_columns = partial(get_predictive_columns
                                        , excluded_features=set(list(NON_PREDICTIVE_FEATURES) + [CONCEPT]))

project_build_and_eval_model = partial(build_and_eval_model
                                          , concept=CONCEPT
                                          , test_size=TEST_SIZE
                                          , random_state=RANDOM_STATE
                                          , get_predictive_columns_func=project_predictive_columns
                                          )

project_save_model = partial(save_model
                                  , directory=MODELS_PATH)

def build_basic_model(df
                      , classifier
                      , concept
                      , model_file_name=None
                      , performance_file=None
                      , ablation_columns=[]
                      , random_state=RANDOM_STATE):


    local_project_predictive_columns = partial(get_predictive_columns
                                          , excluded_features=set(list(NON_PREDICTIVE_FEATURES)
                                                                  + ablation_columns
                                                                  + [concept])
                                               )


    local_project_build_and_eval_model = partial(build_and_eval_model
                                            , concept=concept
                                            , test_size=TEST_SIZE
                                            , random_state=RANDOM_STATE
                                            , get_predictive_columns_func=local_project_predictive_columns
                                            )

    classifier, performance = local_project_build_and_eval_model(df
                                                                  , classifier=classifier
                                                                  , performance_file=performance_file
                                                                  )

    """
    classifier, performance = same_set_build_and_eval_model(df
                         , classifier
                         , concept=concept
                        , random_state=RANDOM_STATE
                        , get_predictive_columns_func=local_project_predictive_columns
                        , performance_file=None
                        )
    print("performance on full train")
    print(performance)
    """
    classifier, performance = build_and_eval_model(df
                         , classifier
                         , concept=concept
                         , test_size=TEST_SIZE
                         , random_state=RANDOM_STATE
                         , get_predictive_columns_func=local_project_predictive_columns
                         , performance_file=performance_file
                         )
    print("performance on  test")
    print(performance)
    
    if model_file_name:
        project_save_model(model=classifier
               , output_file_name=model_file_name)

    return classifier , performance


def run_basic_models(concept):
    start = time.time()
    
    df = get_developer_motivation_per_year_ds()
    df = df[df.project_continued]
    df = df.fillna(NUMERIC_NULL)
    df[CONCEPT] = df.apply(lambda x: (x.status == 'Continue')
                                , axis=1)


    print(project_predictive_columns(df))

    for i in project_predictive_columns(df):
        if df.dtypes[i] != 'float64':
            print(i)

    end = time.time()
    print("Load data time", end - start)

    class_weight = {1: 2 , 0: 1}
    classifiers = {'Tree_ms50_md3' : DecisionTreeClassifier(min_samples_leaf=200, max_depth=3, class_weight=class_weight)
                    #, 'Tree_default' : DecisionTreeClassifier( class_weight=class_weight)
                    #, 'Tree_ms50' : DecisionTreeClassifier(min_samples_leaf=200, class_weight=class_weight)
                    #, 'Tree_md3' : DecisionTreeClassifier(max_depth=3, class_weight=class_weight)
                   #, 'RandomForest' : RandomForestClassifier(criterion="mse",  min_samples_leaf=50 )
                  }

    for model_name in classifiers.keys():
        print(model_name)
        start = time.time()
        regressor = classifiers[model_name]
        regressor, performance = build_basic_model(df
                                                   , concept=concept
                                                   , classifier=regressor
                                                   , model_file_name='{}.pkl'.format(model_name)
                                                   , performance_file=os.path.join(PERFORMANCE_PATH
                                                                                    , '{}.json'.format(model_name))
                                                   )
        plot_tree(regressor
                  , dot_file_path=os.path.join(FIGURES_PATH, '{}.dot'.format(model_name))
                  , png_file_path=os.path.join(FIGURES_PATH, '{}.png'.format(model_name))
                  , feature_names=project_predictive_columns(df)
                  )

        tree_to_sql(tree=regressor
                    , feature_names=project_predictive_columns(df)
                    , function_name="continue.tree"
                    , output_file=os.path.join(MODELS_PATH, '{}.sql'.format(model_name)))

        end = time.time()
        print("Model running time", end - start)


    return regressor, df


def run_build_models():
    clf, df = run_basic_models(concept=CONCEPT)

if __name__ == '__main__':
    run_build_models()