# The python implementation took too much memory.
# Again, BigQuery was much better.

drop table if exists general.popularity_stability;


create table
general.popularity_stability
as
select
case
when fr.stargazers_count <= 8 then 'Low'
when fr.stargazers_count <= 422 then 'Medium'
when fr.stargazers_count < 5028 then 'High'
else 'Extraordinary'
end as first_popularity_group
, case
when sr.stargazers_count <= 8 then 'Low'
when sr.stargazers_count <= 422 then 'Medium'
when sr.stargazers_count < 5028 then 'High'
else 'Extraordinary'
end as second_popularity_group
, count(*) as cases
, 0.0 as prob
from
general.developer_motivation_profile as first
join
general.repos as fr
on
first.repo_name = fr.repo_name
join
general.developer_motivation_profile as second
on
first.author_email = second.author_email
and
first.year = second.year
and
first.repo_name <> second.repo_name
join
general.repos as sr
on
second.repo_name = sr.repo_name
group by
first_popularity_group
, second_popularity_group
order by
first_popularity_group
, second_popularity_group
;

update general.popularity_stability as t
set
prob = cases/total
from
(select sum(cases) as total
from
general.popularity_stability) as aux
where
true
;

# into popularity_stability.csv
select
round(sum(if(first_popularity_group = second_popularity_group,prob, 0.0)),2)
as actual_matching
, round(sum(prob*prob),2) as expected_matching
, round(sum(if(first_popularity_group = second_popularity_group,prob, 0.0))
    /sum(prob*prob) -1,2) as lift
from
general.popularity_stability
;


# into dev_distribution_by_popularity.csv
select
case
when fr.stargazers_count <= 8 then 'Low'
when fr.stargazers_count <= 422 then 'Medium'
when fr.stargazers_count < 5028 then 'High'
else 'Extraordinary'
end as popularity_group
, count(distinct author_email) as developers
, count(distinct author_email)/max(pop.developers) as dev_prob
, count(distinct fr.repo_name) as repos
, count(distinct fr.repo_name)/max(pop.repos) as repo_prob
from
general.developer_motivation_profile as first
join
general.repos as fr
on
first.repo_name = fr.repo_name
join
(
select
count(distinct author_email) as developers
, count(distinct repo_name) as repos
from
general.developer_motivation_profile
) as pop
on
true
group by
popularity_group
order by
min(fr.stargazers_count)
;
