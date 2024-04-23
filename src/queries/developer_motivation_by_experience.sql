# into developer_motivation_by_experience.csv
select
first_year.year
, count(*) as cases
, count(distinct d.author_email) as developers

, avg(cur.message_length_avg ) as cur_message_length_avg
, avg(first_year.message_length_avg ) as first_message_length_avg
, avg(cur.message_length_avg - first_year.message_length_avg ) as message_length_avg_delta

, avg(if(cur.message_length_avg >= 84, 1, 0) ) as cur_high_message_length_avg
, avg(if(first_year.message_length_avg >= 84, 1, 0) ) as first_high_message_length_avg
, avg(if(cur.message_length_avg >= 84, 1, 0) - if(first_year.message_length_avg >= 84, 1, 0) ) as high_message_length_avg_delta

, avg(cur.refactor_mle ) as cur_refactor_mle
, avg(first_year.refactor_mle ) as first_refactor_mle
, avg(cur.refactor_mle - first_year.refactor_mle ) as refactor_mle_delta

, avg(if(cur.refactor_mle >= 0.2, 1, 0) ) as cur_high_refactor_mle
, avg(if(first_year.refactor_mle >= 0.2, 1, 0) ) as first_high_refactor_mle
, avg(if(cur.refactor_mle >= 0.2, 1, 0) - if(first_year.refactor_mle >= 0.2, 1, 0) ) as high_refactor_mle_delta

, avg(cur.commit_hours ) as cur_commit_hours
, avg(first_year.commit_hours ) as first_commit_hours
, avg(cur.commit_hours - first_year.commit_hours ) as commit_hours_delta

, avg(if(cur.commit_hours >= 18, 1, 0) ) as cur_high_commit_hours
, avg(if(first_year.commit_hours >= 18, 1, 0) ) as first_high_commit_hours
, avg(if(cur.commit_hours >= 18, 1, 0) - if(first_year.commit_hours >= 18, 1, 0) ) as high_commit_hours_delta

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


# into retention_by_experience.csv
select
years_in_project
, count(distinct repo_name) as repos
, count(distinct author_email) as developers
, count(*) as cases
from
(
select
repo_name
, author_email
, extract(year from d.max_commit_timestamp)- extract(year from d.min_commit_timestamp)as years_in_project
from
general.developer_per_repo_profile as d
where
extract(year from d.max_commit_timestamp) <= 2021
) as inSql
group by
years_in_project
order by
years_in_project
;
