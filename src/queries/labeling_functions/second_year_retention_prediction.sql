# Positive rate 0.80657140852644993
SELECT
avg(if(s.status='Continue'
          , 1
          , 0)) as continue_prob
, count(*) as cnt
, count(distinct cont.author_email) as developers
, count(distinct cont.repo_name) as repos
FROM
general.developer_motivation_profile as cont
join
general.developer_motivation_profile as s
on
cont.author_email = s.author_email
and
cont.year +1 = s.year
and
cont.repo_name = s.repo_name
;


# All/None
SELECT
if(s.message_length_avg >= cont.message_length_avg, 1, 0) as high_message_length
, if(s.refactor_mle >= cont.refactor_mle, 1, 0) as high_refactor
, if(s.commit_hours >= cont.commit_hours, 1, 0) as high_hours
, avg(if(s.status='Continue'
          , 1
          , 0)) as continue_prob
, round(avg(if(s.status='Continue'
          , 1
          , 0))/0.80657140852644993 - 1, 3) as continue_prob_lift
, count(*) as cnt
, count(distinct cont.author_email) as developers
, count(distinct cont.repo_name) as repos
FROM
general.developer_motivation_profile as cont
join
general.developer_motivation_profile as s
on
cont.author_email = s.author_email
and
cont.year +1 = s.year
and
cont.repo_name = s.repo_name
group by high_message_length, high_refactor, high_hours
order by high_message_length, high_refactor, high_hours
;


# Refactoring
SELECT
if(s.refactor_mle >= cont.refactor_mle, 1, 0) as f
, avg(if(s.status='Continue'
          , 1
          , 0)) as continue_prob
, round(avg(if(s.status='Continue'
          , 1
          , 0))/0.80657140852644993 - 1, 3) as continue_prob_lift
, count(*) as cnt
, count(distinct cont.author_email) as developers
, count(distinct cont.repo_name) as repos
FROM
general.developer_motivation_profile as cont
join
general.developer_motivation_profile as s
on
cont.author_email = s.author_email
and
cont.year +1 = s.year
and
cont.repo_name = s.repo_name
group by f
order by f
;


# Hours
SELECT
if(s.commit_hours >= cont.commit_hours, 1, 0) as f
, avg(if(s.status='Continue'
          , 1
          , 0)) as continue_prob
, round(avg(if(s.status='Continue'
          , 1
          , 0))/0.80657140852644993 - 1, 3) as continue_prob_lift
, count(*) as cnt
, count(distinct cont.author_email) as developers
, count(distinct cont.repo_name) as repos
FROM
general.developer_motivation_profile as cont
join
general.developer_motivation_profile as s
on
cont.author_email = s.author_email
and
cont.year +1 = s.year
and
cont.repo_name = s.repo_name
group by f
order by f
;


# Long messages
SELECT
if(s.message_length_avg >= cont.message_length_avg, 1, 0)  as f
, avg(if(s.status='Continue'
          , 1
          , 0)) as continue_prob
, round(avg(if(s.status='Continue'
          , 1
          , 0))/0.80657140852644993 - 1, 3) as continue_prob_lift
, count(*) as cnt
, count(distinct cont.author_email) as developers
, count(distinct cont.repo_name) as repos
FROM
general.developer_motivation_profile as cont
join
general.developer_motivation_profile as s
on
cont.author_email = s.author_email
and
cont.year +1 = s.year
and
cont.repo_name = s.repo_name
group by f
order by f
;
