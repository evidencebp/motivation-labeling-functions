drop table if exists general.developer_status;


create table
general.developer_status
as
select 
base.repo_name
, base.year
, base.author_email
, max(case when cont.repo_name is not null then 2
else case when replacement.repo_name is not null then 1 else 0 end end) as status_code
, '' as status
, min(False) as project_continued
from
general.developer_per_repo_profile_per_year as base
left join
general.developer_per_repo_profile_per_year as cont
on
base.repo_name = cont.repo_name
and
base.author_email = cont.author_email
and
base.year +1 = cont.year
left join
general.developer_per_repo_profile_per_year as replacement
on
base.repo_name != replacement.repo_name
and
base.author_email = replacement.author_email
and
base.year +1 = replacement.year
where
base.year >= 2008
and
# 2022 is the last year in which the BQ schema was update
# Without the condition below all 2022 developers will seem not to continue
base.year < 2022
#and
#base.commits >= 50
group by
base.repo_name
, base.year
, base.author_email

;


UPDATE  general.developer_status AS ds
SET status = if(status_code=2, 'Continue', if(status_code=1, 'Abandoned', 'No activity'))
where true
;

UPDATE  general.developer_status AS ds
SET
ds.project_continued = True
FROM general.repo_properties_per_year as ry
WHERE
ds.repo_name =  ry.repo_name
and
ds.year + 1 =  ry.year
;


