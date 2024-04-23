# into commits_in_hour.csv
select
commits
,count(*) as commits_in_hour
from
(
select
repo_name
, author_email
, extract(YEAR from commit_timestamp) as year
, extract(HOUR from commit_timestamp) as hour
, count(*) as commits
from
general.enhanced_commits
group by
repo_name
, author_email
, year
, hour
) as inSql
group by
commits
order by
commits
;