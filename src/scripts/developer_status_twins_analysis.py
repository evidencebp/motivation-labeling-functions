import numbers
import os
import pandas as pd

from configuration import DEV_CNT_ABND_TWINS_DATASET, DEV_CNT_ABND_TWINS_STATS, DEV_CNT_CNT_TWINS_DATASET\
    , DEV_CNT_CNT_TWINS_STATS, DEV_YEAR_CNT_ABND_TWINS_DATASET, DEV_YEAR_CNT_ABND_TWINS_STATS,DATA_PATH, FEATURES_NAMES
from compare_twin_behaviours import compare_twin_behaviours, compute_confusion_matrics, COMPARISON_SUFFIX
from data_utils import get_developer_motivation_per_year_ds



comparison_columns = FEATURES_NAMES

def relative_diff(first
                  , second):

    rc = None

    if isinstance(first, numbers.Number) and isinstance(second, numbers.Number):
        if first == 0.0:
            rc = None
        else:
            rc = second /first

    return rc

comparison_function= lambda first, second : second > first \
    if isinstance(first, numbers.Number) and isinstance(second, numbers.Number) \
    else None

comparison_function= lambda first, second : second - first \
    if isinstance(first, numbers.Number) and isinstance(second, numbers.Number) \
    else None

def  build_same_repo_cnt_abnd(df: pd.DataFrame
                                     , comparison_columns
                                     , comparison_function):
    """
        Compare the year a developer abandoned a project to the developer
        performance in the same project the year before, representing skill improvement and motivation decreasement

    :param df: Developer profile per repo per year
    :param comparison_columns: The fields to compare
    :param comparison_function: The comparison function (e.g., binary increase, relative diff)
    :return:
    """

    keys= ['repo_name', 'author_email'] # Consider comparing same repo, different years

    filtering_function = lambda x: x.year_x != x.year_y -1 # Might remove for more cases


    df = df[~df.year.isna()]
    comp_df = compare_twin_behaviours(first_behaviour=df[df.status == 'Continue']
                                        #, second_behaviour=df[df.status != 'Continue'] # Consider Abandoned
                                        , second_behaviour=df[df.status == 'Abandoned'] # Consider Abandoned
                                        #, second_behaviour=df[df.status == 'Continue'] # Consider Abandoned
                                        , keys=keys
                                        , comparison_columns=comparison_columns + ['year']
                                        , comparison_function=comparison_function
                                        , filtering_function=filtering_function)


    return comp_df

def  build_same_year_cnt_abnd(df: pd.DataFrame
                                     , comparison_columns
                                     , comparison_function):
    """
        Compare a developer in the same year, in continuted and abnadoned proeject.
        Measure motiveation yet repos are different

    :param df: Developer profile per repo per year
    :param comparison_columns: The fields to compare
    :param comparison_function: The comparison function (e.g., binary increase, relative diff)
    :return:
    """

    keys= ['year', 'author_email'] # Consider comparing different repos, same year and developer

    filtering_function = lambda x: x.repo_name_x == x.repo_name_y  # Might remove for more cases


    df = df[~df.year.isna()]
    comp_df = compare_twin_behaviours(first_behaviour=df[df.status == 'Continue']
                                        #, second_behaviour=df[df.status != 'Continue'] # Consider Abandoned
                                        , second_behaviour=df[df.status == 'Abandoned'] # Consider Abandoned
                                        #, second_behaviour=df[df.status == 'Continue'] # Consider Abandoned
                                        , keys=keys
                                        , comparison_columns=comparison_columns + ['repo_name']
                                        , comparison_function=comparison_function
                                        , filtering_function=filtering_function)


    return comp_df


def  build_same_repo_cnt_cnt(df: pd.DataFrame
                                     , comparison_columns
                                     , comparison_function):

    """
        Compare the year a developer continued a project to the developer
        performance in the same project the year before, representing skill improvement

    :param df: Developer profile per repo per year
    :param comparison_columns: The fields to compare
    :param comparison_function: The comparison function (e.g., binary increase, relative diff)
    :return:
    """

    keys= ['repo_name', 'author_email'] # Consider comparing same repo, different years

    filtering_function = lambda x: x.year_x != x.year_y -1 # Might remove for more cases


    df = df[~df.year.isna()]
    comp_df = compare_twin_behaviours(first_behaviour=df[df.status == 'Continue']
                                        , second_behaviour=df[df.status == 'Continue']
                                        , keys=keys
                                        , comparison_columns=comparison_columns + ['year']
                                        , comparison_function=comparison_function
                                        , filtering_function=filtering_function)


    return comp_df



def analyze_developer_status_twins_df(comp_df: pd.DataFrame):

    stats = []

    for i in comparison_columns:
        stats.append((i, comp_df[i + COMPARISON_SUFFIX].mean(), comp_df[i + COMPARISON_SUFFIX].std()))

    df = pd.DataFrame(stats, columns = ['feature', 'avg', 'std'])
    df = df.sort_values('avg')

    return df


def compute_twins(dry_df
                  , twin_func
                  , comparison_columns
                  , comparison_function
                  , twins_file
                  , analisys_func
                  , stats_file):

    comp_df = twin_func(dry_df
                                              ,comparison_columns=comparison_columns
                                              , comparison_function=comparison_function)
    comp_df.to_csv(twins_file)
    """
    comp_df = pd.read_csv(twins_file)
    """

    print("records", len(comp_df))
    #print("repos", comp_df.repo_name.nunique())
    print("developers", comp_df.author_email.nunique())

    stats_df = analisys_func(comp_df)

    if stats_file:
        stats_df.to_csv(stats_file
                                    , index=False)
    return stats_df

def run_developer_status_twins_analysis():

    dry_df = get_developer_motivation_per_year_ds()

    print("Continue vs. abandoned")
    compute_twins(dry_df=dry_df
                  , twin_func=build_same_repo_cnt_abnd
                  , comparison_columns=comparison_columns
                  , comparison_function=relative_diff
                  , twins_file=os.path.join(DATA_PATH, DEV_CNT_ABND_TWINS_DATASET)
                  , analisys_func=analyze_developer_status_twins_df
                  , stats_file=os.path.join(DATA_PATH, DEV_CNT_ABND_TWINS_STATS))

    print("Continue vs. continue next year")
    compute_twins(dry_df=dry_df
                  , twin_func=build_same_repo_cnt_cnt
                  , comparison_columns=comparison_columns
                  , comparison_function=relative_diff
                  , twins_file=os.path.join(DATA_PATH, DEV_CNT_CNT_TWINS_DATASET)
                  , analisys_func=analyze_developer_status_twins_df
                  , stats_file=os.path.join(DATA_PATH, DEV_CNT_CNT_TWINS_STATS))
    """
    print("Same year, different repos, Continue vs. abandoned")
    compute_twins(dry_df=dry_df[dry_df.year == 2019] # All dataset requires too much memory
                  , twin_func=build_same_year_cnt_abnd
                  , comparison_columns=comparison_columns
                  , comparison_function=relative_diff
                  , twins_file=os.path.join(DATA_PATH, DEV_YEAR_CNT_ABND_TWINS_DATASET)
                  , analisys_func=analyze_developer_status_twins_df
                  , stats_file=os.path.join(DATA_PATH, DEV_YEAR_CNT_ABND_TWINS_STATS))
    """

if __name__ == '__main__':
    run_developer_status_twins_analysis()
    # TODO - check files_edited
