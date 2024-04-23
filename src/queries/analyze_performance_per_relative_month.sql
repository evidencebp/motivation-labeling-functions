# Into developer_performance_by_status.csv

drop table if exists general.developer_performance_by_status;

create table
general.developer_performance_by_status
as
select
status
, count(*) as cases
, count(distinct author_email) as developers
, avg(commits) as commits_avg
, avg(ccp) as ccp_avg
, avg(refactor_mle) as refactor_mle_avg
, avg(tests_presence) as tests_presence_avg


, avg( avg_coupling_code_size_cut ) as avg_coupling_code_size_cut_avg

, avg(single_line_message_ratio) as single_line_message_ratio_avg
, avg(message_length_avg) as message_length_avg_avg
, avg(same_date_duration_avg) as same_date_duration_avg
, avg(commit_days) as commit_days_avg

, avg(files_edited) as files_edited_avg
, avg(files_created) as files_created_avg
, avg(files_owned) as files_owned_avg

, avg(files_edited_ccp) as files_edited_ccp_avg
, avg(files_created_ccp) as files_created_ccp_avg
, avg(files_owned_ccp) as files_owned_ccp_avg

#, avg(commits_per_day) as commits_per_day_avg
from
general.developer_motivation_profile
where
commits >= 12
and
commits < 1000
and
project_continued
group by
status
order by
status
;

# into performance_per_relative_month_agg.csv
drop table if exists general.performance_per_relative_month_agg;

create table
general.performance_per_relative_month_agg
as
select
status
, months_from_last_commit
, avg(ppm.commits) as commits_avg
, avg(ppm.ccp) as ccp_avg
, avg(ppm.refactor_mle) as refactor_mle_avg
, avg(ppm.tests_presence) as tests_presence_avg
, avg(ppm.single_line_message_ratio) as single_line_message_ratio_avg
, avg(ppm.message_length_avg) as message_length_avg_avg
, avg(ppm.same_date_duration_avg) as same_date_duration_avg
, avg(ppm.commit_days) as commit_days_avg
, avg(ppm.commits_per_day) as commits_per_day_avg
from
general.performance_per_relative_month as ppm
join
general.developer_motivation_profile as dmp
on
ppm.repo_name = dmp.repo_name
and
ppm.author_email = dmp.author_email
and
ppm.year = dmp.year
where
dmp.commits >= 12
and
dmp.commits < 1000
and
dmp.project_continued
group by
status
, months_from_last_commit
order by
status
, months_from_last_commit
;