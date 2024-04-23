
# into repo_metrics.csv
select
avg(length(message)) as message_length
, avg(if(is_refactor, 1,0)) as refactor
, count(distinct EXTRACT(HOUR FROM commit_timestamp )) as hours
, count(*) as cnt
, count(distinct author_email) as developers
from
general.enhanced_commits as ec
;


# into repo_metrics_by_hour.csv
select
EXTRACT(HOUR FROM commit_timestamp )
as f # hour

, avg(length(message)) as message_length
, avg(if(is_refactor, 1,0)) as refactor
, count(distinct EXTRACT(HOUR FROM commit_timestamp )) as hours
, count(*) as cnt
, count(distinct author_email) as developers

from
general.enhanced_commits as ec
group by f
order by f
;

# into repo_metrics_by_day_of_week.csv
select
EXTRACT(DAYOFWEEK FROM commit_timestamp )
as f # hour

, avg(length(message)) as message_length
, avg(if(is_refactor, 1,0)) as refactor
, count(distinct EXTRACT(HOUR FROM commit_timestamp )) as hours
, count(*) as cnt
, count(distinct author_email) as developers

from
general.enhanced_commits as ec
group by f
order by f
;

# Personal

# into repo_metrics_by_person.csv
select
avg(message_length) as message_length
, avg(refactor) as refactor
, avg(hours) as hours
, avg(cnt) as cnt
, count(distinct author_email) as developers

from
(
select
author_email
, avg(length(message)) as message_length
, avg(if(is_refactor, 1,0)) as refactor
, count(distinct EXTRACT(HOUR FROM commit_timestamp )) as hours
, count(*) as cnt
from
general.enhanced_commits as ec
group by author_email
having count(*) > 10
order by author_email
) as inSql
;


# into repo_metrics_by_day_of_hour_by_person.csv
select
 f # hour
, avg(message_length) as message_length
, avg(refactor) as refactor
, avg(hours) as hours
, avg(cnt) as cnt
, count(distinct author_email) as developers

from
(
select
author_email
, EXTRACT(HOUR FROM commit_timestamp )
as f # hour
, avg(length(message)) as message_length
, avg(if(is_refactor, 1,0)) as refactor
, count(distinct EXTRACT(HOUR FROM commit_timestamp )) as hours
, count(*) as cnt

from
general.enhanced_commits as ec
group by author_email, f
having count(*) > 10
order by author_email, f
) as inSql
group by f
order by f
;

# into repo_metrics_by_day_of_week_by_person.csv
select
 f # DAYOFWEEK
, avg(message_length) as message_length
, avg(refactor) as refactor
, avg(hours) as hours
, avg(cnt) as cnt
, count(distinct author_email) as developers
from
(
select
author_email
, EXTRACT(DAYOFWEEK FROM commit_timestamp )
as f # DAYOFWEEK
, avg(length(message)) as message_length
, avg(if(is_refactor, 1,0)) as refactor
, count(distinct EXTRACT(HOUR FROM commit_timestamp )) as hours
, count(*) as cnt

from
general.enhanced_commits as ec
group by author_email, f
having count(*) > 10
order by author_email, f
) as inSql
group by f
order by f
;

select
right(string(commit_timestamp), 3) as f
, count(*)
from `hotspots-readability.general.enhanced_commits`
group by f
order by count(*) desc
;

SELECT author.tz_offset as f
, count(*)
FROM `bigquery-public-data.github_repos.commits`
group by f
order by f;


SELECT ec.commit, commit_timestamp, committer
FROM `bigquery-public-data.github_repos.commits` as c
join
`hotspots-readability.general.enhanced_commits` as ec
on
c.commit = ec.commit
where committer.tz_offset = 120
limit 1000
;