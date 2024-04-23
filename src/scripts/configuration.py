import os
import sys

ANALYSIS_PATH = r'c:\src\analysis_utils'
sys.path.append(ANALYSIS_PATH)

GENERAL_PATH = r'c:\src\general'
sys.path.append(GENERAL_PATH)


BASE_PATH = os.path.normpath(os.path.join(os.path.dirname(__file__), "..", ".."))
DATA_PATH = os.path.join(BASE_PATH, r'data')
FIGURES_PATH = os.path.join(BASE_PATH, r'figures')
PERFORMANCE_PATH = os.path.join(BASE_PATH, r'performance')
MODELS_PATH = os.path.join(BASE_PATH, r'models')

INVOLVED_THRESHOLD = 12
BOT_THRESHOLD = 1000

# Input files from BigQuery
DEV_MOTIVATION_PER_YEAR = 'developer_motivation_profile.csv' # from general.developer_motivation_profile
ENHANCED_DEV_MOTIVATION_PER_YEAR  = 'enhanced_developer_motivation_profile.csv' # enhanced by etl
REPOS_PROFILE = 'ght_repo_profile.csv'  # from general_ght.repo_profile
REPOS_PER_YEAR = 'repo_properties_per_year.csv' # from general_ght.repo_properties_per_year
#REPOS_PER_YEAR = 'repo_properties_per_year_with_abstraction_C.csv'


DEV_ADJACENT_YEAR_DATASET = 'developer_adjacent_years.csv'
DEV_ADJACENT_YEAR_STATS = 'developer_adjacent_years_stats.csv'

# Twins files
DEV_CNT_ABND_TWINS_DATASET = 'developer_cnt_abnd_twins.csv'
DEV_CNT_ABND_TWINS_STATS = 'developer_cnt_abnd_twins_stats.csv'
DEV_CNT_CNT_TWINS_DATASET = 'developer_cnt_cnt_twins.csv'
DEV_CNT_CNT_TWINS_STATS = 'developer_cnt_cnt_twins_stats.csv'
DEV_YEAR_CNT_ABND_TWINS_STATS = 'developer_year_cnt_abnd_twins_stats.csv'
#DEV_YEAR_CNT_ABND_TWINS_DATASET = 'developer_year_cnt_abnd_twins.csv' direction swtiched, deprecated
DEV_SAME_YEAR_CNT_OVER_ABND_TWINS_STATS = 'developer_year_cnt_abnd_twins.csv'

DEV_SAME_YEAR_CNT_TWINS_STATS = 'twins_continue_over_continue.csv'
DEV_SAME_YEAR_ABD_OVER_CNT_TWINS_STATS = 'twins_abandoned_over_continue.csv'
DEV_NEAR_YEAR_NOACT_OVER_CNT_TWINS_STATS = 'twins_no_activity_over_continue.csv'

GIT_ALL_REPO_PROPERTIES = 'repos_2020_api_properties.csv'

STABILITY_STATS_FILE = 'repo_metrics_stability_stats.csv'
REPO_COHANGE_STATS_TEMPLATE = 'repo_cochange_stats_{metric}.csv'
REPO_CORRELATION_STATS_TEMPLATE = 'repo_correlation_stats_{metric}.csv'
DEVELOPER_CORRELATION_STATS_TEMPLATE = 'dev_correlation_stats_{metric}.csv'

PERFORMANCE_BY_DEV_STATUS_STATS = 'performance_by_dev_status_stats.csv'
PERFORMANCE_BY_REPO_RETENTION_STATS = 'performance_by_repo_retention_stats.csv'
PERFORMANCE_BY_REPO_POPULARITY_STATS = 'performance_by_repo_popularity_stats.csv'
PERFORMANCE_BY_REPO_DEV_GROUP_STATS = 'performance_by_repo_dev_group_stats.csv'

COCHANGE_OF_METRCIS_BY_RETENTION_PROB = 'repo_cochange_of_metrics_by_retention_prob.csv'

REPO_AGG_STATS_FILE = 'repo_agg_stats.csv'

JOINT_STATS_FILE = 'motivation_joint_stats.csv'

DEV_BY_EXPERIENCE_FILE = 'developer_metrics_by_experience.csv'

FEATURES_CM_STATS = 'features_cm_stats.csv'

ADMINISTRATIVE_FEATURES = ['repo_name',  'year','author_email', 'author_name', 'names', 'author_email_domain',]
COMPLEX_FEATURES =['min_commit_timestamp', 'max_commit_timestamp','min_commit','max_commit',]

NON_PREDICTIVE_FEATURES = set(['status','Community','License Type',  'user', 'Employment' , 'repo_license'
, 'Popularity', 'Is_Company', 'age_group', 'language_group', 'project_continued','repo_language'
, 'dev_group', 'popularity_group'
] + ADMINISTRATIVE_FEATURES + COMPLEX_FEATURES
                              )
# [  'owned_repository',

NUMERIC_NULL = -1
TEST_SIZE = 0.2
RANDOM_STATE = 37

FIRST_ANALYZED_YEAR = 2008
LAST_ANALYZED_YEAR = 2021

MINIMAL_COMMIT_PER_REPO = 200
MINIMAL_PRS_PER_REPO_THRESHOLD = 200

COMPANIES_DOMAINS = 'companies_domains.csv'

# significant_ccp_improvment = lambda prev, cur : prev - 0.1 > cur
the_lower_the_better = lambda prev, cur: prev > cur
the_higher_the_better = lambda prev, cur: prev < cur

CONCEPTS_DICT = {
    'ccp': the_lower_the_better
                    , 'same_date_duration_avg': the_lower_the_better
                    , 'commits': the_higher_the_better
                    , 'avg_coupling_code_size_cut': the_lower_the_better
                    #, 'commits_per_involved_developer': the_higher_the_better
                    , 'retention_prob': the_higher_the_better
                    #, 'textual_abstraction_commits_rate': the_higher_the_better
                    #, 'implementation_involved_rate': the_lower_the_better
#                    , 'typo_rate': the_lower_the_better
                 }

METRICS_DICT = {
# Commit message features
#'corrective_message_length_avg': the_higher_the_better # Low Stability
# 'non_corrective_message_length_avg': the_higher_the_better
'multiline_message_ratio': the_higher_the_better
#, 'non_merge_commits': the_higher_the_better
, 'message_length_avg': the_higher_the_better
, 'corrective_multiline_message_ratio': the_higher_the_better

, 'cursing_rate': the_lower_the_better
, 'commit_days': the_higher_the_better
, 'commit_period': the_higher_the_better
, 'refactor_mle': the_higher_the_better
, 'tests_presence': the_higher_the_better
, 'prev_touch_ago': the_lower_the_better

, 'commit_day_density': the_higher_the_better
, 'negative_sentiment_rate': the_lower_the_better
, 'commits_per_day': the_higher_the_better
, 'positive_sentiment_rate': the_higher_the_better

#, '
    #
    # ': the_lower_the_better
#, 'avg_coupling_code_size_cut': the_lower_the_better

# File features
, 'files_edited': the_higher_the_better
, 'files_created': the_higher_the_better
#, 'sum_code_file_size': the_lower_the_better
#, 'capped_sum_code_file_size': the_lower_the_better
#, 'capped_sum_file_size': the_lower_the_better # Low stability


# Issue features
#, 'closed_issues': the_higher_the_better
#, 'merged_issues': the_higher_the_better # Low stability
#, 'merged_issues_ratio': the_higher_the_better # Low stability
#, 'reopened_issues_ratio': the_lower_the_better # Low stability
#, 'demilestoned_issues_ratio': the_lower_the_better # Low stability
#, 'assigned_to_closed_minutes': the_lower_the_better # Low stability
#, 'created_to_assigned_minutes': the_lower_the_better # Low stability
#, 'created_to_closed_minutes': the_lower_the_better # Low stability

# Pull request features
#, 'pull_requests': the_higher_the_better
#, 'merged_prs': the_higher_the_better
#, 'merged_pr_ratio': the_higher_the_better  # Low stability
#, 'first_to_last_commit_minutes': the_lower_the_better  # Low stability
#, 'open_to_merge_minutes': the_lower_the_better  # Low stability
#, 'first_commit_to_merge_minutes': the_lower_the_better  # Low stability
#, 'sloppy_pr_ratio': the_lower_the_better  # Low stability


#, 'files_owned_ccp' : the_lower_the_better
#, 'bug_prev_touch_ago' : the_lower_the_better
, 'one_file_fix_rate' : the_lower_the_better
,  'one_file_refactor_rate' : the_lower_the_better
, 'reverted_ratio': the_lower_the_better

#, 'typo_rate': the_lower_the_better
#, 'tangling_rate': the_lower_the_better
#, 'bingo_rate': the_lower_the_better

#,'files_owned' : the_higher_the_better
#, 'owned_repository' : the_higher_the_better
#,  'minutes_to_revert' : the_lower_the_better # Pearson 0.23

                }



REPO_METRICS_DICT = {
'authors': the_higher_the_better
#, 'survival_avg': the_lower_the_better # TODO - not intersting so deprecated
#, 'above_year_prob': the_lower_the_better
#, 'commits_per_developer': the_higher_the_better
#, 'involved_developers_commits': the_higher_the_better
#, 'capped_commits_per_involved_developer': the_higher_the_better
#, 'merged_issues_per_developer': the_higher_the_better
#, 'merged_issues_per_involved_developer': the_higher_the_better
#, 'merged_prs_per_developer': the_higher_the_better
#, 'merged_prs_per_involved_developer': the_higher_the_better
, 'involved_developers_capped_commits': the_higher_the_better
, 'involved_developers': the_higher_the_better
, 'onboarding_prob': the_higher_the_better
#, 'file_typo_rate': the_lower_the_better

}



ALL_FEATURES_DICT = CONCEPTS_DICT.copy()
ALL_FEATURES_DICT.update(METRICS_DICT)
ALL_FEATURES_DICT.update(REPO_METRICS_DICT)


FEATURES_NAMES = list(set(list(CONCEPTS_DICT.keys()) + list(METRICS_DICT.keys())) - set(['retention_prob']))
REPO_FEATURES_NAMES = FEATURES_NAMES + list(REPO_METRICS_DICT.keys()) + ['retention_prob']


# Survey
ANON_SURVEY_FILE = os.path.join(DATA_PATH, 'anon_survey_results.csv')
ENHANCED_CORRECTED_REPOS_FILE = os.path.join(DATA_PATH, 'survey_enhanced_repos.csv')

REPO_PROPERTIES = 'repos_2020.csv'

COUNT_COL = 'Q1'
PAY_QUESTION = 'Q31'
IDEOLOGY_QUESTION = 'Q71'
PROJECT_SATISFACTION_QUESTION = 'Q72'
PROJECT_COMMUNITY_QUESTION = 'Q75'
PROJECT_RECOGNITION_QUESTION = 'Q77'
PROJECT_CORE_QUESTION = 'Q78'
PERSONAL_PRODUCTIVITY_QUESTION = 'Q84'
PROJECT_MOTIVATION_QUESTION = 'Q86'
TESTS_QUESTION = 'Q93'
DETAILED_MESSAGES_QUESTION = 'Q94'
ONLINE_PORTFOLIO_QUESTION = 'Q95'
PERFOSANL_RESPOSIBILITY_QUESTION = 'Q101' # 'I feel responsible to the repository success'
PERFOSANL_INFLUENCE_QUESTION = 'Q102' # 'I have significant influence on the repository'

MOTIVATION_QUESTIONS_TAB = { COUNT_COL: 'Developers'
                    , PROJECT_MOTIVATION_QUESTION: 'Motiva\-tion in Project'
                    , PROJECT_SATISFACTION_QUESTION: 'Satis\-faction in Project'
                    , PERSONAL_PRODUCTIVITY_QUESTION: 'Personal Productivity'
                    , TESTS_QUESTION : 'Test Writing'
                    , DETAILED_MESSAGES_QUESTION: 'Detailed Commit Messages'
                             }

METRIC_TITLE = { COUNT_COL: 'Developers'
                    , PROJECT_MOTIVATION_QUESTION: 'Motivation in Project'
                    , PROJECT_SATISFACTION_QUESTION: 'Satisfaction in Project'
                    , PROJECT_RECOGNITION_QUESTION: 'Recognition'
                    , TESTS_QUESTION : 'Test Writing'
                    , DETAILED_MESSAGES_QUESTION: 'Detailed Commit Messages'
                 }

MOTIVATION_QUESTION_STATS = {COUNT_COL: 'count'
                                              , PROJECT_MOTIVATION_QUESTION : 'mean'
                                              , PROJECT_SATISFACTION_QUESTION : 'mean'
                                              , PERSONAL_PRODUCTIVITY_QUESTION : 'mean'
                                              , TESTS_QUESTION : 'mean'
                                              , DETAILED_MESSAGES_QUESTION : 'mean'
                             }

SAMPLING_COL = 'sampling_method'

COMMON_METRIC = 'metric'

control_variables = {'License Type', 'Popularity', 'Employment', 'Community', 'language_group'
    , 'Is_Company', 'age_group'}
