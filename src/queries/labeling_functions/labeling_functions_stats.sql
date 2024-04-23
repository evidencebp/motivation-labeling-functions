# into labeling_functions_stats.csv
SELECT  count(distinct author_email) as developers
, count(distinct repo_name) as repos
, count(*) as cnt
, avg(if(status='Continue'
          , 1
          , 0)) as continue_prob
, avg(refactor_mle) as refactor_mle
, avg(message_length_avg) as message_length_avg
, avg(commit_hours) as commit_hours
, avg(if(refactor_mle > 0.20, 1,0)) as high_refactor
, avg(if(message_length_avg > 84, 1,0)) as high_message_length_avg
, avg(if(commit_hours > 17, 1,0)) as high_commit_hours
FROM general.developer_motivation_profile
;


# into labeling_functions_stats_by_continued.csv
SELECT  if(status='Continue'
          , true
          , false) as Continued
, count(distinct author_email) as developers
, count(distinct repo_name) as repos
, count(*) as cnt
, avg(refactor_mle) as refactor_mle
, avg(message_length_avg) as message_length_avg
, avg(commit_hours) as commit_hours
, avg(if(refactor_mle > 0.20, 1,0)) as high_refactor
, avg(if(message_length_avg > 84, 1,0)) as high_message_length_avg
, avg(if(commit_hours > 17, 1,0)) as high_commit_hours
FROM general.developer_motivation_profile
group by Continued
order by Continued
;


# into labeling_functions_stats_by_age_by_continued.csv
SELECT  case
when extract(year from r.min_commit_time) < 2008 then 'Pre GitHub'
when 2008 <= extract(year from r.min_commit_time)  and extract(year from r.min_commit_time)  <= 2013 then 'Old'
when 2014 <= extract(year from r.min_commit_time)  and extract(year from r.min_commit_time)  <= 2016 then 'Medium'
when 2016 < extract(year from r.min_commit_time)  then 'New'
else  'Error' end as f
, if(status='Continue'
          , true
          , false) as Continued
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
group by f, Continued
order by f, Continued
;


# into labeling_functions_stats_by_language_by_continued.csv
SELECT  r.language_code as f
, if(status='Continue'
          , true
          , false) as Continued
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
group by f, Continued
order by f, Continued
;


# into labeling_functions_stats_by_company_by_continued.csv
SELECT  r.Is_Company as f
, if(status='Continue'
          , true
          , false) as Continued
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
group by f, Continued
order by f, Continued
;


# into labeling_functions_stats_by_dev_group_by_continued.csv
SELECT  case
when r.authors = 1 then 'Single'
when r.authors <= 10 then 'Small'
when r.authors <= 100 then 'Medium'
else  'Large'
end
as f
, if(status='Continue'
          , true
          , false) as Continued
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
group by f, Continued
order by f, Continued
;


# into labeling_functions_stats_by_popularity_group_by_continued.csv
SELECT
case
when r.stars <= 8 then 'Low'
when r.stars <= 422 then 'Medium'
when r.stars < 5028 then 'High'
else 'Extraordinary'
end
as f
, if(status='Continue'
          , true
          , false) as Continued
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
group by f, Continued
order by f, Continued
;