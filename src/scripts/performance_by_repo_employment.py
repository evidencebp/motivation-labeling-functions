from os.path import join
import pandas as pd


from configuration import DATA_PATH, FEATURES_NAMES, PERFORMANCE_BY_REPO_DEV_GROUP_STATS, ALL_FEATURES_DICT\
    , GENERAL_PATH, COMPANIES_DOMAINS, DEV_MOTIVATION_PER_YEAR, LAST_ANALYZED_YEAR, control_variables

from control_analysis import is_invalid_subgroup
from data_utils import get_repo_ds, get_developer_motivation_per_year_ds
from decorate_features import display_name
from performance_by_repo_stars import grouped_df_structuring, compute_controled_results, find_base_key

AGG_DISPLAY_NAME = 'Metric'

COMMON_METRIC = 'metric'
AGG_COLUMN = 'Employment'


def get_email_domain(email):
    rc = email


    domain_pos = str(email).find('@')
    if domain_pos > 0:
        rc = email[domain_pos+1:]

    return rc

def is_employee(company
                , email_domain
                , domains_df):

    if email_domain in domains_df[domains_df.user == company].author_email_domain.tolist():
        rc = 'Employee'
    else:
        rc = 'Not Employee'

    return rc


def is_monotone_by_employment(row
                              , use_display_name=True):
    if use_display_name:
        names = [display_name(i) for i in ALL_FEATURES_DICT.keys()]
    else:
        names = ALL_FEATURES_DICT.keys()

    if (row[AGG_DISPLAY_NAME] in names
        and 'Employee' in row
        and 'Not Employee' in row):
        rc = ALL_FEATURES_DICT[find_base_key(ALL_FEATURES_DICT, row[AGG_DISPLAY_NAME])](row['Employee'], row['Not Employee']) > 0

    else:
        rc = None

    return rc

def performance_by_repo_employment():

    KEY = 'repo_name'

    df = get_repo_ds()
    df = df[df.Is_Company == True]
    companies_repos = df.repo_name.to_list()

    developers_df = pd.read_csv(join(DATA_PATH
                                     , DEV_MOTIVATION_PER_YEAR))
    #developers_df = developers_df[(developers_df.year == LAST_ANALYZED_YEAR)
    #                                & (developers_df.repo_name.isin(companies_repos))]
    developers_df = developers_df[developers_df.repo_name.isin(companies_repos)]
    developers_df['domain'] = developers_df.author_email.map(get_email_domain)
    developers_df['user'] = developers_df.repo_name.map(lambda x: x.split('/')[0])

    domains_df = pd.read_csv(join(GENERAL_PATH + '/data/'
                                   , COMPANIES_DOMAINS))

    developers_df[AGG_COLUMN] = developers_df.apply(lambda x: is_employee(company=x.user
                , email_domain=x.domain
                , domains_df=domains_df)
                    , axis=1)

    employments_stats(developers_df)

    gdf = developers_df.groupby([AGG_COLUMN], as_index=False).agg({i: 'mean' for i in FEATURES_NAMES})

    ndf = grouped_df_structuring(AGG_COLUMN
                                , gdf
                                , ref_val='Employee'
                                , features=FEATURES_NAMES
                                , group_display_name=AGG_DISPLAY_NAME
                                , output_file = None
                                , caption=' \label{tab:pref-by-dev-employment} Performance by Project Employment'
                                , check_monotinicity_function = is_monotone_by_employment)

def compute_base_performance(developers_df
                               , features):

    KEY = 'author_email_domain'
    MIN_THRESHOLD = 200

    if is_invalid_subgroup(df=developers_df
                     , agg_column=AGG_COLUMN
                     , cnt_column=KEY
                     , sub_groups=2
                     , min_thrshold=MIN_THRESHOLD):
        return pd.DataFrame([None], columns=['Monotonicity'])

    gdf = developers_df.groupby([AGG_COLUMN], as_index=False).agg({i: 'mean' for i in features})

    ndf = grouped_df_structuring(AGG_COLUMN
                          , gdf
                          , ref_val='Employee'
                          , features=features
                          , group_display_name=AGG_DISPLAY_NAME
                          , output_file=None
                          , caption=None
                          , check_monotinicity_function=is_monotone_by_employment)

    ndf = ndf.fillna(-1)

    return ndf

def get_monotonicity(df
                               , features):
    ndf = compute_base_performance(df
                               , features)

    return ndf.iloc[0]['Monotonicity']


def control_results():

    df = get_developer_motivation_per_year_ds()

    compute_controled_results(df=df
                              , control_variables=control_variables - set([AGG_COLUMN])
                              , feature_evaluation_function=get_monotonicity
                              , control_value_output_format=join(DATA_PATH
                                            , "performance_by_employment_ctl_{control}.csv")
                              , control_summary_output_format=join(DATA_PATH
                                            , "performance_by_employment_ctl_{control}_sum.csv"))


def employments_stats(developers_df):
    print(developers_df.groupby(AGG_COLUMN).agg({'author_email' : 'nunique'}))

if __name__ == "__main__":
    performance_by_repo_employment()
    control_results()


