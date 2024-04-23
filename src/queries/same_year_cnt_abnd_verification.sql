select
avg(abnd.commits/cnt.commits) as commits_ratio
, avg(if(cnt.commit_period > 0, abnd.commit_period/cnt.commit_period, null)) as commit_period_ratio
from
general.developer_motivation_profile as cnt
join
general.developer_motivation_profile as abnd
on
cnt.author_email = abnd.author_email
and
cnt.year = abnd.year
where
cnt.status = 'Continue'
and
abnd.status = 'Abandoned'
and
cnt.commits >= 12 and cnt.commits < 1000
and
abnd.commits >= 12 and abnd.commits < 1000
;
