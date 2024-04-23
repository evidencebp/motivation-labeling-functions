# Exploration
# Generation of the commands abandoned_cases, abandoned_developers


select
count(*) as cases
, count(distinct author_email) as developers
, sum(if(status='Continue', 1,0)) as continue_cases
, count(distinct if(status='Continue', author_email,null)) as continue_developers
, sum(if(status='Abandoned', 1,0)) as abandoned_cases
, concat("\\newcommand \\abandonedCases {", cast(sum(if(status='Abandoned', 1,0)) as string), "}") as abandoned_cases_command
, count(distinct if(status='Abandoned', author_email,null)) as abandoned_developers
, concat("\\newcommand \\abandonedDevelopers {", cast(count(distinct if(status='Abandoned', author_email,null)) as string), "}")
    as abandoned_developers_command
, sum(if(status='No activity', 1,0)) as no_activity_cases
, count(distinct if(status='No activity', author_email,null)) as no_activity_developers
from
general.developer_status
;

select
 commits as f
 , count(*) as cases
 , 1.0*sum(if(status='Continue',1,0))/count(*) as continue_prob
 from
 general.developer_motivation_profile
 group by
 f
 order by
 f
 ;


 # generates the commands continueProb, continueProbBelow12, continueProbAt2, continueProbAbove12
select
count(*) as cases
, concat("\\newcommand \\continueProb {", cast(round(1.0*sum(if(status='Continue',1,0))/count(*),2) as string), "}") as continueProb
, concat("\\newcommand \\continueProbBelowTwelve {", cast(round(1.0*sum(if(status='Continue' and commits < 12,1,0))/
    sum(if(commits < 12,1,0)),2) as string), "}") as continueProbBelowTwelve
, concat("\\newcommand \\continueProbAtTwelve {", cast(round(1.0*sum(if(status='Continue' and commits = 12,1,0))/
    sum(if(commits = 12,1,0)),2) as string), "}") as continueProbAtTwelve
, concat("\\newcommand \\continueProbAboveTwelve {", cast(round(1.0*sum(if(status='Continue' and commits > 12 and commits < 1000,1,0))/
    sum(if(commits > 12 and commits < 1000,1,0)),2) as string), "}") as continueProbAboveTwelve
from
 general.developer_motivation_profile
 ;



