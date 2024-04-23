drop table if exists general.performance_per_relative_month;


create table
general.performance_per_relative_month
as
select
dpm.repo_name as repo_name
, dpm.year as year
, dpm.author_email as author_email
, floor(timestamp_diff(dpm.max_commit_timestamp, ec.commit_timestamp, day)/30) as months_from_last_commit
# The above are the keys and the creating of the relative month

# The features bellow are taken from developer properties and should be updated according to them

, max(dpm.author_name) as author_name
, count( distinct dpm.author_name) as names # For safety, see if the email has some names
, substr(dpm.author_email, STRPOS(dpm.author_email ,'@') + 1) as  author_email_domain
, count(distinct dpm.repo_name) as repositories
, count(distinct if(substr(dpm.repo_name, 0, STRPOS(dpm.repo_name ,'/') -1) = dpm.author_name, dpm.repo_name, null)) as owned_repositories
, min(ec.commit_timestamp) as min_commit_timestamp
, max(ec.commit_timestamp) as max_commit_timestamp

, count(distinct commit) as commits
, min(commit) as min_commit
, max(commit) as max_commit

# NOTE - this are not updated for now
, 0 as files_edited
, 0 as files_created
, 0 as files_owned

, 0.0 as files_edited_ccp
, 0.0 as files_created_ccp
, 0.0 as files_owned_ccp

, general.bq_ccp_mle(1.0*count(distinct case when is_corrective  then commit else null end)/count(distinct commit)) as ccp
, general.bq_refactor_mle(1.0*count(distinct case when is_refactor  then commit else null end)/count(distinct commit)) as refactor_mle

, 0.0 as tests_presence
#	\item Percent of effective refactors

# Commit message linguistic characteristic (e.g., message length)
, 1.0*count(distinct if(not REGEXP_CONTAINS(message,'\\n'), commit, null))/ count(distinct commit)
as single_line_message_ratio
, avg(length(message)) as message_length_avg

#	\items Commits/distinct commits variation \cite{8952390} \idan{Consider more ideas from there}
# Developer Reputation Estimator (DRE)
, 1.0*count(*)/count(distinct commit) as duplicated_commits_ratio


# Duration
, avg(case when same_date_as_prev then duration else null end) as same_date_duration_avg
, count(distinct case when same_date_as_prev then commit else null end) as same_date_commits

, TIMESTAMP_DIFF(max(ec.commit_timestamp), min(ec.commit_timestamp), day) as commit_period
, count(distinct date(ec.commit_timestamp)) as commit_days
, 1.0*count(distinct commit)/count(distinct date(ec.commit_timestamp)) as commits_per_day

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

from
general.developer_motivation_profile as dpm
join
general.enhanced_commits as ec
on
dpm.repo_name = ec.repo_name
and
dpm.author_email = ec.author_email
and
dpm.year = extract(year from ec.commit_timestamp)
group by
dpm.repo_name
, dpm.year
, dpm.author_email
, months_from_last_commit
;

update general.performance_per_relative_month
set days_entropy = - (case when Sunday_prob > 0 then Sunday_prob*log(Sunday_prob,2) else 0 end
                        + case when Monday_prob > 0 then Monday_prob*log(Monday_prob,2) else 0 end
                        + case when Tuesday_prob > 0 then Tuesday_prob*log(Tuesday_prob,2) else 0 end
                        + case when Wednesday_prob > 0 then Wednesday_prob*log(Wednesday_prob,2) else 0 end
                        + case when Thursday_prob > 0 then Thursday_prob*log(Thursday_prob,2) else 0 end
                        + case when Friday_prob > 0 then Friday_prob*log(Friday_prob,2) else 0 end
                        + case when Saturday_prob > 0 then Saturday_prob*log(Saturday_prob,2) else 0 end
)
where true
;
