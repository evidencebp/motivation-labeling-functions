# into developer_metrics_by_experience.csv
select
first_year.year
, count(*) as cases
, count(distinct d.author_email) as developers


, avg(cur.closed_issues ) as cur_closed_issues
, avg(first_year.closed_issues ) as first_closed_issues
, avg(cur.closed_issues - first_year.closed_issues ) as closed_issues_delta

, avg(cur.commit_day_density ) as cur_commit_day_density
, avg(first_year.commit_day_density ) as first_commit_day_density
, avg(cur.commit_day_density - first_year.commit_day_density ) as commit_day_density_delta

, avg(cur.commit_period ) as cur_commit_period
, avg(first_year.commit_period ) as first_commit_period
, avg(cur.commit_period - first_year.commit_period ) as commit_period_delta

, avg(cur.commits ) as cur_commits
, avg(first_year.commits ) as first_commits
, avg(cur.commits - first_year.commits ) as commits_delta

, avg(cur.commits_per_day ) as cur_commits_per_day
, avg(first_year.commits_per_day ) as first_commits_per_day
, avg(cur.commits_per_day - first_year.commits_per_day ) as commits_per_day_delta

, avg(cur.corrective_multiline_message_ratio ) as cur_corrective_multiline_message_ratio
, avg(first_year.corrective_multiline_message_ratio ) as first_corrective_multiline_message_ratio
, avg(cur.corrective_multiline_message_ratio - first_year.corrective_multiline_message_ratio ) as corrective_multiline_message_ratio_delta

, avg(cur.cursing_rate ) as cur_cursing_rate
, avg(first_year.cursing_rate ) as first_cursing_rate
, avg(cur.cursing_rate - first_year.cursing_rate ) as cursing_rate_delta

, avg(cur.files_created ) as cur_files_created
, avg(first_year.files_created ) as first_files_created
, avg(cur.files_created - first_year.files_created ) as files_created_delta

, avg(cur.merged_prs ) as cur_merged_prs
, avg(first_year.merged_prs ) as first_merged_prs
, avg(cur.merged_prs - first_year.merged_prs ) as merged_prs_delta

, avg(cur.negative_sentiment_rate ) as cur_negative_sentiment_rate
, avg(first_year.negative_sentiment_rate ) as first_negative_sentiment_rate
, avg(cur.negative_sentiment_rate - first_year.negative_sentiment_rate ) as negative_sentiment_rate_delta

, avg(cur.non_corrective_message_length_avg ) as cur_non_corrective_message_length_avg
, avg(first_year.non_corrective_message_length_avg ) as first_non_corrective_message_length_avg
, avg(cur.non_corrective_message_length_avg - first_year.non_corrective_message_length_avg ) as non_corrective_message_length_avg_delta

, avg(cur.positive_sentiment_rate ) as cur_positive_sentiment_rate
, avg(first_year.positive_sentiment_rate ) as first_positive_sentiment_rate
, avg(cur.positive_sentiment_rate - first_year.positive_sentiment_rate ) as positive_sentiment_rate_delta

, avg(cur.prev_touch_ago ) as cur_prev_touch_ago
, avg(first_year.prev_touch_ago ) as first_prev_touch_ago
, avg(cur.prev_touch_ago - first_year.prev_touch_ago ) as prev_touch_ago_delta

, avg(cur.pull_requests ) as cur_pull_requests
, avg(first_year.pull_requests ) as first_pull_requests
, avg(cur.pull_requests - first_year.pull_requests ) as pull_requests_delta

, avg(cur.refactor_mle ) as cur_refactor_mle
, avg(first_year.refactor_mle ) as first_refactor_mle
, avg(cur.refactor_mle - first_year.refactor_mle ) as refactor_mle_delta

, avg(cur.reverted_ratio ) as cur_reverted_ratio
, avg(first_year.reverted_ratio ) as first_reverted_ratio
, avg(cur.reverted_ratio - first_year.reverted_ratio ) as reverted_ratio_delta

, avg(cur.same_date_duration_avg ) as cur_same_date_duration_avg
, avg(first_year.same_date_duration_avg ) as first_same_date_duration_avg
, avg(cur.same_date_duration_avg - first_year.same_date_duration_avg ) as same_date_duration_avg_delta

, avg(cur.ccp ) as cur_ccp
, avg(first_year.ccp ) as first_ccp
, avg(cur.ccp - first_year.ccp ) as ccp_delta

, avg(cur.files_owned_ccp ) as cur_owned_ccp
, avg(first_year.files_owned_ccp ) as first_owned_ccp
, avg(cur.files_owned_ccp - first_year.files_owned_ccp ) as owned_ccp_delta

, avg(cur.avg_coupling_code_size_cut ) as cur_avg_coupling_code_size_cut
, avg(first_year.avg_coupling_code_size_cut ) as first_avg_coupling_code_size_cut
, avg(cur.avg_coupling_code_size_cut - first_year.avg_coupling_code_size_cut ) as avg_coupling_code_size_cut_delta

, avg(cur.tests_presence ) as cur_tests_presence
, avg(first_year.tests_presence ) as first_tests_presence
, avg(cur.tests_presence - first_year.tests_presence ) as tests_presence_delta

, avg(cur.message_length_avg ) as cur_message_length_avg
, avg(first_year.message_length_avg ) as first_message_length_avg
, avg(cur.message_length_avg - first_year.message_length_avg ) as message_length_avg_delta

, avg(cur.multiline_message_ratio ) as cur_multiline_message_ratio
, avg(first_year.multiline_message_ratio ) as first_multiline_message_ratio
, avg(cur.multiline_message_ratio - first_year.multiline_message_ratio ) as multiline_message_ratio_delta

, avg(cur.files_edited ) as cur_files_edited
, avg(first_year.files_edited ) as first_files_edited
, avg(cur.files_edited - first_year.files_edited ) as files_edited_delta

, avg(cur.commit_days ) as cur_commit_days
, avg(first_year.commit_days ) as first_commit_days
, avg(cur.commit_days - first_year.commit_days ) as commit_days_delta

, avg(cur.one_file_fix_rate ) as cur_one_file_fix_rate
, avg(first_year.one_file_fix_rate ) as first_one_file_fix_rate
, avg(cur.one_file_fix_rate - first_year.one_file_fix_rate ) as one_file_fix_rate_delta

, avg(cur.one_file_refactor_rate ) as cur_one_file_refactor_rate
, avg(first_year.one_file_refactor_rate ) as first_one_file_refactor_rate
, avg(cur.one_file_refactor_rate - first_year.one_file_refactor_rate ) as one_file_refactor_rate_delta

, avg(cur.typo_rate ) as cur_typo_rate
, avg(first_year.typo_rate ) as first_typo_rate
, avg(cur.typo_rate - first_year.typo_rate ) as typo_rate_delta

, avg(cur.tangling_rate ) as cur_tangling_rate
, avg(first_year.tangling_rate ) as first_tangling_rate
, avg(cur.tangling_rate - first_year.tangling_rate ) as tangling_rate_delta

, avg(cur.bingo_rate ) as cur_bingo_rate
, avg(first_year.bingo_rate ) as first_bingo_rate
, avg(cur.bingo_rate - first_year.bingo_rate ) as bingo_rate_delta

from
general.developer_per_repo_profile as d
join
general_ght.dev_repo_properties_per_year as cur
on
d.repo_name= cur.repo_name
and
d.author_email = cur.author_email
join
general_ght.dev_repo_properties_per_year as first_year
on
d.repo_name= first_year.repo_name
and
d.author_email= first_year.author_email

where
cur.year = 2021
and
first_year.year = extract(year from d.min_commit_timestamp)
# different years
and
cur.year <> first_year.year
# enough commits per year
and
cur.commits >= 50
and
first_year.commits >= 50
group by
first_year.year
order by
first_year.year desc
;
