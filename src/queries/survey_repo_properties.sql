# repo_properties.sql

##### Create Repo Properties

drop table if exists general.survey_repo_properties;


create table
general.survey_repo_properties
as
select
repo_name as repo_name
, min(commit_timestamp) as min_commit_time
, max(commit_timestamp) as max_commit_time
, min(commit) as min_commit
, max(commit) as max_commit
, count(distinct commit) as commits
, count(distinct if(parents = 1, commit, null)) as non_merge_commits
, count(distinct case when is_corrective  then commit else null end) as corrective_commits
, 1.0*count(distinct if(is_corrective, commit, null))/count(distinct commit) as corrective_rate
, general.bq_ccp_mle(1.0*count(distinct if(is_corrective, commit, null))/count(distinct commit)) as ccp
, -1.0 as hotspots_rate

, general.bq_refactor_mle(1.0*count(distinct case when is_refactor  then commit else null end)/count(distinct commit))
        as refactor_mle

, 1.0*count(distinct if(is_cursing, commit, null))/ count(distinct commit) as cursing_rate

, 1.0*count(distinct case when is_positive_sentiment then commit else null end)/count(distinct commit) as positive_sentiment_rate
, 1.0*count(distinct case when is_negative_sentiment then commit else null end)/count(distinct commit) as negative_sentiment_rate

, avg(if(not is_corrective, non_test_files, null)) as avg_coupling_size
, avg(if(not is_corrective, code_non_test_files, null)) as avg_coupling_code_size
, avg(if(not is_corrective, if(non_test_files > 103 , 103 , non_test_files), null)) as avg_coupling_size_capped
, avg(if(not is_corrective, if(code_non_test_files> 103 , 103 ,code_non_test_files), null)) as avg_coupling_code_size_capped
, avg(if(not is_corrective, if(non_test_files > 103 , null , non_test_files), null)) as avg_coupling_size_cut
, avg(if(not is_corrective, if(code_non_test_files> 10 , null ,code_non_test_files), null)) as avg_coupling_code_size_cut

, count(distinct Author_email) as authors
, max(Author_email) as Author_email # Meaningful only when authors=1
, avg(if(same_date_as_prev, duration, null)) as same_day_duration_avg

, 0 as files_edited # edited/created are similar in the repo level

, 0 as files_created
, 0.0 as files_created_ccp # The is the ccp, when working in the repo level
, 0.0 as tests_presence

# Commit message linguistic characteristic (e.g., message length)
, 1.0*count(distinct if(REGEXP_CONTAINS(message,'\\n'), commit, null))/ count(distinct commit)
as multiline_message_ratio
, avg(length(message)) as message_length_avg

, if(count(distinct case when is_corrective  then commit else null end) > 0
,1.0*count(distinct if(is_corrective and REGEXP_CONTAINS(message,'\\n'), commit, null))
/ count(distinct case when is_corrective  then commit else null end)
, null)
as corrective_multiline_message_ratio
, avg(if(is_corrective,length(message), null)) as corrective_message_length_avg

, if(count(distinct case when not is_corrective  then commit else null end) > 0
,1.0*count(distinct if(not is_corrective and REGEXP_CONTAINS(message,'\\n'), commit, null))
/ count(distinct case when not is_corrective  then commit else null end)
, null)
as non_corrective_multiline_message_ratio
, avg(if(not is_corrective,length(message), null)) as non_corrective_message_length_avg

# Duration
, avg(case when same_date_as_prev then duration else null end) as same_date_duration_avg
, count(distinct case when same_date_as_prev then commit else null end) as same_date_commits

, TIMESTAMP_DIFF(max(ec.commit_timestamp), min(ec.commit_timestamp), day) as commit_period
, count(distinct date(ec.commit_timestamp)) as commit_days

, if(count(distinct date(ec.commit_timestamp)) > 0
 , 1.0*count(distinct commit)/count(distinct date(ec.commit_timestamp))
 , 1.0*count(distinct commit))as commits_per_day

, count(distinct extract(week from date(ec.commit_timestamp))) as commit_weeks
, count(distinct extract(month from date(ec.commit_timestamp))) as commit_months
, count(distinct extract(dayofweek from date(ec.commit_timestamp))) as commit_days_of_week
, count(distinct extract(hour from ec.commit_timestamp)) as commit_hours # Should see how diverse are the hours

# Density
, count(distinct ec.commit_timestamp)/(1+TIMESTAMP_DIFF(max(ec.commit_timestamp), min(ec.commit_timestamp), day)) as commit_day_density

, 0.0 as survival_avg
, 0.0 as above_year_prob

# Productivity metrics
, 0.0 as commits_per_developer
, 0 as involved_developers
, 0 as involved_developers_commits
, 0.0 as commits_per_involved_developer
, 0 as developer_capped_commits
, 0.0 as capped_commits_per_developer
, 0 as involved_developers_capped_commits
, 0.0 as capped_commits_per_involved_developer

# GITAPI properties
, '' as language
, -1 as language_code
, -1 age
, -1 as stars

, False  Is_Company

, '' as detection_efficiency
, -1.0 as minutes_to_revert
, -1.0 as reverted_ratio

, 0.0 as avg_file_size
, 0.0 as capped_avg_file_size
, 0.0 as avg_code_file_size
, 0.0 as capped_avg_code_file_size

, 0.0 as sum_file_size
, 0.0 as capped_sum_file_size
, 0.0 as sum_code_file_size
, 0.0 as capped_sum_code_file_size


, -1.0 as onboarding_prob
, -1.0 as retention_prob

, 0.0 as prev_touch_ago
, 0.0 as bug_prev_touch_ago

# Abstraction
, if (sum(if(ec.is_corrective, 1,0 )) > 0
, 1.0*sum(if( code_non_test_files = 1 and ec.is_corrective, 1,0 ))/sum(if(ec.is_corrective, 1,0 ))
, null)
as one_file_fix_rate
, if (sum(if(ec.is_refactor, 1,0 )) > 0
, 1.0*sum(if( code_non_test_files = 1 and ec.is_refactor, 1,0 ))/sum(if(ec.is_refactor, 1,0 ))
, null)
as one_file_refactor_rate

, if(sum(if((code_non_test_files = 1 and code_files = 2 ) or code_files=1, 1,0 )) > 0
    , 1.0*sum(if(code_files=1, 1,0 ))/sum(if((code_non_test_files = 1 and code_files = 2 ) or code_files=1, 1,0 ))
    , null)
as test_usage_rate

, if(sum(if(ec.is_refactor and ((code_non_test_files = 1 and code_files = 2 ) or code_files=1), 1,0 )) > 0
    , 1.0*sum(if(ec.is_refactor and code_files=1, 1,0 ))
        /sum(if(ec.is_refactor and ((code_non_test_files = 1 and code_files = 2 ) or code_files=1), 1,0 ))
    , null)
as test_usage_in_refactor_rate

, if(sum(if(ec.is_refactor, 1,0 )) > 0
    , 1.0*sum(if( code_non_test_files = code_files and ec.is_refactor, 1,0 ))/sum(if(ec.is_refactor, 1,0 ))
    , null )
as no_test_refactor_rate
, sum(if(general.bq_abstraction(lower(message)) > 0, 1, 0)) as textual_abstraction_commits
, 1.0*sum(if(general.bq_abstraction(lower(message)) > 0, 1, 0))/count(*) as textual_abstraction_commits_rate

, -1.0 as testing_involved_prob
, -1.0 as corrective_testing_involved_prob
, -1.0 as refactor_testing_involved_prob
, 0.0 as abs_content_ratio

, count(distinct if(is_performance, ec.commit, null))/count(distinct ec.commit) as performance_rate
, count(distinct if(is_security, ec.commit, null))/count(distinct ec.commit) as security_rate

from
general.survey_enhanced_commits as ec
group by
repo_name
;


drop table if exists general.edited_files;

create table
general.edited_files
as
select
 repo_name
, count(distinct concat(repo_name, file)) as files
, general.bq_ccp_mle(1.0*count(distinct if(is_corrective, commit, null))/count(distinct commit)) as ccp
, sum(if(is_test, 1,0))/count(*)  as tests_presence
from
general.commits_files
group by
repo_name
;


update general.repo_properties as dp
set files_edited = aef.files
, files_created = aef.files
, tests_presence = round(aef.tests_presence, 2)
from
general.edited_files as aef
where
dp.repo_name = aef.repo_name
;

drop table if exists general.edited_files;


drop table if exists general.files_survival;

create table
general.files_survival
as
select
 repo_name
, avg(TIMESTAMP_DIFF(max_commit_time, min_commit_time, DAY)) as survival_avg
, avg(if(TIMESTAMP_DIFF(max_commit_time, min_commit_time, DAY) > 365, 1, 0)) as above_year_prob
from
general.file_properties
where
extract(year from min_commit_time)  < extract(year from CURRENT_DATE())
group by
repo_name
;

update general.repo_properties as rp
set survival_avg = fs.survival_avg
, above_year_prob = fs.above_year_prob
from
general.files_survival as fs
where
rp.repo_name = fs.repo_name
;

drop table if exists general.files_survival;


update general.repo_properties as rp
set
stars = r.stargazers_count
, language = r.language
, language_code = case
when r.language = 'C++' then 1
when r.language = 'C#' then 2
when r.language = 'Java' then 3
when r.language = 'JavaScript' then 4
when r.language = 'PHP' then 5
when r.language = 'Python' then 6
when r.language = 'Shell' then 1
else 0
end
, age = DATE_DIFF(CURRENT_DATE, date(min_commit_time), year)
, Is_Company = r.Is_Company

from
general.repos as r
where
rp.repo_name = r.repo_name
;

update general.repo_properties as dp
set stars = null
where
stars = -1
;


update general.repo_properties as dp
set detection_efficiency = case
when stars >= 7481 then 'high'
when tests_presence <= 0.01 then 'low'
else 'medium'
end
where
True
;

drop table if exists general.repo_length_properties;


create table
general.repo_length_properties
as
select
repo_name
, avg(size) as avg_file_size
, avg(if(size > 180000, 180000, size)) as capped_avg_file_size
, avg(if( extension in ('.bat', '.c', '.cc', '.coffee', '.cpp', '.cs', '.cxx', '.go',
       '.groovy', '.hs', '.java', '.js', '.lua', '.m',
       '.module', '.php', '.pl', '.pm', '.py', '.rb', '.s', '.scala',
       '.sh', '.swift', '.tpl', '.twig'),size, null)) as avg_code_file_size
, avg(if( extension in ('.bat', '.c', '.cc', '.coffee', '.cpp', '.cs', '.cxx', '.go',
       '.groovy', '.hs', '.java', '.js', '.lua', '.m',
       '.module', '.php', '.pl', '.pm', '.py', '.rb', '.s', '.scala',
       '.sh', '.swift', '.tpl', '.twig')
       , if(size > 180000, 180000, size)
       , null)) as capped_avg_code_file_size
       
, sum(size) as sum_file_size
, sum(if(size > 180000, 180000, size)) as capped_sum_file_size
, sum(if( extension in ('.bat', '.c', '.cc', '.coffee', '.cpp', '.cs', '.cxx', '.go',
       '.groovy', '.hs', '.java', '.js', '.lua', '.m',
       '.module', '.php', '.pl', '.pm', '.py', '.rb', '.s', '.scala',
       '.sh', '.swift', '.tpl', '.twig'),size, null)) as sum_code_file_size
, sum(if( extension in ('.bat', '.c', '.cc', '.coffee', '.cpp', '.cs', '.cxx', '.go',
       '.groovy', '.hs', '.java', '.js', '.lua', '.m',
       '.module', '.php', '.pl', '.pm', '.py', '.rb', '.s', '.scala',
       '.sh', '.swift', '.tpl', '.twig')
       , if(size > 180000, 180000, size)
       , null)) as capped_sum_code_file_size

from
general.contents
group by
repo_name
;


update general.repo_properties as rp
set
avg_file_size = rl.avg_file_size
, capped_avg_file_size = rl.capped_avg_file_size
, avg_code_file_size = rl.avg_code_file_size
, capped_avg_code_file_size = rl.capped_avg_code_file_size

, sum_file_size = rl.sum_file_size
, capped_sum_file_size = rl.capped_sum_file_size
, sum_code_file_size = rl.sum_code_file_size
, capped_sum_code_file_size = rl.capped_sum_code_file_size

from
general.repo_length_properties as rl
where
rp.repo_name = rl.repo_name
;

drop table if exists general.repo_length_properties;


drop table if exists general.repo_revert_time;

create table
general.repo_revert_time
as
select
repo_name
, avg(minutes_to_revert) as minutes_to_revert
, count(distinct reverted_commit) as reverted_commits
from
general.reverted_commits as reverted
group by
repo_name
;

update general.repo_properties as rp
set
minutes_to_revert = aux.minutes_to_revert
, reverted_ratio = 1.0*aux.reverted_commits/rp.commits
from
general.repo_revert_time as aux
where
rp.repo_name = aux.repo_name
;

update general.repo_properties as rp
set minutes_to_revert = Null
where
minutes_to_revert = -1.0
;

update general.repo_properties as rp
set reverted_ratio = Null
where
reverted_ratio = -1.0
;

drop table if exists general.repo_revert_time;

drop table if exists general.repo_testing_pair_involvement;

create table general.repo_testing_pair_involvement
as
select
repo_name
, avg(if(test_involved, 1,0) ) as testing_involved_prob
, if( sum(if(is_corrective, 1,0)) > 0
    , 1.0*sum(if(test_involved and is_corrective, 1,0) )/sum(if(is_corrective, 1,0))
    , null) as corrective_testing_involved_prob
, if( sum(if(is_refactor, 1,0)) > 0
    , 1.0*sum(if(test_involved and is_refactor, 1,0) )/sum(if(is_refactor, 1,0))
    , null) as refactor_testing_involved_prob
from
general.testing_pairs_commits
group by
repo_name
;

update general.repo_properties as rp
set testing_involved_prob = aux.testing_involved_prob
, corrective_testing_involved_prob = aux.corrective_testing_involved_prob
, refactor_testing_involved_prob = aux.refactor_testing_involved_prob
from
general.repo_testing_pair_involvement as aux
where
rp.repo_name = aux.repo_name
;

drop table if exists general.repo_testing_pair_involvement;

drop table if exists general.repo_content_abstraction;

create table general.repo_content_abstraction
as
SELECT
cnt.repo_name as repo_name
, 1.0*count(distinct if(general.bq_abstraction(lower(content)) > 0, path, null))/count(distinct path) as abs_content_ratio
 FROM
 general.contents as cnt
group by
repo_name
;

update general.repo_properties as rp
set abs_content_ratio = aux.abs_content_ratio
from
general.repo_content_abstraction as aux
where
rp.repo_name = aux.repo_name
;

drop table if exists general.repo_content_abstraction;

drop table if exists general.repo_hotspots_rate;

create table
general.repo_hotspots_rate
as
select
repo_name
, if(sum(if(commits >= 10 and code_extension, 1,0)) > 0
    ,sum(if(ccp >= 0.33 and commits >= 10 and code_extension, 1,0))/sum(if(commits >= 10 and code_extension, 1,0))
    , null) as hotspots_rate
from
general.file_properties
group by
repo_name
;

update general.repo_properties as rp
set hotspots_rate = aux.hotspots_rate
from
general.repo_hotspots_rate as aux
where
rp.repo_name = aux.repo_name
;

update general.repo_properties as rp
set hotspots_rate = Null
where
hotspots_rate = -1.0
;

drop table if exists general.repo_hotspots_rate;
