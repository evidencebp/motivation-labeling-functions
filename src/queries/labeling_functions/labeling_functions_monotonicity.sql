# into continue_prob_by_commit_hours.csv
SELECT
commit_hours as f
, count(distinct author_email) as developers
, count(distinct repo_name) as repos
, count(*) as cnt
, avg(if(status='Continue'
          , 1
          , 0)) as continue_prob
FROM general.developer_motivation_profile
group by f
order by f
;

# into continue_prob_by_refactor.csv
SELECT
case
when refactor_mle  = -0.034 then 0
when refactor_mle  < 0.05 then 0.05
when refactor_mle  < 0.1 then 0.1
when refactor_mle  < 0.15 then 0.15
when refactor_mle  < 0.2 then 0.2
when refactor_mle  < 0.25 then 0.25
when  refactor_mle >= 1 then 1
else round(refactor_mle, 1)
end
as f
, count(distinct author_email) as developers
, count(distinct repo_name) as repos
, count(*) as cnt
, avg(if(status='Continue'
          , 1
          , 0)) as continue_prob
FROM general.developer_motivation_profile
group by f
order by f
;

# into continue_prob_by_message_length.csv
SELECT
10*round(message_length_avg/10) as f
, count(distinct author_email) as developers
, count(distinct repo_name) as repos
, count(*) as cnt
, avg(if(status='Continue'
          , 1
          , 0)) as continue_prob
FROM general.developer_motivation_profile
group by f
order by f
;