# into refactor_mle_dist.csv
SELECT round(refactor_mle, 2) as f
, count(*) as cnt
, count(distinct author_email) as developers
FROM general.developer_motivation_profile
where
commits >=50
and
commits <= 1000
group by
f
order by
f
;

# into message_length_avg_dist.csv
SELECT round(message_length_avg,0) as f
, count(*) as cnt
, count(distinct author_email) as developers
FROM general.developer_motivation_profile
where
commits >=50
and
commits <= 1000
group by
f
order by
f
;

# into message_length_avg_dist.csv
SELECT round(message_length_avg,0) as f
, count(*) as cnt
, count(distinct author_email) as developers
FROM general.developer_motivation_profile
where
commits >=50
and
commits <= 1000
group by
f
order by
f
;

# into commit_hours_dist.csv
SELECT commit_hours as f
, count(*) as cnt
, count(distinct author_email) as developers
FROM general.developer_motivation_profile
where
commits >=50
and
commits <= 1000
group by
f
order by
f
;


# into commit_hours_dist_just_12_commits.csv
SELECT commit_hours as f
, count(*) as cnt
, count(distinct author_email) as developers
FROM general.developer_motivation_profile
where
commits =12
group by
f
order by
f
;
