drop table if exists general.adjacent_years_twins_pairs;

create table
general.adjacent_years_twins_pairs
as
select
cont.author_email as author_email
, cont.year as year
, cont.repo_name as cont_repo
, no_cont.repo_name as no_cont_repo
FROM
general.developer_motivation_profile as cont
join
general.developer_motivation_profile as no_cont
on
cont.author_email = no_cont.author_email
and
cont.year +1 = no_cont.year
and
cont.repo_name = no_cont.repo_name
where
if(cont.status='Continue'
          , true
          , false)
and
not if(no_cont.status='Continue'
          , true
          , false)
;

# into adjacent_years_twins.csv
SELECT
count(distinct cont.author_email) as developers
, count(*) as cnt
, avg(if(cont.message_length_avg>= no_cont.message_length_avg, 1,0)) as message_length_avg_better
, avg(if(cont.refactor_mle>= no_cont.refactor_mle, 1,0)) as refactor_mle_avg_better
, avg(if(cont.refactor_mle=0 no_cont.refactor_mle=0, null
 ,if(cont.refactor_mle>= no_cont.refactor_mle, 1,0))) as refactor_mle_avg_better_no_zeros
, avg(if(cont.commit_hours>= no_cont.commit_hours, 1,0)) as commit_hours_better
, avg(if(cont.message_length_avg = no_cont.message_length_avg, 1,0)) as message_length_avg_same
, avg(if(cont.refactor_mle = no_cont.refactor_mle, 1,0)) as refactor_mle_avg_same
, avg(if(cont.commit_hours = no_cont.commit_hours, 1,0)) as commit_hours_same
FROM
general.developer_motivation_profile as cont
join
general.developer_motivation_profile as no_cont
on
cont.author_email = no_cont.author_email
and
cont.year +1 = no_cont.year
and
cont.repo_name = no_cont.repo_name
where
if(cont.status='Continue'
          , true
          , false)
and
not if(no_cont.status='Continue'
          , true
          , false)
;


# into adjacent_years_twins_by_age.csv
SELECT
case
when extract(year from cont_r.min_commit_time) < 2008 then 'Pre GitHub'
when 2008 <= extract(year from cont_r.min_commit_time)  and extract(year from cont_r.min_commit_time)  <= 2013 then 'Old'
when 2014 <= extract(year from cont_r.min_commit_time)  and extract(year from cont_r.min_commit_time)  <= 2016 then 'Medium'
when 2016 < extract(year from cont_r.min_commit_time)  then 'New'
else  'Error' end
as f
, count(distinct cont.author_email) as developers
, count(*) as cnt
, avg(if(cont.message_length_avg>= no_cont.message_length_avg, 1,0)) as message_length_avg_better
, avg(if(cont.refactor_mle>= no_cont.refactor_mle, 1,0)) as refactor_mle_avg_better
, avg(if(cont.commit_hours>= no_cont.commit_hours, 1,0)) as commit_hours_better
, avg(if(cont.message_length_avg = no_cont.message_length_avg, 1,0)) as message_length_avg_same
, avg(if(cont.refactor_mle = no_cont.refactor_mle, 1,0)) as refactor_mle_avg_same
, avg(if(cont.commit_hours = no_cont.commit_hours, 1,0)) as commit_hours_same
FROM
general.developer_motivation_profile as cont
join
general.repo_properties as cont_r
on
cont.repo_name = cont_r.repo_name
join
general.developer_motivation_profile as no_cont
on
cont.author_email = no_cont.author_email
and
cont.year +1 = no_cont.year
and
cont.repo_name = no_cont.repo_name
join
general.repo_properties as no_cont_r
on
no_cont.repo_name = no_cont_r.repo_name
where
if(cont.status='Continue'
          , true
          , false)
and
not if(no_cont.status='Continue'
          , true
          , false)
and
case
when extract(year from cont_r.min_commit_time) < 2008 then 'Pre GitHub'
when 2008 <= extract(year from cont_r.min_commit_time)  and extract(year from cont_r.min_commit_time)  <= 2013 then 'Old'
when 2014 <= extract(year from cont_r.min_commit_time)  and extract(year from cont_r.min_commit_time)  <= 2016 then 'Medium'
when 2016 < extract(year from cont_r.min_commit_time)  then 'New'
else  'Error'
end
=
case
when extract(year from no_cont_r.min_commit_time) < 2008 then 'Pre GitHub'
when 2008 <= extract(year from no_cont_r.min_commit_time)  and extract(year from no_cont_r.min_commit_time)  <= 2013 then 'Old'
when 2014 <= extract(year from no_cont_r.min_commit_time)  and extract(year from no_cont_r.min_commit_time)  <= 2016 then 'Medium'
when 2016 < extract(year from no_cont_r.min_commit_time)  then 'New'
else  'Error'
end
group by f
having count(distinct cont.author_email) >= 100
order by f
;


# into adjacent_years_twins_by_language.csv
SELECT
cont_r.language_code
as f
, count(distinct cont.author_email) as developers
, count(*) as cnt
, avg(if(cont.message_length_avg>= no_cont.message_length_avg, 1,0)) as message_length_avg_better
, avg(if(cont.refactor_mle>= no_cont.refactor_mle, 1,0)) as refactor_mle_avg_better
, avg(if(cont.commit_hours>= no_cont.commit_hours, 1,0)) as commit_hours_better
, avg(if(cont.message_length_avg = no_cont.message_length_avg, 1,0)) as message_length_avg_same
, avg(if(cont.refactor_mle = no_cont.refactor_mle, 1,0)) as refactor_mle_avg_same
, avg(if(cont.commit_hours = no_cont.commit_hours, 1,0)) as commit_hours_same
FROM
general.developer_motivation_profile as cont
join
general.repo_properties as cont_r
on
cont.repo_name = cont_r.repo_name
join
general.developer_motivation_profile as no_cont
on
cont.author_email = no_cont.author_email
and
cont.year +1 = no_cont.year
and
cont.repo_name = no_cont.repo_name
join
general.repo_properties as no_cont_r
on
no_cont.repo_name = no_cont_r.repo_name
where
if(cont.status='Continue'
          , true
          , false)
and
not if(no_cont.status='Continue'
          , true
          , false)
and
cont_r.language_code
=
no_cont_r.language_code
group by f
having count(distinct cont.author_email) >= 100
order by f
;

# into adjacent_years_twins_by_is_company.csv
SELECT
cont_r.Is_Company
as f
, count(distinct cont.author_email) as developers
, count(*) as cnt
, avg(if(cont.message_length_avg>= no_cont.message_length_avg, 1,0)) as message_length_avg_better
, avg(if(cont.refactor_mle>= no_cont.refactor_mle, 1,0)) as refactor_mle_avg_better
, avg(if(cont.commit_hours>= no_cont.commit_hours, 1,0)) as commit_hours_better
, avg(if(cont.message_length_avg = no_cont.message_length_avg, 1,0)) as message_length_avg_same
, avg(if(cont.refactor_mle = no_cont.refactor_mle, 1,0)) as refactor_mle_avg_same
, avg(if(cont.commit_hours = no_cont.commit_hours, 1,0)) as commit_hours_same
FROM
general.developer_motivation_profile as cont
join
general.repo_properties as cont_r
on
cont.repo_name = cont_r.repo_name
join
general.developer_motivation_profile as no_cont
on
cont.author_email = no_cont.author_email
and
cont.year +1 = no_cont.year
and
cont.repo_name = no_cont.repo_name
join
general.repo_properties as no_cont_r
on
no_cont.repo_name = no_cont_r.repo_name
where
if(cont.status='Continue'
          , true
          , false)
and
not if(no_cont.status='Continue'
          , true
          , false)
and
cont_r.Is_Company
=
no_cont_r.Is_Company
group by f
having count(distinct cont.author_email) >= 100
order by f
;


# into adjacent_years_twins_by_dev_group.csv
SELECT
case
when cont_r.authors = 1 then 'Single'
when cont_r.authors <= 10 then 'Small'
when cont_r.authors <= 100 then 'Medium'
else  'Large'
end
as f
, count(distinct cont.author_email) as developers
, count(*) as cnt
, avg(if(cont.message_length_avg>= no_cont.message_length_avg, 1,0)) as message_length_avg_better
, avg(if(cont.refactor_mle>= no_cont.refactor_mle, 1,0)) as refactor_mle_avg_better
, avg(if(cont.commit_hours>= no_cont.commit_hours, 1,0)) as commit_hours_better
, avg(if(cont.message_length_avg = no_cont.message_length_avg, 1,0)) as message_length_avg_same
, avg(if(cont.refactor_mle = no_cont.refactor_mle, 1,0)) as refactor_mle_avg_same
, avg(if(cont.commit_hours = no_cont.commit_hours, 1,0)) as commit_hours_same
FROM
general.developer_motivation_profile as cont
join
general.repo_properties as cont_r
on
cont.repo_name = cont_r.repo_name
join
general.developer_motivation_profile as no_cont
on
cont.author_email = no_cont.author_email
and
cont.year +1 = no_cont.year
and
cont.repo_name = no_cont.repo_name
join
general.repo_properties as no_cont_r
on
no_cont.repo_name = no_cont_r.repo_name
where
if(cont.status='Continue'
          , true
          , false)
and
not if(no_cont.status='Continue'
          , true
          , false)
and
case
when cont_r.authors = 1 then 'Single'
when cont_r.authors <= 10 then 'Small'
when cont_r.authors <= 100 then 'Medium'
else  'Large'
end
=
case
when no_cont_r.authors = 1 then 'Single'
when no_cont_r.authors <= 10 then 'Small'
when no_cont_r.authors <= 100 then 'Medium'
else  'Large'
end
group by f
having count(distinct cont.author_email) >= 100
order by f
;

# into adjacent_years_twins_by_popularity_group.csv
SELECT
case
when cont_r.stars <= 8 then 'Low'
when cont_r.stars <= 422 then 'Medium'
when cont_r.stars < 5028 then 'High'
else 'Extraordinary'
end
as f
, count(distinct cont.author_email) as developers
, count(*) as cnt
, avg(if(cont.message_length_avg>= no_cont.message_length_avg, 1,0)) as message_length_avg_better
, avg(if(cont.refactor_mle>= no_cont.refactor_mle, 1,0)) as refactor_mle_avg_better
, avg(if(cont.commit_hours>= no_cont.commit_hours, 1,0)) as commit_hours_better
, avg(if(cont.message_length_avg = no_cont.message_length_avg, 1,0)) as message_length_avg_same
, avg(if(cont.refactor_mle = no_cont.refactor_mle, 1,0)) as refactor_mle_avg_same
, avg(if(cont.commit_hours = no_cont.commit_hours, 1,0)) as commit_hours_same
FROM
general.developer_motivation_profile as cont
join
general.repo_properties as cont_r
on
cont.repo_name = cont_r.repo_name
join
general.developer_motivation_profile as no_cont
on
cont.author_email = no_cont.author_email
and
cont.year +1 = no_cont.year
and
cont.repo_name = no_cont.repo_name
join
general.repo_properties as no_cont_r
on
no_cont.repo_name = no_cont_r.repo_name
where
if(cont.status='Continue'
          , true
          , false)
and
not if(no_cont.status='Continue'
          , true
          , false)
and
case
when cont_r.stars <= 8 then 'Low'
when cont_r.stars <= 422 then 'Medium'
when cont_r.stars < 5028 then 'High'
else 'Extraordinary'
end
=
case
when no_cont_r.stars <= 8 then 'Low'
when no_cont_r.stars <= 422 then 'Medium'
when no_cont_r.stars < 5028 then 'High'
else 'Extraordinary'
end
group by f
having count(distinct cont.author_email) >= 100
order by f
;