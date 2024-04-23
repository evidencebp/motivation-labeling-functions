
# Recognition

# into labeling_functions_stats_by_popularity_group.csv
SELECT
case
when r.stars <= 8 then 'Low'
when r.stars <= 422 then 'Medium'
when r.stars < 5028 then 'High'
else 'Extraordinary'
end
as f
, avg(if(status='Continue'
          , 1
          , 0)) as retention
, count(distinct d.author_email) as developers
, count(distinct r.repo_name) as repos
, count(*) as cnt
, avg(d.refactor_mle) as refactor_mle
, avg(d.message_length_avg) as message_length_avg
, avg(d.commit_hours) as commit_hours
, avg(if(d.refactor_mle > 0.20, 1,0)) as high_refactor
, avg(if(d.message_length_avg > 84, 1,0)) as high_message_length_avg
, avg(if(d.commit_hours > 17, 1,0)) as high_commit_hours
FROM general.developer_motivation_profile as d
join
general.repo_properties as r
on
d.repo_name = r.repo_name
group by f
order by f
;

# Community

# into labeling_functions_stats_by_dev_group.csv

SELECT
case
when r.authors = 1 then 'Single'
when r.authors <= 10 then 'Small'
when r.authors <= 100 then 'Medium'
else  'Large'
end
as f
, avg(if(status='Continue'
          , 1
          , 0)) as retention
, count(distinct d.author_email) as developers
, count(distinct r.repo_name) as repos
, count(*) as cnt
, avg(d.refactor_mle) as refactor_mle
, avg(d.message_length_avg) as message_length_avg
, avg(d.commit_hours) as commit_hours
, avg(if(d.refactor_mle > 0.20, 1,0)) as high_refactor
, avg(if(d.message_length_avg > 84, 1,0)) as high_message_length_avg
, avg(if(d.commit_hours > 17, 1,0)) as high_commit_hours
FROM general.developer_motivation_profile as d
join
general.repo_properties as r
on
d.repo_name = r.repo_name
group by f
order by f
;


# Ideology

# into labeling_functions_stats_by_ideology.csv

SELECT
case
when license in ('agpl-3.0' #'GNU Affero General Public License v3.0'
                    , 'gpl-2.0' # 'GNU General Public License v2.0'
                    , 'gpl-3.0' # 'GNU General Public License v3.0'
                    ) then 'Highly Open'
when license in ('lgpl-2.1' #'GNU Lesser General Public License v2.1'
                , 'lgpl-3.0' #'GNU Lesser General Public License v3.0'
                ) then 'Open'
when license in ('mit' #'MIT License'
            )  then 'Closed'
else 'Other'
end
as f
, avg(if(status='Continue'
          , 1
          , 0)) as retention
, count(distinct d.author_email) as developers
, count(distinct r.repo_name) as repos
, count(*) as cnt
, avg(d.refactor_mle) as refactor_mle
, avg(d.message_length_avg) as message_length_avg
, avg(d.commit_hours) as commit_hours
, avg(if(d.refactor_mle > 0.20, 1,0)) as high_refactor
, avg(if(d.message_length_avg > 84, 1,0)) as high_message_length_avg
, avg(if(d.commit_hours > 17, 1,0)) as high_commit_hours
FROM general.developer_motivation_profile as d
join
general.repo_properties as r
on
d.repo_name = r.repo_name
join
bigquery-public-data.github_repos.licenses as rl
on
r.repo_name = rl.repo_name
group by f
order by f
;

# Employment
# into labeling_functions_stats_by_employment.csv

SELECT
cd.author_email_domain is not null
as f
, avg(if(status='Continue'
          , 1
          , 0)) as retention
, count(distinct d.author_email) as developers
, count(distinct d.repo_name) as repos
, count(*) as cnt
, avg(d.refactor_mle) as refactor_mle
, avg(d.message_length_avg) as message_length_avg
, avg(d.commit_hours) as commit_hours
, avg(if(d.refactor_mle > 0.20, 1,0)) as high_refactor
, avg(if(d.message_length_avg > 84, 1,0)) as high_message_length_avg
, avg(if(d.commit_hours > 17, 1,0)) as high_commit_hours
FROM general.developer_motivation_profile as d
left join
general.companies_domains as cd
on
regexp_contains(d.repo_name, concat('^', cd.user, r'/'))
and
is_user_domain = 1
and
regexp_contains( d.author_email
                    , concat(cd.author_email_domain, r'$'))
group by f
order by f
;