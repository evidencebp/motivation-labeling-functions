# into developer_motivation_per_year_per_repo.csv


drop table if exists general.developer_motivation_per_year_per_repo;

create table
general.developer_motivation_per_year_per_repo
as
SELECT
# Keys
d.repo_name
, d.author_email
, d.year

# Labeling functions
, d.message_length_avg
, d.refactor_mle
, d.commit_hours

# Controls
, case
when extract(year from r.min_commit_time) < 2008 then 'Pre GitHub'
when 2008 <= extract(year from r.min_commit_time)  and extract(year from r.min_commit_time)  <= 2013 then 'Old'
when 2014 <= extract(year from r.min_commit_time)  and extract(year from r.min_commit_time)  <= 2016 then 'Medium'
when 2016 < extract(year from r.min_commit_time)  then 'New'
else  'Error' end as age_group
, r.language_code
, r.Is_Company
, case
when r.authors = 1 then 'Single'
when r.authors <= 10 then 'Small'
when r.authors <= 100 then 'Medium'
else  'Large'
end  as dev_group
, case
when r.stars <= 8 then 'Low'
when r.stars <= 422 then 'Medium'
when r.stars < 5028 then 'High'
else 'Extraordinary'
end
 as popularity_group
FROM
general.developer_motivation_profile as d
join
general.repo_properties as r
on
d.repo_name = r.repo_name

;