
# into message_length_dist.csv
SELECT length(message) as f
, count(*) as cnt
, count(distinct author_email) as developers
FROM `hotspots-readability.general.enhanced_commits`
group by
f
order by
f
;

SELECT avg(length(message)) as avg
, avg(if(REGEXP_CONTAINS(lower(message), 'squash')
    , null, length(message))) as squash_avg
, avg(if(REGEXP_CONTAINS(lower(message), 'diff')
    , null, length(message))) as diff_avg
FROM `hotspots-readability.general.enhanced_commits`
;


SELECT avg(length(message)) as avg
, avg(if(length(message) >= 1000,1,0)) as long_prob

, avg(if(REGEXP_CONTAINS(lower(message), 'squash')
    , null, length(message))) as squash_avg
, avg(if(REGEXP_CONTAINS(lower(message), 'squash')
    , null, if(length(message) >= 1000,1,0))) as squash_long_prob
, avg(if(REGEXP_CONTAINS(lower(message), 'diff')
    , null, length(message))) as diff_avg
, avg(if(REGEXP_CONTAINS(lower(message), 'diff')
    , null, if(length(message) >= 1000,1,0))) as diff_long_prob
FROM `hotspots-readability.general.enhanced_commits`
;

# into message_types_by_long.csv
SELECT
length(message) >= 1000 as long_message
, count(*)
, avg(if(REGEXP_CONTAINS(lower(message), 'squash')
    , 1, 0)) as squash_avg
, avg(if(REGEXP_CONTAINS(lower(message), 'diff')
    , 1, 0)) as diff_avg
FROM `hotspots-readability.general.enhanced_commits`
group by
long_message
order by
long_message
;


# into message_types_by_10k.csv
SELECT
length(message) >= 10000 as long_message
, count(*)
, avg(if(REGEXP_CONTAINS(lower(message), 'squash')
    , 1, 0)) as squash_avg
, avg(if(REGEXP_CONTAINS(lower(message), 'diff')
    , 1, 0)) as diff_avg
FROM `hotspots-readability.general.enhanced_commits`
group by
long_message
order by
long_message
;

# into message_length_by_single_dev.csv
SELECT r.authors = 1 as f
, avg(length(message)) as avg
, avg(if(REGEXP_CONTAINS(lower(message), 'squash')
    , null, length(message))) as squash_avg
, avg(if(REGEXP_CONTAINS(lower(message), 'diff')
    , null, length(message))) as diff_avg
FROM general.enhanced_commits as ec
join
general.repo_properties as r
on
ec.repo_name = r.repo_name
group by f
order by f
;

# into message_length_by_single_dev.csv
SELECT r.authors = 1 as f
, avg(length(message)) as avg
, avg(if(REGEXP_CONTAINS(lower(message), 'squash')
    , null, length(message))) as squash_avg
, avg(if(REGEXP_CONTAINS(lower(message), 'diff')
    , null, length(message))) as diff_avg
FROM general.enhanced_commits as ec
join
general.repo_properties as r
on
ec.repo_name = r.repo_name
group by f
order by f
;

# into message_length_single_twins.csv
select
avg(if(in_single_len < not_single_len, 1,0)) as single_shorter_prob
, avg(not_single_len - in_single_len) as extra_len
from
(
select
single_p.repo_name
, single_p.author_email
, single_p.year
, not_single_p.repo_name
, avg(length(single_ec.message)) as in_single_len
, avg(length(not_single_ec.message)) as not_single_len
from
general.enhanced_commits as single_ec
join
general.developer_motivation_profile as single_p
on
single_ec.repo_name = single_p.repo_name
and
single_ec.author_email = single_p.author_email
and
EXTRACT(YEAR from single_ec.commit_timestamp) = single_p.year

join
general.repo_properties as single_r
on
single_p.repo_name = single_r.repo_name
join
general.developer_motivation_profile as not_single_p
on
single_p.author_email = not_single_p.author_email
and
single_p.year = not_single_p.year
join
general.repo_properties as not_single_r
on
not_single_p.repo_name = not_single_r.repo_name
join
general.enhanced_commits as not_single_ec
on
not_single_ec.repo_name = not_single_p.repo_name
and
not_single_ec.author_email = not_single_p.author_email
and
EXTRACT(YEAR from not_single_ec.commit_timestamp) = not_single_p.year

where
single_r.authors = 1
and
not_single_r.authors > 1
group by
single_p.repo_name
, single_p.author_email
, single_p.year
, not_single_p.repo_name

) as inSql
;