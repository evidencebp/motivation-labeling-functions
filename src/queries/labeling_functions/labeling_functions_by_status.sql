


# into labeling_cooccurrence.csv
drop table if exists general.labeling_cooccurrence;

create table
general.labeling_cooccurrence
as
SELECT if(status='Continue'
          , 1
          , 0) as Continued
, if(message_length_avg >= 84, 1, 0) as high_message_length
, if(refactor_mle >= 0.2, 1, 0) as high_refactor
, if(commit_hours >= 18, 1, 0) as high_hours
FROM general.developer_motivation_profile
;


# into similar_refactor.csv
SELECT
cont.refactor_mle
, count(distinct cont.author_email) as developers
, count(*) as cnt
FROM
general.developer_motivation_profile as cont
join
general.developer_motivation_profile as no_cont
on
cont.author_email = no_cont.author_email
and
cont.year = no_cont.year
where
if(cont.status='Continue'
          , true
          , false)
and
not if(no_cont.status='Continue'
          , true
          , false)
and
cont.refactor_mle = no_cont.refactor_mle
group by cont.refactor_mle
order by cont.refactor_mle
;

# cochange
Select
message_length_avg_better
, refactor_mle_avg_better
, commit_hours_better
, count(distinct author_email) as developers
, count(*) as cnt

from
(
SELECT
 cur.author_email
, if(cur.message_length_avg>= prev.message_length_avg, 1,0) as message_length_avg_better
, if(cur.refactor_mle>= prev.refactor_mle, 1,0) as refactor_mle_avg_better
, if(cur.commit_hours>= prev.commit_hours, 1,0) as commit_hours_better
FROM
general.developer_motivation_profile as prev
join
general.developer_motivation_profile as cur
on
prev.author_email = cur.author_email
and
prev.repo_name = cur.repo_name
and
prev.year +1 = cur.year
) as inner_Sql
group by
message_length_avg_better
, refactor_mle_avg_better
, commit_hours_better
order by
message_length_avg_better
, refactor_mle_avg_better
, commit_hours_better
;

# into developer_motivation_per_year_per_repo.csv
drop table if exists general.developer_motivation_per_year_per_repo;

create table
general.developer_motivation_per_year_per_repo
as
SELECT author_email
, repo_name
, year
, refactor_mle
, message_length_avg
, commit_hours
FROM general.developer_motivation_profile
;

# into next_year_prediction.csv
SELECT
if(cur.message_length_avg>= prev.message_length_avg, 1,0) as message_length_avg_better
, if(cur.refactor_mle>= prev.refactor_mle, 1,0) as refactor_mle_avg_better
, if(cur.commit_hours>= prev.commit_hours, 1,0) as commit_hours_better
, count(distinct cur.author_email) as developers
, count(distinct cur.repo_name) as repos
, count(*) as cnt
, avg(if(cur.status='Continue'
          , 1
          , 0)) as continue_prob
FROM
general.developer_motivation_profile as prev
join
general.developer_motivation_profile as cur
on
prev.author_email = cur.author_email
and
prev.year +1 = cur.year
and
prev.repo_name = cur.repo_name
group by
message_length_avg_better
, refactor_mle_avg_better
, commit_hours_better
order by
message_length_avg_better
, refactor_mle_avg_better
, commit_hours_better
;

# into next_year_prediction_stats.csv
SELECT
 count(distinct cur.author_email) as developers
, count(distinct cur.repo_name) as repos
, count(*) as cnt
, avg(if(cur.status='Continue'
          , 1
          , 0)) as continue_prob
FROM
general.developer_motivation_profile as prev
join
general.developer_motivation_profile as cur
on
prev.author_email = cur.author_email
and
prev.year +1 = cur.year
and
prev.repo_name = cur.repo_name
;
