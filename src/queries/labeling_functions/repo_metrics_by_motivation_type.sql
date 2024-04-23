# into repo_metrics_by_dev_group.csv
select
case
when r.authors = 1 then 'Single'
when r.authors <= 10 then 'Small'
when r.authors <= 100 then 'Medium'
else  'Large'
end
as f #dev_group
# Labeling functions
, avg(if(message_length_avg >= 84, 1, 0)) as high_message_length
, avg(if(refactor_mle >= 0.2, 1, 0)) as high_refactor
, avg(if(commit_hours >= 18, 1, 0)) as high_hours

, avg(message_length_avg) as message_length
, avg(refactor_mle) as refactor
, avg(commit_hours) as hours

#, avg(owned_repository) as owned_repository
, avg(commits) as commits
, avg(files_edited) as files_edited
, avg(ccp) as ccp
, avg(same_date_duration_avg) as same_date_duration_avg
, avg(commit_period) as commit_period
, avg(commit_days) as commit_days
, avg(retention_prob) as retention_prob
from
general.repo_properties as r
group by f
order by f
;

# into repo_metrics_by_age_group.csv
select
case
when extract(year from r.min_commit_time) < 2008 then 'Pre GitHub'
when 2008 <= extract(year from r.min_commit_time)  and extract(year from r.min_commit_time)  <= 2013 then 'Old'
when 2014 <= extract(year from r.min_commit_time)  and extract(year from r.min_commit_time)  <= 2016 then 'Medium'
when 2016 < extract(year from r.min_commit_time)  then 'New'
else  'Error' end
as  f # age_group
# Labeling functions
, avg(if(message_length_avg >= 84, 1, 0)) as high_message_length
, avg(if(refactor_mle >= 0.2, 1, 0)) as high_refactor
, avg(if(commit_hours >= 18, 1, 0)) as high_hours

, avg(message_length_avg) as message_length
, avg(refactor_mle) as refactor
, avg(commit_hours) as hours

#, avg(owned_repository) as owned_repository
, avg(commits) as commits
, avg(files_edited) as files_edited
, avg(ccp) as ccp
, avg(same_date_duration_avg) as same_date_duration_avg
, avg(commit_period) as commit_period
, avg(commit_days) as commit_days
, avg(retention_prob) as retention_prob

from
general.repo_properties as r
group by f
order by f
;


# into repo_metrics_by_is_company.csv
select
r.Is_Company
as  f # age_group
# Labeling functions
, avg(if(message_length_avg >= 84, 1, 0)) as high_message_length
, avg(if(refactor_mle >= 0.2, 1, 0)) as high_refactor
, avg(if(commit_hours >= 18, 1, 0)) as high_hours

, avg(message_length_avg) as message_length
, avg(refactor_mle) as refactor
, avg(commit_hours) as hours

#, avg(owned_repository) as owned_repository
, avg(commits) as commits
, avg(files_edited) as files_edited
, avg(ccp) as ccp
, avg(same_date_duration_avg) as same_date_duration_avg
, avg(commit_period) as commit_period
, avg(commit_days) as commit_days
, avg(retention_prob) as retention_prob

from
general.repo_properties as r
group by f
order by f
;



# into repo_metrics_by_popularity_group.csv
select
case
when r.stars <= 8 then 'Low'
when r.stars <= 422 then 'Medium'
when r.stars < 5028 then 'High'
else 'Extraordinary'
end
as f # popularity_group
# Labeling functions
, avg(if(message_length_avg >= 84, 1, 0)) as high_message_length
, avg(if(refactor_mle >= 0.2, 1, 0)) as high_refactor
, avg(if(commit_hours >= 18, 1, 0)) as high_hours

, avg(message_length_avg) as message_length
, avg(refactor_mle) as refactor
, avg(commit_hours) as hours

#, avg(owned_repository) as owned_repository
, avg(commits) as commits
, avg(files_edited) as files_edited
, avg(ccp) as ccp
, avg(same_date_duration_avg) as same_date_duration_avg
, avg(commit_period) as commit_period
, avg(commit_days) as commit_days
, avg(retention_prob) as retention_prob

from
general.repo_properties as r
group by f
order by f
;
