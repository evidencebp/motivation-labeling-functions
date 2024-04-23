# Commits
drop table if exists general.commit_no_motivation;


create table
general.commit_no_motivation
as
select
commit
, repo_name
, author_email
, message
from
general.enhanced_commits
where
REGEXP_CONTAINS(lower(message), "no\smotivation") # I don't care , fuck it
;

# Commits
drop table if exists general.commit_no_motivation;

create table
general.commit_no_motivation
as
select
commit
, repo_name
, author_email
, commit_timestamp
, message
from
general.enhanced_commits
where
REGEXP_CONTAINS(lower(message), "fuck") # no motivation, I don't care , fuck it
;

drop table if exists general.commit_no_motivation_dry;

create table
general.commit_no_motivation_dry
as
select
repo_name
, author_email
, extract(year from commit_timestamp) as year
, count(*) as commits
from
general.commit_no_motivation
group by
repo_name
, author_email
, extract(year from commit_timestamp)
;

# into motivation_by_f_word.csv
SELECT
n.repo_name is not null as f_word_used
, count(distinct p.author_email) as developers
, count(distinct p.repo_name) as repos
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
FROM general.developer_motivation_profile as p
left join
general.commit_no_motivation_dry as n
on
p.repo_name = n.repo_name
and
p.author_email = n.author_email
and
p.year = n.year
group by
f_word_used
order by
f_word_used
;

# into motivation_by_swearing.csv
SELECT
cursing_rate > 0 as f_word_used
, count(distinct p.author_email) as developers
, count(distinct p.repo_name) as repos
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
FROM general.developer_motivation_profile as p

group by
f_word_used
order by
f_word_used
;