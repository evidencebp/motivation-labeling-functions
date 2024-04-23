# into developers_by_repo_developer_group.csv
select
case
when authors = 1 then 'Single'
when authors <= 10 then 'Small'
when authors <= 100 then 'Medium'
else  'Large'
end as developer_group
, count(distinct r.repo_name) as projects
, count(distinct dr.author_email) as unique_authors
, sum(r.authors) as all_authors
from
general.repo_properties as r
join
general.developer_per_repo_profile as dr
on
r.repo_name = dr.repo_name
where
dr.commits >= 12
group by
developer_group
order by
min(authors)
;

select
count(distinct dr.author_email) as unique_authors
from
general.developer_per_repo_profile as dr
where
commits >= 12
;