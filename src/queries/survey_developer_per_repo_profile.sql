##### Creating survey_developer_per_repo_profile

drop table if exists general.survey_developer_per_repo_profile;

create table
general.survey_developer_per_repo_profile
as
select
repo_name
, author_email
, max(author_name) as author_name
, count( distinct author_name) as names # For safety, see if the email has some names
, substr(author_email, STRPOS(author_email ,'@') + 1) as  author_email_domain
, max(if(substr(repo_name, 0, STRPOS(repo_name ,'/') -1) = author_name, 1, 0)) as owned_repository

, min(ec.commit_timestamp) as min_commit_timestamp
, max(ec.commit_timestamp) as max_commit_timestamp

, count(distinct commit) as commits
, min(commit) as min_commit
, max(commit) as max_commit

, 0 as files_edited
, 0 as files_created
, 0 as files_owned

, 0.0 as files_edited_ccp
, 0.0 as files_created_ccp
, 0.0 as files_owned_ccp

, 1.0*count(distinct if(is_corrective, commit, null))/count(distinct commit) as corrective_rate
, general.bq_ccp_mle(1.0*count(distinct if(is_corrective, commit, null))/count(distinct commit)) as ccp

, general.bq_refactor_mle(1.0*count(distinct case when is_refactor  then commit else null end)/count(distinct commit))
        as refactor_mle

, 1.0*count(distinct if(is_cursing, commit, null))/ count(distinct commit) as cursing_rate

, 1.0*count(distinct case when is_positive_sentiment then commit else null end)/count(distinct commit) as positive_sentiment_rate
, 1.0*count(distinct case when is_negative_sentiment then commit else null end)/count(distinct commit) as negative_sentiment_rate

, avg(if(not is_corrective, non_test_files, null)) as avg_coupling_size
, avg(if(not is_corrective, code_non_test_files, null)) as avg_coupling_code_size
, avg(if(not is_corrective, if(non_test_files > 103 , 103 , non_test_files), null)) as avg_coupling_size_capped
, avg(if(not is_corrective, if(code_non_test_files> 103 , 103 ,code_non_test_files), null)) as avg_coupling_code_size_capped
, avg(if(not is_corrective, if(non_test_files > 103 , null , non_test_files), null)) as avg_coupling_size_cut
, avg(if(not is_corrective, if(code_non_test_files> 10 , null ,code_non_test_files), null)) as avg_coupling_code_size_cut


, 0.0 as tests_presence

# Commit message linguistic characteristic (e.g., message length)
, 1.0*count(distinct if(REGEXP_CONTAINS(message,'\\n'), commit, null))/ count(distinct commit)
as multiline_message_ratio
, avg(length(message)) as message_length_avg

, if(count(distinct case when is_corrective  then commit else null end) > 0
,1.0*count(distinct if(is_corrective and REGEXP_CONTAINS(message,'\\n'), commit, null))
/ count(distinct case when is_corrective  then commit else null end)
, null)
as corrective_multiline_message_ratio
, avg(if(is_corrective,length(message), null)) as corrective_message_length_avg

, if(count(distinct case when not is_corrective  then commit else null end) > 0
,1.0*count(distinct if(not is_corrective and REGEXP_CONTAINS(message,'\\n'), commit, null))
/ count(distinct case when not is_corrective  then commit else null end)
, null)
as non_corrective_multiline_message_ratio
, avg(if(not is_corrective,length(message), null)) as non_corrective_message_length_avg


#	\items Commits/distinct commits variation \cite{8952390} \idan{Consider more ideas from there}
, 1.0*count(*)/count(distinct commit) as duplicated_commits_ratio

#	\item Percentage of self-commits to the entire project commits
, 0.0 as self_from_all_ratio

# Duration
, avg(case when same_date_as_prev then duration else null end) as same_date_duration_avg
, count(distinct case when same_date_as_prev then commit else null end) as same_date_commits

, TIMESTAMP_DIFF(max(ec.commit_timestamp), min(ec.commit_timestamp), day) as commit_period
, if(count(distinct date(ec.commit_timestamp)) > 0
 , 1.0*count(distinct commit)/count(distinct date(ec.commit_timestamp))
 , 1.0*count(distinct commit))as commits_per_day

, count(distinct ec.commit_timestamp) as commit_days
, count(distinct extract(week from date(ec.commit_timestamp))) as commit_weeks
, count(distinct extract(month from date(ec.commit_timestamp))) as commit_months
, count(distinct extract(dayofweek from date(ec.commit_timestamp))) as commit_days_of_week
, count(distinct extract(hour from ec.commit_timestamp)) as commit_hours # Should see how diverse are the hours

# Density
, count(distinct ec.commit_timestamp)/(1+TIMESTAMP_DIFF(max(ec.commit_timestamp), min(ec.commit_timestamp), day)) as commit_day_density

# Week days prob
, 1.0*count(distinct case when extract(DAYOFWEEK from date(ec.commit_timestamp))= 1 then ec.commit else null end)
    /count(distinct ec.commit) as Sunday_prob
, 1.0*count(distinct case when extract(DAYOFWEEK from date(ec.commit_timestamp))= 2 then ec.commit else null end)
    /count(distinct ec.commit) as Monday_prob
, 1.0*count(distinct case when extract(DAYOFWEEK from date(ec.commit_timestamp))= 3 then ec.commit else null end)
    /count(distinct ec.commit) as Tuesday_prob
, 1.0*count(distinct case when extract(DAYOFWEEK from date(ec.commit_timestamp))= 4 then ec.commit else null end)
    /count(distinct ec.commit) as Wednesday_prob
, 1.0*count(distinct case when extract(DAYOFWEEK from date(ec.commit_timestamp))= 5 then ec.commit else null end)
    /count(distinct ec.commit) as Thursday_prob
, 1.0*count(distinct case when extract(DAYOFWEEK from date(ec.commit_timestamp))= 6 then ec.commit else null end)
    /count(distinct ec.commit) as Friday_prob
, 1.0*count(distinct case when extract(DAYOFWEEK from date(ec.commit_timestamp))= 7 then ec.commit else null end)
    /count(distinct ec.commit) as Saturday_prob
, 0.0 as days_entropy
, 0.0 as hour_entropy


, 0.0 as avg_file_size
, 0.0 as capped_avg_file_size
, 0.0 as avg_code_file_size
, 0.0 as capped_avg_code_file_size

, 0.0 as sum_file_size
, 0.0 as capped_sum_file_size
, 0.0 as sum_code_file_size
, 0.0 as capped_sum_code_file_size

, 0.0 as prev_touch_ago
, 0.0 as bug_prev_touch_ago

,  avg(if(same_date_as_prev, duration, null)) as same_day_duration_avg

# Abstraction
, if (sum(if(ec.is_corrective, 1,0 )) > 0
, 1.0*sum(if( code_non_test_files = 1 and ec.is_corrective, 1,0 ))/sum(if(ec.is_corrective, 1,0 ))
, null)
as one_file_fix_rate
, if (sum(if(ec.is_refactor, 1,0 )) > 0
, 1.0*sum(if( code_non_test_files = 1 and ec.is_refactor, 1,0 ))/sum(if(ec.is_refactor, 1,0 ))
, null)
as one_file_refactor_rate

, if(sum(if((code_non_test_files = 1 and code_files = 2 ) or code_files=1, 1,0 )) > 0
    , 1.0*sum(if(code_files=1, 1,0 ))/sum(if((code_non_test_files = 1 and code_files = 2 ) or code_files=1, 1,0 ))
    , null)
as test_usage_rate

, if(sum(if(ec.is_refactor and ((code_non_test_files = 1 and code_files = 2 ) or code_files=1), 1,0 )) > 0
    , 1.0*sum(if(ec.is_refactor and code_files=1, 1,0 ))
        /sum(if(ec.is_refactor and ((code_non_test_files = 1 and code_files = 2 ) or code_files=1), 1,0 ))
    , null)
as test_usage_in_refactor_rate

, if(sum(if(ec.is_refactor, 1,0 )) > 0
    , 1.0*sum(if( code_non_test_files = code_files and ec.is_refactor, 1,0 ))/sum(if(ec.is_refactor, 1,0 ))
    , null )
as no_test_refactor_rate
, sum(if(general.bq_abstraction(lower(message)) > 0, 1, 0)) as textual_abstraction_commits
, 1.0*sum(if(general.bq_abstraction(lower(message)) > 0, 1, 0))/count(*) as textual_abstraction_commits_rate

, -1.0 as testing_involved_prob
, -1.0 as corrective_testing_involved_prob
, -1.0 as refactor_testing_involved_prob
, null as abs_content_ratio

, -1.0 as minutes_to_revert
, -1.0 as reverted_ratio

, count(distinct if(is_performance, ec.commit, null))/count(distinct ec.commit) as performance_rate
, count(distinct if(is_security, ec.commit, null))/count(distinct ec.commit) as security_rate

# Duration in project
# Join time relative to project creation
# Number of commits in project
# Percentage of self-commits to the entire project commits
# Number of files edited in project
# Number of files created in project
# Avg. CCP of files created in project
# Number of contributed repositories of the developer
# Percent of effective refactors
# Use of tests (in general, in corrective commits, in adaptive commits)
# Commit message linguistic characteristic (e.g., message length)
# Days of week activity (e.g., number of days, working days was weekend)
# Working hours (e.g., number of distinct hours).
# Commits/distinct commits variation
# Developer Reputation Estimator (DRE)
from
general.survey_enhanced_commits as ec
#where
#commit_timestamp >= TIMESTAMP_ADD(current_timestamp(), INTERVAL -365 DAY)
group by
repo_name
, author_email
;


update general.survey_developer_per_repo_profile
set days_entropy = - (case when Sunday_prob > 0 then Sunday_prob*log(Sunday_prob,2) else 0 end
                        + case when Monday_prob > 0 then Monday_prob*log(Monday_prob,2) else 0 end
                        + case when Tuesday_prob > 0 then Tuesday_prob*log(Tuesday_prob,2) else 0 end
                        + case when Wednesday_prob > 0 then Wednesday_prob*log(Wednesday_prob,2) else 0 end
                        + case when Thursday_prob > 0 then Thursday_prob*log(Thursday_prob,2) else 0 end
                        + case when Friday_prob > 0 then Friday_prob*log(Friday_prob,2) else 0 end
                        + case when Saturday_prob > 0 then Saturday_prob*log(Saturday_prob,2) else 0 end
)
, prev_touch_ago = null
, bug_prev_touch_ago = null

where true
;

select
date_DIFF(date(max_commit_timestamp), answer_day, day) > 3*30 as stay
, count(*) as count
from
general.survey_profiles_and_repos as pr
join
general.survey_developer_per_repo_profile as dr
on
pr.correct_repo_name = dr.repo_name
and
pr.corrected_profile = dr.author_name
where
answer_day < date_ADD(CURRENT_date(), INTERVAL -90 DAY)
group by
date_DIFF(date(max_commit_timestamp), answer_day, day) > 3*30
;

drop table if exists general.survey_matching_developer_per_repo_profile;

create table
general.survey_matching_developer_per_repo_profile
as
select
dr.*
from
general.survey_profiles_and_repos as pr
join
general.survey_developer_per_repo_profile as dr
on
pr.correct_repo_name = dr.repo_name
and
pr.corrected_profile = dr.author_name
;