DISPLAY = 'DisplayName'
CATEGORIES = 'CATEGORIES'
DESCRIPTION = 'Description'


FEATURES_DISPLAY_DICT = {
'ccp': {DISPLAY : 'Corrective Commit Prob.', CATEGORIES : ['Quality']
        , DESCRIPTION: "The ratio of bug fixing commits. Measures bug fixing effort. \cite{Amit2021CCP}."}
, 'owned_ccp' : {DISPLAY :'Owned Corrective Commit Prob.', CATEGORIES : ['Quality']
        , DESCRIPTION: "A developer might fix a bug caused by another. Here we measure CCP in files that only the developer contributed to, hence has a sole responsible developer."}
, 'same_date_duration_avg':  {DISPLAY :'Commit Duration', CATEGORIES : ['Productivity']
    , DESCRIPTION: "Average gross duration of a commit. Measured by the time between commits of the same developer in the same date \cite{Amit2021CCP, amit2021follow}"}
, 'commits':  {DISPLAY :'Commits', CATEGORIES : ['Size']
        , DESCRIPTION: "The number of commits. A commit is a modification of the source code, preferably performing a single task."}
, 'avg_coupling_code_size_cut':  {DISPLAY :'Code Coupling', CATEGORIES : ['Quality']
    , DESCRIPTION: "The average number of functional (non-test) source code files in commits, omitting large commits \cite{1231213, Amit2019Refactoring, Amit2021CCP, amit2021follow}."}
, 'textual_abstraction_commits_rate':  {DISPLAY :'Abstraction Reference', CATEGORIES : ['Quality'] }
, 'implementation_involved_rate':  {DISPLAY :'Implementation Involvement', CATEGORIES : ['Quality'] }
# Commit message features
, 'corrective_message_length_avg':  {DISPLAY :'Corrective Message Len.', CATEGORIES : ['Culture']
    , DESCRIPTION: "The average length of a commit message. Corrective messages tend to be longer and hence an increase in bugs (negative) might seem as longer messages (positive) and therefore we separate the message types."}
, 'non_corrective_message_length_avg':  {DISPLAY :'Non Corrective Message Len.', CATEGORIES : ['Culture']
    , DESCRIPTION: "Average length of commit messages which are not corrective. Corrective messages tend to be longer and hence an increase in bugs (negative) might seem as longer messages (positive) and therefore we separate the message types."}
,'multiline_message_ratio':  {DISPLAY :'Multiline Message Prob.', CATEGORIES : ['Culture']
    , DESCRIPTION: "Commit’s first line is usually a summary and the rest of the message adds details and explanations \cite{choshen2021comsum}. Multiline commit messages probability measures the documentation level."}
#, 'non_merge_commits':  {DISPLAY :the_higher_the_better
, 'message_length_avg':  {DISPLAY :'Message Len.', CATEGORIES : ['Culture']
    , DESCRIPTION: "The average number of characters in a commit message. Measures documentation."}
, 'corrective_multiline_message_ratio':  {DISPLAY :'Corrective Multiline Message Prob.', CATEGORIES : ['Culture']
    , DESCRIPTION: "Multiline commit message probability measures the documentation level. Corrective commits tend to be longer and therefore measured separately."}
, 'cursing_rate':  {DISPLAY :'Swearing', CATEGORIES : ['Culture']
    , DESCRIPTION: "The probability that a commit contains swearing \cite{Amit2021CCP, Amit2021CommitClassification}"}
, 'commit_days':  {DISPLAY :'Commit Days', CATEGORIES : ['Size']
    , DESCRIPTION: "Number of distinct days in which a commit was made."}
, 'commit_period':  {DISPLAY :'Commit Period', CATEGORIES : ['Size']
        , DESCRIPTION: "Days between the first and last commits to a project (In this research, in a given year)."}
, 'refactor_mle':  {DISPLAY :'Refactor Prob.', CATEGORIES : ['Quality']
    , DESCRIPTION: "Probability that a commit is a refactor, attempt to improve the software \cite{Amit2021CCP, Amit2021Analysis, amit2021follow, Amit2019Refactoring}"}
, 'tests_presence':  {DISPLAY :'Test Presence', CATEGORIES : ['Quality']
    , DESCRIPTION: "The probability that a commit contains test files \cite{Amit2021CCP}."}
, 'prev_touch_ago':  {DISPLAY :'Previous Touch Time', CATEGORIES : ['Quality']
    , DESCRIPTION: "Time from commit to previous touch in the file. Serves as an upper bound for time to detect a bug and measures the detection efficiency \cite{Amit2021CCP}."}

, 'commit_day_density':  {DISPLAY :'Commit Day Density', CATEGORIES : ['Productivity']
    , DESCRIPTION: "Commit Day Density - Ratio of commit days out of commit period."}
, 'negative_sentiment_rate':  {DISPLAY :'Negative Sentiment', CATEGORIES : ['Culture']
    , DESCRIPTION: "Ratio of commits messages with negative sentiment \cite{Amit2021CommitClassification}."}
, 'commits_per_day':  {DISPLAY :'Commits Per Active Day', CATEGORIES : ['Productivity']
        , DESCRIPTION: "Commits divided by commit days."}
, 'positive_sentiment_rate':  {DISPLAY :'Positive Sentiment', CATEGORIES : ['Culture']
    , DESCRIPTION: "Positive Sentiment - Ratio of commits messages with positive sentiment \cite{Amit2021CommitClassification}."}

#, '
    #
    # ':  {DISPLAY :the_lower_the_better
#, 'avg_coupling_code_size_cut':  {DISPLAY :the_lower_the_better

# File features
, 'files_edited':  {DISPLAY :'Files Edited', CATEGORIES : ['Productivity']
                    , DESCRIPTION: "Number of Files modified (or created)."}
, 'files_created':  {DISPLAY :'Files Created', CATEGORIES : ['Productivity']
            , DESCRIPTION: "Number of files created."}
, 'sum_code_file_size':  {DISPLAY :'Code Size', CATEGORIES : ['Size']
            , DESCRIPTION: "Sum of size of source code files (without images, etc)."}
, 'capped_sum_code_file_size':  {DISPLAY :'Capped Size', CATEGORIES : ['Size']}
, 'capped_sum_file_size':  {DISPLAY :'Files Size', CATEGORIES : ['Size']
    , DESCRIPTION: "Sum of size of all files (including images, etc)."}


# Issue feature
, 'closed_issues':  {DISPLAY :'Closed Issues', CATEGORIES : ['Size']
                     , DESCRIPTION: "The number of tasks finished. Computed using additional data set \cite{gousios2012ghtorrent} hence this data is available for only 5,165 matching projects \cite{Amit2021CCP}."}
, 'merged_issues':  {DISPLAY :'Merged Issues', CATEGORIES : ['Size']
        , DESCRIPTION: "The number of tasks finished and merged to source code. Computed using additional data set \cite{gousios2012ghtorrent} hence this data is available for only 5,165 matching projects \cite{Amit2021CCP}."}
, 'merged_issues_ratio':  {DISPLAY :'Merged Issues Prob.', CATEGORIES : ['Quality']}
, 'reopened_issues_ratio':  {DISPLAY :'Reopened Issues Prob.', CATEGORIES : ['Quality']}
, 'demilestoned_issues_ratio':  {DISPLAY :'Demilstoned Issues Prob.', CATEGORIES : ['Quality']}
, 'assigned_to_closed_minutes':  {DISPLAY :'Assigned to Closed', CATEGORIES : ['Productivity']
    , DESCRIPTION: "Minutes from assigning an issue to closing it."}
, 'created_to_assigned_minutes':  {DISPLAY :'Created to Assigned', CATEGORIES : ['Productivity']}
, 'created_to_closed_minutes':  {DISPLAY :'Created to Closed', CATEGORIES : ['Productivity']}

# Pull request features
, 'pull_requests':  {DISPLAY :'Pull Requests', CATEGORIES : ['Size']
    , DESCRIPTION: "Pull requests (PR) are code modification serving a task. This is their number."}
, 'merged_prs':  {DISPLAY :'Merged Pull Requests', CATEGORIES : ['Size']
    , DESCRIPTION: "Merged pull requests (PR) are reviewed and approved code modification. This is their number."}
, 'merged_pr_ratio':  {DISPLAY :'Merged Prob.', CATEGORIES : ['Quality']}
, 'first_to_last_commit_minutes':  {DISPLAY :'First to Last Commit', CATEGORIES : ['Productivity']}
, 'open_to_merge_minutes':  {DISPLAY :'Open to Merge', CATEGORIES : ['Productivity']}
, 'first_commit_to_merge_minutes':  {DISPLAY :'Commit to Merge', CATEGORIES : ['Productivity']
    , DESCRIPTION: "Minutes from the first to commit to a merge of a pull request."}
, 'sloppy_pr_ratio':  {DISPLAY :'Sloppy PR Prob.', CATEGORIES : ['Quality']}
#, 'survival_avg':  {DISPLAY :the_lower_the_better # not intersting so deprecated
#, 'above_year_prob':  {DISPLAY :the_lower_the_better
, 'commits_per_developer':  {DISPLAY :'Commits per Developer', CATEGORIES : ['Productivity']
    , DESCRIPTION:"Commits divided by developers."}
, 'involved_developers_commits':  {DISPLAY :'Involved Developers Commits', CATEGORIES : ['Size']
    , DESCRIPTION: "Sum of commits done by involved developers."}
, 'capped_commits_per_involved_developer':  {DISPLAY :'Capped Involved Developers Commits'
        , CATEGORIES : ['Size']
        , DESCRIPTION: "Average number of commits, capped at 500, of involved developers, submitting at least 12 commits to the project \cite{Amit2021CCP}."}
#, 'merged_issues_per_developer':  {DISPLAY :'Merged Issues per Developer', CATEGORIES : ['Productivity']} # Pearson 0.15
#, 'merged_issues_per_involved_developer':  {DISPLAY :'Merged Issues per Involved Developer', CATEGORIES : ['Productivity']} # Pearson 0.08
, 'merged_prs_per_developer':  {DISPLAY :'Merged PRs per Developer', CATEGORIES : ['Productivity']
    , DESCRIPTION: "Merged pull requests (PR) are reviewed and approved code modification. Merge PRs per developer is their number divided by developers."}
, 'merged_prs_per_involved_developer':  {DISPLAY :'Merged PRs per Involved Developer', CATEGORIES : ['Productivity']
    , DESCRIPTION: "Number of merge pull requests divided by the number of developers."}


, 'one_file_fix_rate':  {DISPLAY :'Single File Fix Prob.', CATEGORIES : ['Quality']
    , DESCRIPTION: "TThe probability that a bug fix will contain only a single functional file. Measures cohesion and co-changes with C/C++ interface and implementation separation."}
, 'one_file_refactor_rate':  {DISPLAY :'Single File Refactor Prob.', CATEGORIES : ['Quality']
    , DESCRIPTION: "The probability that a refactor will contain only a single functional file. Measures cohesion and co-changes with C/C++ interface and implementation separation."}
, 'textual_abstraction_commits':  {DISPLAY :'Abstraction Reference Commits', CATEGORIES : ['Quality']}
, 'test_involved_rate':  {DISPLAY :'Test Involvement Prob.', CATEGORIES : ['Quality']}
, 'no_test_refactor_rate':  {DISPLAY :'No Test Refactor Prob.', CATEGORIES : ['Quality']}
, 'test_usage_rate':  {DISPLAY :'Test Usage Probability', CATEGORIES : ['Quality']}

#, 'files_owned_ccp' :  {DISPLAY :'Owned Files CCP' # Owned are not in repo
, 'bug_prev_touch_ago' :  {DISPLAY :'Bug Previous Touch Time', CATEGORIES : ['Quality']
    , DESCRIPTION: "Time from bug fix to previous touch in the file. Serves as an upper bound for time to detect a bug and measures the detection efficiency \cite{Amit2021CCP}."}# Pearson 0.39
#, 'one_file_fix_rate' :  {DISPLAY :'Single File Fix'
#,  'one_file_refactor_rate' :  {DISPLAY :'Single File Refactor'
, 'reverted_ratio':  {DISPLAY :'Revert Prob.', CATEGORIES : ['Quality']
    , DESCRIPTION: "A revert is undoing a commit, usually due to bugs. Revert ratio indicates the probability of a commit to be reverted \cite{Amit2021CCP}"}
#, 'files_owned' :  {DISPLAY :'Owned Files'
#, 'owned_repository' :  {DISPLAY :'Repository Owner'
#,  'minutes_to_revert' :  {DISPLAY :'Minutes to Revert', CATEGORIES : ['Quality']}

, 'typo_rate':  {DISPLAY :'Spelling Mistakes Rate', CATEGORIES : ['Culture']
                 , DESCRIPTION:"Spelling mistake rate in commits"}
, 'file_typo_rate':  {DISPLAY :'Spelling Mistakes Rate in Files', CATEGORIES : ['Culture']}
, 'tangling_rate':  {DISPLAY :'Tangling Commits Rate', CATEGORIES : ['Quality']
                 , DESCRIPTION:"Rate of tangling commits, commits that serve more than a single goal \cite{6624018, herbold2020largescale}. Considered a bad parctice as a large non coherent unit of work"}
, 'bingo_rate':  {DISPLAY :'Bingo Commits Rate', CATEGORIES : ['Quality']
                 , DESCRIPTION:"Rate of bingo commits, commits that fix a bug, reactor and add a new feature. An extnsion of tangling commits \cite{6624018, herbold2020largescale}"}

, 'authors':  {DISPLAY :'Developers', CATEGORIES : ['Project']
        , DESCRIPTION: "The number of developers authoring a commit in the project."} # these are developers that authored a commit
, 'involved_developers_capped_commits':  {DISPLAY :'Involved Developers Capped Commits', CATEGORIES : ['Project']
    , DESCRIPTION: "Sum of commits, capped in 500, done by involved developers."}

, 'involved_developers':  {DISPLAY :'Involved Developers', CATEGORIES : ['Project']
        , DESCRIPTION: "Developers committing at least 12 commits \cite{Amit2021CCP}."}
, 'onboarding_prob':  {DISPLAY :'Onboarding', CATEGORIES : ['Project']
    , DESCRIPTION: "Probability of a developer joining the project to become involved \cite{Amit2021CCP}."}
, 'retention_prob':  {DISPLAY :'Retention Prob.', CATEGORIES : ['Project']
    , DESCRIPTION: "Probability that a developer will be active a year after the developer's first commit \cite{Amit2021CCP}."}

, 'commit_hours':  {DISPLAY :'Commit Hours', CATEGORIES : ['Productivity']
                    , DESCRIPTION: "Number of distinct hours of day"}
, 'owned_repository':  {DISPLAY :'Own Repository', CATEGORIES : ['Culture']
        , DESCRIPTION: "Does the contributor own the repository"}
, 'continued_avg':  {DISPLAY :'Retention', CATEGORIES : ['Culture']
        , DESCRIPTION: "Probability of continuing in the next year"}
}

def display_name(feature):
    rc = feature
    f = FEATURES_DISPLAY_DICT.get(feature, None)
    if f:
        rc = f.get(DISPLAY, feature)

    return rc

def feature_category(feature
                     , as_string=True):
    rc = []
    f = FEATURES_DISPLAY_DICT.get(feature, None)
    if f:
        rc = f.get(CATEGORIES, feature)

    if as_string:
        rc = ",".join(rc)

    return rc


def feature_description(feature):
    rc = ''
    f = FEATURES_DISPLAY_DICT.get(feature, None)
    if f:
        rc = f.get(DESCRIPTION, '')

    return rc
