from os.path import join
import pandas as pd

from configuration import DATA_PATH, REPO_CORRELATION_STATS_TEMPLATE, CONCEPTS_DICT, FEATURES_NAMES\
    , DEVELOPER_CORRELATION_STATS_TEMPLATE, MINIMAL_PRS_PER_REPO_THRESHOLD, MINIMAL_COMMIT_PER_REPO\
    , REPO_FEATURES_NAMES
from decorate_features import display_name
from correlation_analysis import analyze_correlation
from data_utils import get_repo_ds, get_developer_motivation_per_year_ds
from df_to_latex_table import df_to_latex_table


CORRELATION_PREFIX = "Pearson_with_"


def analayze_repo_correlation(concept
                            , metrics
                            , correlation_stats_file: str):

    keys = ['repo_name']


    metric_per_year_df = get_repo_ds()

    return analyze_correlation(metric_per_year_df
                                    , concept
                                    , metrics
                                    , correlation_stats_file
                                    , concept_display=CORRELATION_PREFIX + concept
                                    , min_cnt_column='commits'
                                    , min_cnt_threshold=MINIMAL_COMMIT_PER_REPO
                                    #, min_cnt_column='merged_prs'
                                    #, min_cnt_threshold=MINIMAL_PRS_PER_REPO_THRESHOLD
                               )


def analayze_developer_correlation(concept
                            , metrics
                            , correlation_stats_file: str):

    keys = ['repo_name', 'author_email']


    metric_per_year_df = get_developer_motivation_per_year_ds() # Note uses each year seperately
                                                                # in order to have motivation status

    return analyze_correlation(metric_per_year_df
                             , concept
                            , metrics
                            , correlation_stats_file)

def print_correlation_table(stats_df
                         , title
                         , correlation):

    stats_df['Display Name'] = stats_df.metric.map(display_name)

    stats_df = stats_df.sort_values([correlation
                                     , 'Display Name']
                                    , ascending=[False, True])
    print()
    df_to_latex_table(
        stats_df[['Display Name', correlation]]
        , title)
    print()



def analayze_correlations(STATS_FILE_TEMPLE : str
                          , correlation_function
                          , title_prefix
                          , title_suffix
                          , metrics
                          , concepts):

    for i in concepts.keys():
        stats_file = join(DATA_PATH
                            , STATS_FILE_TEMPLE.format(metric=i))
        stats_df = correlation_function(concept=i
                                  , metrics=metrics
                                  , correlation_stats_file=stats_file)
        title = title_prefix + i + '} ' + i + title_suffix
        print_correlation_table(stats_df
                                , title=title
                                , correlation=CORRELATION_PREFIX + i)



def run_analayze_repo_correlation():

    analayze_correlations(STATS_FILE_TEMPLE=REPO_CORRELATION_STATS_TEMPLATE
                            , correlation_function=analayze_repo_correlation
                            , title_prefix='\label{tab:pearson-correlation-'
                            , title_suffix=' Pearson Correlation'
                            , metrics=REPO_FEATURES_NAMES
                            , concepts=CONCEPTS_DICT)


def run_analayze_developer_correlation():

    DEVELOPER_CONCEPTS = CONCEPTS_DICT.copy()
    DEVELOPER_CONCEPTS.pop('retention_prob', None)

    analayze_correlations(STATS_FILE_TEMPLE=DEVELOPER_CORRELATION_STATS_TEMPLATE
                            , correlation_function=analayze_developer_correlation
                            , title_prefix='\label{tab:dev-pearson-correlation-'
                            , title_suffix=' Pearson Correlation'
                            , metrics=FEATURES_NAMES
                            , concepts=DEVELOPER_CONCEPTS
                          )




if __name__ == '__main__':
    run_analayze_repo_correlation()
    run_analayze_developer_correlation()

