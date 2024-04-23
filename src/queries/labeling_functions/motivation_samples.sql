# Commits
drop table if exists general.commit_motivation;


create table
general.commit_motivation
as
select
commit
, repo_name
, message
, regexp_contains(lower(message), 'motivation') as is_motivation_pred
from
general.enhanced_commits
where
regexp_contains(lower(message), 'motivation')
and
not
regexp_contains(lower(message), 'motivation(s)?( )?(:|for)|for (a )?motivation|the motivation|(add|added|move|moved) motivation')
;


# motivation hits
select
repo_name
, commit
, message
, '' as Is_motivation
, '' as Justification
, '' as Certain
, '' as Comment
, '23_dec_2021_pos_c5ba4cd1971da27f74ce1319415626143092d317' as Sampling
from
general.commit_motivation
where
is_motivation_pred > 0
order by
rand()
limit 500
;

# Terms related
WITH terms AS (
  SELECT SPLIT(message, ' ' ) as token
  FROM (  SELECT lower(message) as message
 FROM
 general.commit_motivation
 #where
 #general.bq_motivation(message) > 0
)
)
-- we flatten the ngrams into a table, and JOIN to our names
SELECT word
, max(general.bq_motivation(word)) is_identified
, count(*) as cnt
FROM terms, UNNEST(token) as word
group by
word
#having
#max(general.bq_motivation(word)) > 0
order by count(*) desc
limit 1000
;
