import os
import pandas as pd

from configuration import DATA_PATH, REPO_COHANGE_STATS_TEMPLATE, CONCEPTS_DICT, METRICS_DICT, REPO_METRICS_DICT\
    , MINIMAL_PRS_PER_REPO_THRESHOLD, MINIMAL_COMMIT_PER_REPO
from data_utils import get_repo_per_year_ds
from df_to_latex_table import df_to_latex_table
from cochange_analysis import cochange_analysis



def analayze_repo_cochange(metric_per_year_df
                            , metrics_dict
                            , stability_stats_file: str):

    keys = ['repo_name']

    stats = cochange_analysis(metric_per_year_df
                                , metrics_dict
                                , keys
                                , control_variables=[]
                               , min_cnt_column='commits'
                               , min_cnt_threshold=MINIMAL_COMMIT_PER_REPO
                              #, min_cnt_column='merged_prs'
                              #, min_cnt_threshold=MINIMAL_PRS_PER_REPO_THRESHOLD
                              )

    stats_df = pd.DataFrame.from_dict(stats, orient='index')
    stats_df = (stats_df.reset_index()).rename(columns={'index': 'feature'})
    stats_df = stats_df.sort_values(['precision_lift','feature']
                                        , ascending=[False, True])
    stats_df.to_csv(stability_stats_file
                    , index=False)

    return stats_df

def print_cochange_table(stats_df
                         , title):

    columns_to_name = {'feature': 'Metric'
        , 'precision': 'Precision'
        , 'precision_lift': 'Precision Lift'
        , 'accuracy': 'Accuracy'
        }

    stats_df = stats_df.sort_values(['precision_lift', 'feature'], ascending=[False, True])
    print()
    df_to_latex_table(
        stats_df[columns_to_name.keys()]
        , title
        , columns_to_name=columns_to_name)
    print()


def analyze_cochnage_by_metric(metric_per_year_df
                              , concept_metric
                              , concept_name
                              , concept_improvement_function
                              , metrics_dict
                              ):
    concept_dict = {concept_metric : concept_improvement_function}
    features_dict = concept_dict.copy()
    features_dict.update(metrics_dict)

    stats_file = REPO_COHANGE_STATS_TEMPLATE.format(metric=concept_metric)
    stats_df = analayze_repo_cochange(metric_per_year_df=metric_per_year_df
                                        , metrics_dict=features_dict
                                        , stability_stats_file = os.path.join(DATA_PATH
                                                            , stats_file))


    stats_df = pd.read_csv(os.path.join(DATA_PATH
                                                            , stats_file))
    title = '\label{tab:co-change-precision-' + concept_name + '} ' + concept_name +' Co-Change Improvements Statistics'
    print_cochange_table(stats_df
                         , title=title)

def run_analayze_repo_cochange():

    concepts_to_name = {'ccp': 'CCP'
                        , 'same_date_duration_avg' : 'Commit Duration'
                        , 'commits' : 'Commits'
                        , 'commits_per_involved_developer' : 'Commits Per Involved Developer'
                        , 'avg_coupling_code_size_cut' : 'Coupling'
                        , 'retention_prob': 'Retention Probability'
                        , 'textual_abstraction_commits_rate': 'textual_abstraction_commits_rate'
                        , 'implementation_involved_rate': 'implementation_involved_rate'
                        #, 'typo_rate': 'Spelling Mistakes Rate'
}

    metric_per_year_df = get_repo_per_year_ds()

    for i in CONCEPTS_DICT.keys():
        concept = i
        features_dict = CONCEPTS_DICT.copy()
        features_dict.update(METRICS_DICT)
        features_dict.update(REPO_METRICS_DICT)

        features_dict.pop(i)

        analyze_cochnage_by_metric(metric_per_year_df=metric_per_year_df
                                   , concept_metric=concept
                                   , concept_name=concepts_to_name.get(concept, concept)
                                   , concept_improvement_function=CONCEPTS_DICT[concept]
                                   , metrics_dict=features_dict
                                   )

if __name__ == '__main__':
    run_analayze_repo_cochange()
