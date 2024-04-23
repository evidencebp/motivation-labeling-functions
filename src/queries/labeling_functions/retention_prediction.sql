# Positive rate 0.7493754646496974
SELECT
avg(if(status='Continue'
          , 1
          , 0)) as continue_prob
, count(*) as cnt
, count(distinct author_email) as developers
, count(distinct repo_name) as repos
FROM general.developer_motivation_profile
;


#  All/ None
SELECT
if(message_length_avg >= 84, 1, 0) as high_message_length
, if(refactor_mle >= 0.2, 1, 0) as high_refactor
, if(commit_hours >= 18, 1, 0) as high_hours
, avg(if(status='Continue'
          , 1
          , 0)) as continue_prob
, round(avg(if(status='Continue'
          , 1
          , 0))/0.7493754646496974 - 1, 3) as continue_prob_lift
, count(*) as cnt
, count(distinct author_email) as developers
, count(distinct repo_name) as repos
FROM general.developer_motivation_profile
group by high_message_length, high_refactor, high_hours
order by high_message_length, high_refactor, high_hours
;


#  Refactoring
SELECT
if(refactor_mle >= 0.2, 1, 0) as f
, avg(if(status='Continue'
          , 1
          , 0)) as continue_prob
, round(avg(if(status='Continue'
          , 1
          , 0))/0.7493754646496974 - 1, 3) as continue_prob_lift
, count(*) as cnt
, count(distinct author_email) as developers
, count(distinct repo_name) as repos
FROM general.developer_motivation_profile
group by f
order by f
;


#  Hours
SELECT
if(commit_hours >= 18, 1, 0)  as f
, avg(if(status='Continue'
          , 1
          , 0)) as continue_prob
, round(avg(if(status='Continue'
          , 1
          , 0))/0.7493754646496974 - 1, 3) as continue_prob_lift
, count(*) as cnt
, count(distinct author_email) as developers
, count(distinct repo_name) as repos
FROM general.developer_motivation_profile
group by f
order by f
;


#  Long messages
SELECT
if(message_length_avg >= 84, 1, 0)  as f
, avg(if(status='Continue'
          , 1
          , 0)) as continue_prob
, round(avg(if(status='Continue'
          , 1
          , 0))/0.7493754646496974 - 1, 3) as continue_prob_lift
, count(*) as cnt
, count(distinct author_email) as developers
, count(distinct repo_name) as repos
FROM general.developer_motivation_profile
group by f
order by f
;

