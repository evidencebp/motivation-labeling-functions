drop table if exists general.adjacent_years_lf_twins_pairs;

create table
general.adjacent_years_lf_twins_pairs
as
select
a.author_email as author_email
, a.year as year
, a.repo_name as cont_repo
, b.repo_name as no_cont_repo

# Controls

, case
when extract(year from a_r.min_commit_time) < 2008 then 'Pre GitHub'
when 2008 <= extract(year from a_r.min_commit_time)  and extract(year from a_r.min_commit_time)  <= 2013 then 'Old'
when 2014 <= extract(year from a_r.min_commit_time)  and extract(year from a_r.min_commit_time)  <= 2016 then 'Medium'
when 2016 < extract(year from a_r.min_commit_time)  then 'New'
else  'Error' end as a_age_group
, a_r.language_code as a_language_code
, a_r.Is_Company as a_Is_Company
, case
when a_r.authors = 1 then 'Single'
when a_r.authors <= 10 then 'Small'
when a_r.authors <= 100 then 'Medium'
else  'Large'
end  as a_dev_group
, case
when a_r.stars <= 8 then 'Low'
when a_r.stars <= 422 then 'Medium'
when a_r.stars < 5028 then 'High'
else 'Extraordinary'
end
 as a_popularity_group

, case
when extract(year from b_r.min_commit_time) < 2008 then 'Pre GitHub'
when 2008 <= extract(year from b_r.min_commit_time)  and extract(year from b_r.min_commit_time)  <= 2013 then 'Old'
when 2014 <= extract(year from b_r.min_commit_time)  and extract(year from b_r.min_commit_time)  <= 2016 then 'Medium'
when 2016 < extract(year from b_r.min_commit_time)  then 'New'
else  'Error' end as b_age_group
, b_r.language_code as b_language_code
, b_r.Is_Company as b_Is_Company
, case
when b_r.authors = 1 then 'Single'
when b_r.authors <= 10 then 'Small'
when b_r.authors <= 100 then 'Medium'
else  'Large'
end  as b_dev_group
, case
when b_r.stars <= 8 then 'Low'
when b_r.stars <= 422 then 'Medium'
when b_r.stars < 5028 then 'High'
else 'Extraordinary'
end
 as b_popularity_group


# labeling functions
, if(a.message_length_avg>= b.message_length_avg, 1,0) as message_length_avg_better
, if(a.refactor_mle>= b.refactor_mle, 1,0) as refactor_mle_avg_better
, if(a.commit_hours>= b.commit_hours, 1,0) as commit_hours_better
, if(a.message_length_avg = b.message_length_avg, 1,0) as message_length_avg_same
, if(a.refactor_mle = b.refactor_mle, 1,0) as refactor_mle_avg_same
, if(a.commit_hours = b.commit_hours, 1,0) as commit_hours_same

# performance metrics
, if(a.owned_repository >= b.owned_repository, 1,0) as owned_repository_avg_better
, if(a.owned_repository = b.owned_repository, 1,0) as owned_repository_avg_same
, if(a.commits >= b.commits, 1,0) as commits_avg_better
, if(a.files_edited >= b.files_edited, 1,0) as files_edited_avg_better
, if(a.ccp <= b.ccp, 1,0) as ccp_avg_better
, if(a.same_date_duration_avg <= b.same_date_duration_avg, 1,0) as same_date_duration_avg_avg_better
, if(a.commit_period >= b.commit_period, 1,0) as commit_period_avg_better
, if(a.commit_days >= b.commit_days, 1,0) as commit_days_avg_better

FROM
general.developer_motivation_profile as a
join
general.repo_properties as a_r
on
a.repo_name = a_r.repo_name
join
general.developer_motivation_profile as b
on
a.author_email = b.author_email
and
a.year +1 = b.year
join
general.repo_properties as b_r
on
b.repo_name = b_r.repo_name
where
a.repo_name = b.repo_name
;


drop table if exists general.adjacent_years_lf_twins_pairs_stats;

create table
general.adjacent_years_lf_twins_pairs_stats
as
select
count(*) as cases
, count(distinct author_email) as developers

# Controls
#, a_age_group
#, a_language_code
#, a_Is_Company
#, a_dev_group
#, a_popularity_group

#, b_age_group
#, b_language_code
#, b_Is_Company
#, b_dev_group
#, b_popularity_group


# labeling functions
, message_length_avg_better
, refactor_mle_avg_better
, commit_hours_better
, message_length_avg_same
, commit_hours_same

# performance metrics
, owned_repository_avg_better
, files_edited_avg_better
, ccp_avg_better
, same_date_duration_avg_avg_better
, commit_period_avg_better
, commit_days_avg_better

FROM
general.adjacent_years_lf_twins_pairs
group by
# Controls
#a_age_group
#, a_language_code
#, a_Is_Company
#, a_dev_group
#, a_popularity_group

#, b_age_group
#, b_language_code
#, b_Is_Company
#, b_dev_group
#, b_popularity_group


# labeling functions
message_length_avg_better
, refactor_mle_avg_better
, commit_hours_better
, message_length_avg_same
, commit_hours_same

# performance metrics
, owned_repository_avg_better
, files_edited_avg_better
, ccp_avg_better
, same_date_duration_avg_avg_better
, commit_period_avg_better
, commit_days_avg_better
;



drop table if exists general.adjacent_years_lf_twins_pairs_stats_by_age_group;

create table
general.adjacent_years_lf_twins_pairs_stats_by_age_group
as
select
count(*) as cases
, count(distinct author_email) as developers

# Controls
, a_age_group
#, a_language_code
#, a_Is_Company
#, a_dev_group
#, a_popularity_group

#, b_age_group
#, b_language_code
#, b_Is_Company
#, b_dev_group
#, b_popularity_group


# labeling functions
, message_length_avg_better
, refactor_mle_avg_better
, commit_hours_better
, message_length_avg_same
, commit_hours_same

# performance metrics
, owned_repository_avg_better
, files_edited_avg_better
, ccp_avg_better
, same_date_duration_avg_avg_better
, commit_period_avg_better
, commit_days_avg_better

FROM
general.adjacent_years_lf_twins_pairs
where
a_age_group = b_age_group
group by
# Controls
a_age_group
#, a_language_code
#, a_Is_Company
#, a_dev_group
#, a_popularity_group

#, b_age_group
#, b_language_code
#, b_Is_Company
#, b_dev_group
#, b_popularity_group


# labeling functions
, message_length_avg_better
, refactor_mle_avg_better
, commit_hours_better
, message_length_avg_same
, commit_hours_same

# performance metrics
, owned_repository_avg_better
, files_edited_avg_better
, ccp_avg_better
, same_date_duration_avg_avg_better
, commit_period_avg_better
, commit_days_avg_better
;



drop table if exists general.adjacent_years_lf_twins_pairs_stats_by_language_code;

create table
general.adjacent_years_lf_twins_pairs_stats_by_language_code
as
select
count(*) as cases
, count(distinct author_email) as developers

# Controls
#, a_age_group
, a_language_code
#, a_Is_Company
#, a_dev_group
#, a_popularity_group

#, b_age_group
#, b_language_code
#, b_Is_Company
#, b_dev_group
#, b_popularity_group


# labeling functions
, message_length_avg_better
, refactor_mle_avg_better
, commit_hours_better
, message_length_avg_same
, commit_hours_same

# performance metrics
, owned_repository_avg_better
, files_edited_avg_better
, ccp_avg_better
, same_date_duration_avg_avg_better
, commit_period_avg_better
, commit_days_avg_better

FROM
general.adjacent_years_lf_twins_pairs
where
a_language_code = b_language_code
group by
# Controls
#a_age_group
a_language_code
#, a_Is_Company
#, a_dev_group
#, a_popularity_group

#, b_age_group
#, b_language_code
#, b_Is_Company
#, b_dev_group
#, b_popularity_group


# labeling functions
, message_length_avg_better
, refactor_mle_avg_better
, commit_hours_better
, message_length_avg_same
, commit_hours_same

# performance metrics
, owned_repository_avg_better
, files_edited_avg_better
, ccp_avg_better
, same_date_duration_avg_avg_better
, commit_period_avg_better
, commit_days_avg_better
;

drop table if exists general.adjacent_years_lf_twins_pairs_stats_by_Is_Company;

create table
general.adjacent_years_lf_twins_pairs_stats_by_Is_Company
as
select
count(*) as cases
, count(distinct author_email) as developers

# Controls
#, a_age_group
# , a_language_code
, a_Is_Company
#, a_dev_group
#, a_popularity_group

#, b_age_group
#, b_language_code
#, b_Is_Company
#, b_dev_group
#, b_popularity_group


# labeling functions
, message_length_avg_better
, refactor_mle_avg_better
, commit_hours_better
, message_length_avg_same
, commit_hours_same

# performance metrics
, owned_repository_avg_better
, files_edited_avg_better
, ccp_avg_better
, same_date_duration_avg_avg_better
, commit_period_avg_better
, commit_days_avg_better

FROM
general.adjacent_years_lf_twins_pairs
where
a_Is_Company = b_Is_Company
group by
# Controls
#a_age_group
# a_language_code
a_Is_Company
#, a_dev_group
#, a_popularity_group

#, b_age_group
#, b_language_code
#, b_Is_Company
#, b_dev_group
#, b_popularity_group


# labeling functions
, message_length_avg_better
, refactor_mle_avg_better
, commit_hours_better
, message_length_avg_same
, commit_hours_same

# performance metrics
, owned_repository_avg_better
, files_edited_avg_better
, ccp_avg_better
, same_date_duration_avg_avg_better
, commit_period_avg_better
, commit_days_avg_better
;


drop table if exists general.adjacent_years_lf_twins_pairs_stats_by_dev_group;

create table
general.adjacent_years_lf_twins_pairs_stats_by_dev_group
as
select
count(*) as cases
, count(distinct author_email) as developers

# Controls
#, a_age_group
# , a_language_code
#, a_Is_Company
, a_dev_group
#, a_popularity_group

#, b_age_group
#, b_language_code
#, b_Is_Company
#, b_dev_group
#, b_popularity_group


# labeling functions
, message_length_avg_better
, refactor_mle_avg_better
, commit_hours_better
, message_length_avg_same
, commit_hours_same

# performance metrics
, owned_repository_avg_better
, files_edited_avg_better
, ccp_avg_better
, same_date_duration_avg_avg_better
, commit_period_avg_better
, commit_days_avg_better

FROM
general.adjacent_years_lf_twins_pairs
where
a_dev_group = b_dev_group
group by
# Controls
#a_age_group
# a_language_code
#a_Is_Company
a_dev_group
#, a_popularity_group

#, b_age_group
#, b_language_code
#, b_Is_Company
#, b_dev_group
#, b_popularity_group


# labeling functions
, message_length_avg_better
, refactor_mle_avg_better
, commit_hours_better
, message_length_avg_same
, commit_hours_same

# performance metrics
, owned_repository_avg_better
, files_edited_avg_better
, ccp_avg_better
, same_date_duration_avg_avg_better
, commit_period_avg_better
, commit_days_avg_better
;


drop table if exists general.adjacent_years_lf_twins_pairs_stats_by_popularity_group;

create table
general.adjacent_years_lf_twins_pairs_stats_by_popularity_group
as
select
count(*) as cases
, count(distinct author_email) as developers

# Controls
#, a_age_group
# , a_language_code
#, a_Is_Company
#, a_dev_group
, a_popularity_group

#, b_age_group
#, b_language_code
#, b_Is_Company
#, b_dev_group
#, b_popularity_group


# labeling functions
, message_length_avg_better
, refactor_mle_avg_better
, commit_hours_better
, message_length_avg_same
, commit_hours_same

# performance metrics
, owned_repository_avg_better
, files_edited_avg_better
, ccp_avg_better
, same_date_duration_avg_avg_better
, commit_period_avg_better
, commit_days_avg_better

FROM
general.adjacent_years_lf_twins_pairs
where
a_popularity_group = b_popularity_group
group by
# Controls
#a_age_group
# a_language_code
#a_Is_Company
#a_dev_group
a_popularity_group

#, b_age_group
#, b_language_code
#, b_Is_Company
#, b_dev_group
#, b_popularity_group


# labeling functions
, message_length_avg_better
, refactor_mle_avg_better
, commit_hours_better
, message_length_avg_same
, commit_hours_same

# performance metrics
, owned_repository_avg_better
, files_edited_avg_better
, ccp_avg_better
, same_date_duration_avg_avg_better
, commit_period_avg_better
, commit_days_avg_better
;


drop table if exists general.adjacent_years_lf_twins_pairs;
drop table if exists general.adjacent_years_lf_twins_pairs_stats;
drop table if exists general.adjacent_years_lf_twins_pairs_stats_by_age_group;
drop table if exists general.adjacent_years_lf_twins_pairs_stats_by_language_code;
drop table if exists general.adjacent_years_lf_twins_pairs_stats_by_Is_Company;
drop table if exists general.adjacent_years_lf_twins_pairs_stats_by_dev_group;
drop table if exists general.adjacent_years_lf_twins_pairs_stats_by_popularity_group;

