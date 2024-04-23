from os.path import join
import pandas as pd

from configuration import DATA_PATH, DEV_MOTIVATION_PER_YEAR, ENHANCED_DEV_MOTIVATION_PER_YEAR\
    ,  FIRST_ANALYZED_YEAR, LAST_ANALYZED_YEAR, BOT_THRESHOLD, INVOLVED_THRESHOLD\
    ,  GIT_ALL_REPO_PROPERTIES, GENERAL_PATH, COMPANIES_DOMAINS
from data_utils import get_repo_ds
from file_utils import prefix_columns

from performance_by_repo_developers_num import developer_group
from performance_by_repo_employment import is_employee, get_email_domain
from survey_by_repo_license_type import LICENSE_GROUP
from survey_by_repo_type import populate_popularity_thresholds, find_popularity_group

KEY = 'repo_name'


def add_license_group(df
                      , base_col
                      , group_col):
    keys = sorted(LICENSE_GROUP.keys())
    df[group_col] = df[base_col].map(lambda x: LICENSE_GROUP.get(x))
    df[group_col + "_code"] = df[base_col].map(lambda x: keys.index(x) if x in keys else -1)

    return df

def add_popularity_group(dev_df
                      , repo_df
                        , base_col
                        , group_col):
    populate_popularity_thresholds(repo_df
                                   , star_column='repo_stargazers_count')
    #stars95 = repo_df.repo_stargazers_count.quantile(0.95)
    dev_df[group_col] = dev_df[base_col].map(lambda x: find_popularity_group(x))

    return dev_df

def add_community_group(dev_df
                      , repo_df
                        , base_col
                        , group_col):
    repo_df[group_col] = repo_df[base_col].map(developer_group)
    repo_df = repo_df[['repo_name', group_col]]
    dev_df = pd.merge(repo_df
                      , dev_df
                      , on='repo_name'
                      , how='left')

    return dev_df

def add_employment_group(dev_df
                        , base_col
                        , group_col
                        , repo_col='repo_name'
                        , email_col='author_email'):

    dev_df['domain'] = dev_df[email_col].map(get_email_domain)
    dev_df['user'] = dev_df[repo_col].map(lambda x: x.split('/')[0])

    domains_df = pd.read_csv(join(GENERAL_PATH + '/data/'
                                  , COMPANIES_DOMAINS))

    dev_df[group_col] = dev_df.apply(lambda x: is_employee(company=x.user
                                                              , email_domain=x['domain']
                                                              , domains_df=domains_df)
                                        , axis=1)

    return dev_df



def generate_enhanced_developer_motivation_per_year_ds(output_file=None
                                                       , include_git=False):
    dry_df = pd.read_csv(join(DATA_PATH, DEV_MOTIVATION_PER_YEAR))

    dry_df = dry_df[dry_df.year <= LAST_ANALYZED_YEAR]
    dry_df = dry_df[dry_df.year >= FIRST_ANALYZED_YEAR]

    dry_df = dry_df[dry_df.commits <= BOT_THRESHOLD]
    dry_df = dry_df[dry_df.commits >= INVOLVED_THRESHOLD]

    if include_git:
        git_df = pd.read_csv(join(DATA_PATH
                                , GIT_ALL_REPO_PROPERTIES))
        keys = [KEY]
        git_df = prefix_columns(df=git_df
                       , prefix='repo_'
                       , columns=set(git_df.columns) - set(keys))


        df = pd.merge(dry_df
                      , git_df
                      , on=keys
                      , how='left')
    else:
        df = dry_df

    repo_df = get_repo_ds()

    repo_df['start_year'] = repo_df.min_commit_time.map(lambda x: int(x[:4]))
    repo_df['age'] = LAST_ANALYZED_YEAR - repo_df.start_year

    repo_df['age_group'] = pd.cut(repo_df.start_year, [0
        , FIRST_ANALYZED_YEAR - 1
        , repo_df[repo_df.start_year >= FIRST_ANALYZED_YEAR].start_year.quantile(0.25)
        , repo_df[repo_df.start_year >= FIRST_ANALYZED_YEAR].start_year.quantile(0.75)
        , float("inf")], labels=['prehistory', "old", "medium", "young"])

    repo_df['age_group_code'] = df['age_group'].map(lambda x: {'Pre GitHub': 0
                                                               , 'Old': 1
                                                               , 'Medium': 2
                                                               , 'New': 3}.get(x, -1))

    LANGUAGES = ['Python', 'JavaScript', 'Java', 'C++', 'PHP']
    repo_df['language_group'] = repo_df['repo_language'].map(lambda x: LANGUAGES.index(x) if x in LANGUAGES
             else -1)

    if 'repo_license' in df.columns:
        repo_prop_df = repo_df[['repo_name'
            , 'age_group_code' #, 'Is_Company', 'age_group'
            , 'authors', 'language_group']]
    else:
        repo_prop_df = repo_df[['repo_name'
            , 'age_group_code' #, 'Is_Company', 'age_group'
            , 'authors', 'language_group', 'repo_license', 'repo_stargazers_count']]

    df = pd.merge(df, repo_prop_df, on='repo_name')

    # Compute license type
    df = add_license_group(df
                      , base_col='repo_license'
                      , group_col='License Type')

    # Compute Popularity
    df = add_popularity_group(dev_df=df
                         , repo_df=repo_df
                         , base_col='repo_stargazers_count'
                         , group_col='Popularity')

    # popularity_group
    df['popularity_group_code'] = df['popularity_group'].map(lambda x: {'Low': 0
                                                               , 'Medium': 1
                                                               , 'High': 2
                                                               , 'Extraordinary': 3}.get(x, -1))

    # Compute community
    df = add_community_group(dev_df=df
                        , repo_df=repo_df
                        , base_col='authors'
                        , group_col='Community')

    # dev_group
    df['dev_group_code'] = df['dev_group'].map(lambda x: {'Single': 0
        , 'Small': 1
        , 'Medium': 2
        , 'Large': 3}.get(x, -1))

    # Employment
    df = add_employment_group(dev_df=df
                         , base_col='author_email'
                         , group_col='Employment')
    df['employee_code'] = df['dev_group'].map(lambda x: {'Not Employee': 0
        , 'Employee': 1}.get(x, -1))


    if output_file:
        df.to_csv(output_file
              , index=False)

    return df

def run_etl():
    generate_enhanced_developer_motivation_per_year_ds(output_file=join(DATA_PATH
                                                                        , ENHANCED_DEV_MOTIVATION_PER_YEAR))
if __name__ == "__main__":
    run_etl()
