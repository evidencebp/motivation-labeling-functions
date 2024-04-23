# The aggregation is to handle multiple email domain per company
drop table if exists general.preference_stability_pairs;

create table
general.preference_stability_pairs
as
select
a.author_email as author_email
, a.year as year
, a.repo_name as a_repo
, b.repo_name as b_repo

# Controls

, max(case
when extract(year from a_r.min_commit_time) < 2008 then 'Pre GitHub'
when 2008 <= extract(year from a_r.min_commit_time)  and extract(year from a_r.min_commit_time)  <= 2013 then 'Old'
when 2014 <= extract(year from a_r.min_commit_time)  and extract(year from a_r.min_commit_time)  <= 2016 then 'Medium'
when 2016 < extract(year from a_r.min_commit_time)  then 'New'
else  'Error' end) as a_age_group
, max(a_r.language_code) as a_language_code
, max(a_r.Is_Company) as a_Is_Company
, max(case
when a_r.authors = 1 then 'Single'
when a_r.authors <= 10 then 'Small'
when a_r.authors <= 100 then 'Medium'
else  'Large'
end)  as a_dev_group
, max(case
when a_r.stars <= 8 then 'Low'
when a_r.stars <= 422 then 'Medium'
when a_r.stars < 5028 then 'High'
else 'Extraordinary'
end)
 as a_popularity_group

, max(case
when extract(year from b_r.min_commit_time) < 2008 then 'Pre GitHub'
when 2008 <= extract(year from b_r.min_commit_time)  and extract(year from b_r.min_commit_time)  <= 2013 then 'Old'
when 2014 <= extract(year from b_r.min_commit_time)  and extract(year from b_r.min_commit_time)  <= 2016 then 'Medium'
when 2016 < extract(year from b_r.min_commit_time)  then 'New'
else  'Error' end) as b_age_group
, max(b_r.language_code) as b_language_code
, max(b_r.Is_Company) as b_Is_Company
, max(case
when b_r.authors = 1 then 'Single'
when b_r.authors <= 10 then 'Small'
when b_r.authors <= 100 then 'Medium'
else  'Large'
end)  as b_dev_group
, max(case
when b_r.stars <= 8 then 'Low'
when b_r.stars <= 422 then 'Medium'
when b_r.stars < 5028 then 'High'
else 'Extraordinary'
end)
 as b_popularity_group


# preferences
, max(case
when a_rl.license in ('agpl-3.0' #'GNU Affero General Public License v3.0'
                    , 'gpl-2.0' # 'GNU General Public License v2.0'
                    , 'gpl-3.0' # 'GNU General Public License v3.0'
                    ) then 'Highly Open'
when a_rl.license in ('lgpl-2.1' #'GNU Lesser General Public License v2.1'
                , 'lgpl-3.0' #'GNU Lesser General Public License v3.0'
                ) then 'Open'
when a_rl.license in ('mit' #'MIT License'
            )  then 'Closed'
else 'Other'
end) as a_license_group
, max(case
when b_rl.license in ('agpl-3.0' #'GNU Affero General Public License v3.0'
                    , 'gpl-2.0' # 'GNU General Public License v2.0'
                    , 'gpl-3.0' # 'GNU General Public License v3.0'
                    ) then 'Highly Open'
when b_rl.license in ('lgpl-2.1' #'GNU Lesser General Public License v2.1'
                , 'lgpl-3.0' #'GNU Lesser General Public License v3.0'
                ) then 'Open'
when b_rl.license in ('mit' #'MIT License'
            )  then 'Closed'
else 'Other'
end) as b_license_group

, max(case
  when a_cd.user is null then null
  when a.author_email_domain = a_cd.author_email_domain and a_cd.is_user_domain =1 then True
  else FALSE
end) as a_is_employee

, max(case
  when b_cd.user is null then null
  when b.author_email_domain = b_cd.author_email_domain and b_cd.is_user_domain = 1 then True
  else FALSE
end) as b_is_employee


FROM
general.developer_motivation_profile as a
join
bigquery-public-data.github_repos.licenses as a_rl
on
a.repo_name = a_rl.repo_name
join
general.repo_properties as a_r
on
a.repo_name = a_r.repo_name
left join
general.companies_domains as a_cd
on
left(a_r.repo_name, instr(a_r.repo_name, '/') -1) = a_cd.user
join
general.developer_motivation_profile as b
on
a.author_email = b.author_email
and
a.year = b.year
join
bigquery-public-data.github_repos.licenses as b_rl
on
b.repo_name = b_rl.repo_name
join
general.repo_properties as b_r
on
b.repo_name = b_r.repo_name
left join
general.companies_domains as b_cd
on
left(b_r.repo_name, instr(b_r.repo_name, '/') -1) = b_cd.user
where
a.repo_name != b.repo_name
group by
author_email
, year
, a_repo
, b_repo
;

drop table if exists general.preference_stability_pairs_stats;

create table
general.preference_stability_pairs_stats
as
select
a_dev_group
, a_popularity_group
, a_is_employee
, a_license_group

, a_age_group
, a_language_code
, a_Is_Company

, b_dev_group
, b_popularity_group
, b_is_employee
, b_license_group

, b_age_group
, b_language_code
, b_Is_Company

, count(*) as cases
, count(distinct author_email) as developers
from
general.preference_stability_pairs
group by
a_dev_group
, a_popularity_group
, a_is_employee
, a_license_group

, a_age_group
, a_language_code
, a_Is_Company

, b_dev_group
, b_popularity_group
, b_is_employee
, b_license_group

, b_age_group
, b_language_code
, b_Is_Company
;

drop table if exists general.preference_stability_pairs;
drop table if exists general.preference_stability_pairs_stats;
