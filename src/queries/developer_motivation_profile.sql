# other then the developer's profile, add
#	\item Duration in project
#	\item Join time relative to project creation
#	\items Commits/distinct commits variation \cite{8952390} \idan{Consider more ideas from there}

drop table if exists general.developer_motivation_profile;

create table general.developer_motivation_profile
as
select
dry.*
, status
, project_continued

# Labeling functions
, if(dry.message_length_avg >= 84, 1, 0) as high_message_length
, if(dry.refactor_mle >= 0.2, 1, 0) as high_refactor
, if(dry.commit_hours >= 18, 1, 0) as high_hours

# Controls
, case
when extract(year from r.min_commit_time) < 2008 then 'Pre GitHub'
when 2008 <= extract(year from r.min_commit_time)  and extract(year from r.min_commit_time)  <= 2013 then 'Old'
when 2014 <= extract(year from r.min_commit_time)  and extract(year from r.min_commit_time)  <= 2016 then 'Medium'
when 2016 < extract(year from r.min_commit_time)  then 'New'
else  'Error' end
as age_group
, r.language_code
, r.Is_Company
, case
when r.authors = 1 then 'Single'
when r.authors <= 10 then 'Small'
when r.authors <= 100 then 'Medium'
else  'Large'
end
as dev_group
, case
when r.stars <= 8 then 'Low'
when r.stars <= 422 then 'Medium'
when r.stars < 5028 then 'High'
else 'Extraordinary'
end
as popularity_group

from
general_ght.dev_repo_properties_per_year as dry
join
general.repo_properties as r
on
dry.repo_name = r.repo_name
join
general.developer_status as ds
on
dry.repo_name = ds.repo_name
and
dry.author_email = ds.author_email
and
dry.year = ds.year
where
dry.commits >= 12
and
dry.commits < 1000
;
