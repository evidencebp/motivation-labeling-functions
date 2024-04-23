# into repo_metrics_by_dev_groups.csv
SELECT
case
when cont_r.authors = 1 then 'Single'
when cont_r.authors <= 10 then 'Small'
when cont_r.authors <= 100 then 'Medium'
else  'Large'
end  as dev_group

--,if(d.message_length_avg > 84, True,False) as f
, count(distinct d.author_email) as developers
, count(distinct d.repo_name) as repos
, count(*) as cnt

, avg(if(status='Continue'
          , 1
          , 0)) as continued_avg
, avg(d.refactor_mle) as refactor_mle
, avg(d.message_length_avg) as message_length_avg
, avg(d.commit_hours) as commit_hours

, avg(d.owned_repository) as owned_repository
, avg(d.commits) as commits
, avg(d.files_edited) as files_edited
, avg(d.ccp) as ccp
, avg(d.same_date_duration_avg) as same_date_duration_avg
, avg(d.commit_period) as commit_period
, avg(d.commit_days) as commit_days
FROM
general.developer_motivation_profile as d
join
general.repo_properties as cont_r
on
d.repo_name = cont_r.repo_name

group by dev_group--, f
order by dev_group--, f
;

# into repo_metrics_by_dev_groups_and_long_message.csv
SELECT
case
when cont_r.authors = 1 then 'Single'
when cont_r.authors <= 10 then 'Small'
when cont_r.authors <= 100 then 'Medium'
else  'Large'
end  as dev_group

,if(d.message_length_avg > 84, True,False) as f
, count(distinct d.author_email) as developers
, count(distinct d.repo_name) as repos
, count(*) as cnt

, avg(if(status='Continue'
          , 1
          , 0)) as continued_avg
, avg(d.refactor_mle) as refactor_mle
, avg(d.message_length_avg) as message_length_avg
, avg(d.commit_hours) as commit_hours

, avg(d.owned_repository) as owned_repository
, avg(d.commits) as commits
, avg(d.files_edited) as files_edited
, avg(d.ccp) as ccp
, avg(d.same_date_duration_avg) as same_date_duration_avg
, avg(d.commit_period) as commit_period
, avg(d.commit_days) as commit_days
FROM
general.developer_motivation_profile as d
join
general.repo_properties as cont_r
on
d.repo_name = cont_r.repo_name

group by dev_group, f
order by dev_group, f
;