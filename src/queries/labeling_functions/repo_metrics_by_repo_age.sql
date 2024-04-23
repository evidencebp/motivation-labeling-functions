# into repo_metrics_by_age.csv
select
rpy.year - extract( year from r.min_commit_time)
as f #age
, count(*) as cnt
, count(distinct r.repo_name) as repos

# Labeling functions
, avg(if(rpy.message_length_avg >= 84, 1, 0)) as high_message_length
, avg(if(rpy.refactor_mle >= 0.2, 1, 0)) as high_refactor
, avg(if(rpy.commit_hours >= 18, 1, 0)) as high_hours

, avg(rpy.message_length_avg) as message_length
, avg(rpy.refactor_mle) as refactor
, avg(rpy.commit_hours) as hours

#, avg(owned_repository) as owned_repository
, avg(rpy.commits) as commits
, avg(rpy.files_edited) as files_edited
, avg(rpy.ccp) as ccp
, avg(rpy.same_date_duration_avg) as same_date_duration_avg
, avg(rpy.commit_period) as commit_period
, avg(rpy.commit_days) as commit_days

from
general.repo_properties as r
join
general.repo_properties_per_year as rpy
on
r.repo_name = rpy.repo_name
group by f
order by f
;
