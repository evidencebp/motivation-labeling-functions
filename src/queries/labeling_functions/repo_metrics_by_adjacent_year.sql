# into repo_metrics_by_adjacent_years.csv
select
count(*) as cnt
, count(distinct cur.repo_name) as repos

# Labeling functions
, avg(if(cur.message_length_avg >= 84, 1, 0) - if(prev.message_length_avg >= 84, 1, 0)) as high_message_length
, avg(if(cur.refactor_mle >= 0.2, 1, 0) - if(prev.refactor_mle >= 0.2, 1, 0)) as high_refactor
, avg(if(cur.commit_hours >= 18, 1, 0) - if(prev.commit_hours >= 18, 1, 0)) as high_hours

, avg(cur.message_length_avg - prev.message_length_avg) as message_length
, avg(cur.refactor_mle - prev.refactor_mle) as refactor
, avg(cur.commit_hours - prev.commit_hours) as hours

, avg(cur.commits - prev.commits) as commits
, avg(cur.files_edited - prev.files_edited) as files_edited
, avg(cur.ccp - prev.ccp) as ccp
, avg(cur.same_date_duration_avg - prev.same_date_duration_avg) as same_date_duration_avg
, avg(cur.commit_period - prev.commit_period) as commit_period
, avg(cur.commit_days - prev.commit_days) as commit_days

from
general.repo_properties_per_year as cur
join
general.repo_properties_per_year as prev
on
cur.repo_name = prev.repo_name
and
cur.year = prev.year + 1
;
