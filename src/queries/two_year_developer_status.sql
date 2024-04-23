drop table if exists general.two_year_developer_status;


create table
general.two_year_developer_status
as
select
#cur
#, prev
cur.repo_name
, cur.year
, cur.author_email
, cur.status
# for i in FEATURES_NAMES:
#    print(", cur.{i}  as cur_{i}".format(i=i))
#    print(", prev.{i}  as prev_{i}".format(i=i))
#    print(", if(prev.{i} > 0, (cur.{i} - prev.{i})/prev.{i}, null) as rel_{i}".format(i=i))
#
, cur.multiline_message_ratio  as cur_multiline_message_ratio
, prev.multiline_message_ratio  as prev_multiline_message_ratio
, if(prev.multiline_message_ratio > 0, (cur.multiline_message_ratio - prev.multiline_message_ratio)/prev.multiline_message_ratio, null) as rel_multiline_message_ratio
, cur.commit_period  as cur_commit_period
, prev.commit_period  as prev_commit_period
, if(prev.commit_period > 0, (cur.commit_period - prev.commit_period)/prev.commit_period, null) as rel_commit_period
, cur.merged_issues  as cur_merged_issues
, prev.merged_issues  as prev_merged_issues
, if(prev.merged_issues > 0, (cur.merged_issues - prev.merged_issues)/prev.merged_issues, null) as rel_merged_issues
, cur.commits  as cur_commits
, prev.commits  as prev_commits
, if(prev.commits > 0, (cur.commits - prev.commits)/prev.commits, null) as rel_commits
, cur.same_date_duration_avg  as cur_same_date_duration_avg
, prev.same_date_duration_avg  as prev_same_date_duration_avg
, if(prev.same_date_duration_avg > 0, (cur.same_date_duration_avg - prev.same_date_duration_avg)/prev.same_date_duration_avg, null) as rel_same_date_duration_avg
, cur.merged_prs  as cur_merged_prs
, prev.merged_prs  as prev_merged_prs
, if(prev.merged_prs > 0, (cur.merged_prs - prev.merged_prs)/prev.merged_prs, null) as rel_merged_prs
, cur.commit_days  as cur_commit_days
, prev.commit_days  as prev_commit_days
, if(prev.commit_days > 0, (cur.commit_days - prev.commit_days)/prev.commit_days, null) as rel_commit_days
, cur.reverted_ratio  as cur_reverted_ratio
, prev.reverted_ratio  as prev_reverted_ratio
, if(prev.reverted_ratio > 0, (cur.reverted_ratio - prev.reverted_ratio)/prev.reverted_ratio, null) as rel_reverted_ratio
, cur.avg_coupling_code_size_cut  as cur_avg_coupling_code_size_cut
, prev.avg_coupling_code_size_cut  as prev_avg_coupling_code_size_cut
, if(prev.avg_coupling_code_size_cut > 0, (cur.avg_coupling_code_size_cut - prev.avg_coupling_code_size_cut)/prev.avg_coupling_code_size_cut, null) as rel_avg_coupling_code_size_cut
, cur.one_file_refactor_rate  as cur_one_file_refactor_rate
, prev.one_file_refactor_rate  as prev_one_file_refactor_rate
, if(prev.one_file_refactor_rate > 0, (cur.one_file_refactor_rate - prev.one_file_refactor_rate)/prev.one_file_refactor_rate, null) as rel_one_file_refactor_rate
, cur.prev_touch_ago  as cur_prev_touch_ago
, prev.prev_touch_ago  as prev_prev_touch_ago
, if(prev.prev_touch_ago > 0, (cur.prev_touch_ago - prev.prev_touch_ago)/prev.prev_touch_ago, null) as rel_prev_touch_ago
, cur.ccp  as cur_ccp
, prev.ccp  as prev_ccp
, if(prev.ccp > 0, (cur.ccp - prev.ccp)/prev.ccp, null) as rel_ccp
, cur.corrective_multiline_message_ratio  as cur_corrective_multiline_message_ratio
, prev.corrective_multiline_message_ratio  as prev_corrective_multiline_message_ratio
, if(prev.corrective_multiline_message_ratio > 0, (cur.corrective_multiline_message_ratio - prev.corrective_multiline_message_ratio)/prev.corrective_multiline_message_ratio, null) as rel_corrective_multiline_message_ratio
, cur.commit_day_density  as cur_commit_day_density
, prev.commit_day_density  as prev_commit_day_density
, if(prev.commit_day_density > 0, (cur.commit_day_density - prev.commit_day_density)/prev.commit_day_density, null) as rel_commit_day_density
, cur.message_length_avg  as cur_message_length_avg
, prev.message_length_avg  as prev_message_length_avg
, if(prev.message_length_avg > 0, (cur.message_length_avg - prev.message_length_avg)/prev.message_length_avg, null) as rel_message_length_avg
, cur.files_edited  as cur_files_edited
, prev.files_edited  as prev_files_edited
, if(prev.files_edited > 0, (cur.files_edited - prev.files_edited)/prev.files_edited, null) as rel_files_edited
, cur.tests_presence  as cur_tests_presence
, prev.tests_presence  as prev_tests_presence
, if(prev.tests_presence > 0, (cur.tests_presence - prev.tests_presence)/prev.tests_presence, null) as rel_tests_presence
, cur.refactor_mle  as cur_refactor_mle
, prev.refactor_mle  as prev_refactor_mle
, if(prev.refactor_mle > 0, (cur.refactor_mle - prev.refactor_mle)/prev.refactor_mle, null) as rel_refactor_mle
, cur.cursing_rate  as cur_cursing_rate
, prev.cursing_rate  as prev_cursing_rate
, if(prev.cursing_rate > 0, (cur.cursing_rate - prev.cursing_rate)/prev.cursing_rate, null) as rel_cursing_rate
, cur.files_created  as cur_files_created
, prev.files_created  as prev_files_created
, if(prev.files_created > 0, (cur.files_created - prev.files_created)/prev.files_created, null) as rel_files_created
, cur.negative_sentiment_rate  as cur_negative_sentiment_rate
, prev.negative_sentiment_rate  as prev_negative_sentiment_rate
, if(prev.negative_sentiment_rate > 0, (cur.negative_sentiment_rate - prev.negative_sentiment_rate)/prev.negative_sentiment_rate, null) as rel_negative_sentiment_rate
, cur.commits_per_day  as cur_commits_per_day
, prev.commits_per_day  as prev_commits_per_day
, if(prev.commits_per_day > 0, (cur.commits_per_day - prev.commits_per_day)/prev.commits_per_day, null) as rel_commits_per_day
, cur.one_file_fix_rate  as cur_one_file_fix_rate
, prev.one_file_fix_rate  as prev_one_file_fix_rate
, if(prev.one_file_fix_rate > 0, (cur.one_file_fix_rate - prev.one_file_fix_rate)/prev.one_file_fix_rate, null) as rel_one_file_fix_rate
, cur.positive_sentiment_rate  as cur_positive_sentiment_rate
, prev.positive_sentiment_rate  as prev_positive_sentiment_rate
, if(prev.positive_sentiment_rate > 0, (cur.positive_sentiment_rate - prev.positive_sentiment_rate)/prev.positive_sentiment_rate, null) as rel_positive_sentiment_rate

from
general.developer_motivation_profile as cur
join
general.developer_motivation_profile as prev
on
cur.repo_name = prev.repo_name
and
cur.author_email = prev.author_email
and
cur.year = prev.year + 1
and
cur.year < 2022
;

