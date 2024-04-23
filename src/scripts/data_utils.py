from os.path import join
import pandas as pd

from configuration import DATA_PATH, DEV_MOTIVATION_PER_YEAR, DEV_ADJACENT_YEAR_DATASET, DEV_ADJACENT_YEAR_STATS\
    , REPOS_PER_YEAR, FIRST_ANALYZED_YEAR, LAST_ANALYZED_YEAR, BOT_THRESHOLD, INVOLVED_THRESHOLD\
    , MINIMAL_COMMIT_PER_REPO, REPOS_PROFILE, GIT_ALL_REPO_PROPERTIES, ENHANCED_DEV_MOTIVATION_PER_YEAR
from file_utils import prefix_columns

KEY = 'repo_name'

def get_developer_motivation_per_year_ds():
    dry_df = pd.read_csv(join(DATA_PATH, ENHANCED_DEV_MOTIVATION_PER_YEAR)
                         , low_memory=False)

    dry_df = dry_df[dry_df.year <= LAST_ANALYZED_YEAR]
    dry_df = dry_df[dry_df.year >= FIRST_ANALYZED_YEAR]

    dry_df = dry_df[dry_df.commits <= BOT_THRESHOLD]
    dry_df = dry_df[dry_df.commits >= INVOLVED_THRESHOLD]


    return dry_df


def get_repo_per_year_ds():
    rpy_df = pd.read_csv(join(DATA_PATH, REPOS_PER_YEAR))

    rpy_df = rpy_df[rpy_df.year <= LAST_ANALYZED_YEAR]
    rpy_df = rpy_df[rpy_df.year >= FIRST_ANALYZED_YEAR]
    rpy_df = rpy_df[rpy_df.commits >= MINIMAL_COMMIT_PER_REPO] # This is the commits per year

    return rpy_df


def get_repo_ds():
    df = pd.read_csv(join(DATA_PATH, REPOS_PROFILE))

    git_df = pd.read_csv(join(DATA_PATH
                            , GIT_ALL_REPO_PROPERTIES))
    keys = [KEY]
    git_df = prefix_columns(df=git_df
                   , prefix='repo_'
                   , columns=set(git_df.columns) - set(keys))


    df = pd.merge(df
                  , git_df
                  , on=keys
                  , how='left')

    return df

