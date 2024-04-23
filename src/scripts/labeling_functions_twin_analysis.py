from os.path import join

import pandas as pd

from configuration import DATA_PATH
from confusion_matrix import ConfusionMatrix

lf_names = ['message_length_avg_better'
, 'refactor_mle_avg_better'
, 'commit_hours_better'
]
controls = ['a_age_group'
, 'a_language_code'
, 'a_Is_Company'
, 'a_dev_group'
, 'a_popularity_group'
]
metrics = lf_names + [
'owned_repository_avg_better'
, 'files_edited_avg_better'
, 'ccp_avg_better'
, 'same_date_duration_avg_avg_better'
, 'commit_period_avg_better'
, 'commit_days_avg_better'
]
base_file = 'same_year_lf_twins_pairs_stats'

def labeling_functions_twin_analysis(lf_df):
    count = 'cases'

    rows = []
    for lf in lf_names:
        for m in metrics:
            if lf != m:
                g = lf_df.groupby([lf, m], as_index=False).agg({count: 'sum'})
                cm = ConfusionMatrix(g_df=g
                                     , classifier=lf
                                     , concept=m
                                     , count=count)
                stat = cm.summarize()
                stat['classifier'] = lf
                stat['concept'] = m

                rows.append(stat)

    return pd.DataFrame(rows)

def labeling_functions_twin_analysis_by_controls():

    dfs = []
    for control in controls:
        df = pd.read_csv(join(DATA_PATH
                          , '{f}_by_{control}.csv'.format(f=base_file
                                                                  , control=control[2:])))
        for val in df[control].unique():
            stats_df = labeling_functions_twin_analysis(df[df[control] == val])
            stats_df['control'] = control[2:]
            stats_df['control_val'] = val
            dfs.append(stats_df)

    return pd.concat(dfs)

def run_labeling_functions_twin_analysis(base_file):
    """
    df = pd.read_csv(join(DATA_PATH
                          , base_file + '.csv'))
    stats = labeling_functions_twin_analysis(df)

    stats.to_csv(join(DATA_PATH
                                         , base_file + '_agreement.csv')
                 , index=False)
    """
    controlled_stats = labeling_functions_twin_analysis_by_controls()
    controlled_stats.to_csv(join(DATA_PATH
                                         , base_file + '_controlled_agreement.csv')
                 , index=False)

    print(controlled_stats[(controlled_stats.precision_lift <=0)
                           & (controlled_stats.concept.isin(lf_names))][['classifier', 'concept', 'control', 'control_val']])

    print(controlled_stats[(controlled_stats.precision_lift <=0)][['classifier', 'concept', 'control', 'control_val']])

if __name__ == "__main__":
    #run_labeling_functions_twin_analysis(base_file='same_year_lf_twins_pairs_stats')
    run_labeling_functions_twin_analysis(base_file='adjacent_years_lf_twins_pairs_stats')
