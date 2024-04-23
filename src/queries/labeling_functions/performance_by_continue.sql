# into performance_by_continue.csv
SELECT
if(status='Continue', True,False) as f
, count(distinct author_email) as developers
, count(distinct repo_name) as repos
, count(*) as cnt

, avg(if(status='Continue'
          , 1
          , 0)) as continued_avg
, avg(refactor_mle) as refactor_mle
, avg(message_length_avg) as message_length_avg
, avg(commit_hours) as commit_hours

, avg(owned_repository) as owned_repository
, avg(commits) as commits
, avg(files_edited) as files_edited
, avg(ccp) as ccp
, avg(same_date_duration_avg) as same_date_duration_avg
, avg(commit_period) as commit_period
, avg(commit_days) as commit_days
FROM
general.developer_motivation_profile
group by f
order by f
;