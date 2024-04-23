import numbers
import os
import pandas as pd

from configuration import DEV_ADJACENT_YEAR_DATASET, DEV_ADJACENT_YEAR_STATS, DATA_PATH, FEATURES_NAMES
from compare_twin_behaviours import compare_twin_behaviours, compute_confusion_matrics, COMPARISON_SUFFIX
from data_utils import get_developer_motivation_per_year_ds


comparison_columns = FEATURES_NAMES

def  build_developer_adjacent_df(df: pd.DataFrame
                                 , keys=['repo_name', 'author_email']):

    #keys= ['author_email']
    #keys= ['repo_name', 'author_email'] # Consider comparing same repo, different years

    #filtering_function = lambda x: x.year_x != x.year_y # Might remove for more cases
    filtering_function = lambda x: x.year_x != x.year_y -1 # Might remove for more cases
    comparison_function= lambda first, second : second > first \
        if isinstance(first, numbers.Number) and isinstance(second, numbers.Number) \
        else None

    comparison_function= lambda first, second : second - first \
        if isinstance(first, numbers.Number) and isinstance(second, numbers.Number) \
        else None


    df = df[~df.year.isna()]
    #df = df[df.commits >= 50] # TODO - consider
    #df = df[df.status == 'Continue']
    comp_df = compare_twin_behaviours(first_behaviour=df
                                        , second_behaviour=df
                                        , keys=keys
                                        , comparison_columns=comparison_columns + ['year']
                                        , comparison_function=comparison_function
                                        , filtering_function=filtering_function)


    return comp_df


def analyze_developer_adjacent_df(comp_df: pd.DataFrame):

    stats = []

    for i in comparison_columns:
        stats.append((i, comp_df[i + COMPARISON_SUFFIX].mean(), comp_df[i + COMPARISON_SUFFIX].std()))

    df = pd.DataFrame(stats, columns = ['feature', 'avg', 'std'])
    df = df.sort_values('avg')

    return df

def run_build_developer_adjacent_df():


    dry_df = get_developer_motivation_per_year_ds()
    comp_df = build_developer_adjacent_df(dry_df)
    comp_df.to_csv(os.path.join(DATA_PATH, DEV_ADJACENT_YEAR_DATASET)
                                    , index=False)
    comp_df = pd.read_csv(os.path.join(DATA_PATH, DEV_ADJACENT_YEAR_DATASET))

    stats_df = analyze_developer_adjacent_df(comp_df)
    stats_df.to_csv(os.path.join(DATA_PATH, DEV_ADJACENT_YEAR_STATS)
                                    , index=False)



if __name__ == '__main__':
    run_build_developer_adjacent_df()