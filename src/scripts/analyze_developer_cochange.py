from os.path import join

import pandas as pd

from configuration import DATA_PATH
from build_retention_model import controls
from data_utils import get_developer_motivation_per_year_ds
from cochange_analysis import cochange_analysis, cochange_analysis_by_value, the_higher_the_better\
    , the_lower_the_better, cochange_by_value_to_df

COCHANGE_CONTROLLED_FILE_FORMAT = 'cochange_by_{i}_ctl_{ctl}.csv'

COCHANGE_FILE_FORMAT = 'cochange_by_{i}.csv'

MINIMAL_COMMIT_PER_DEV = 50

LABELING_FUNCTIONS_DICT = {
    'message_length_avg': the_higher_the_better
    , 'refactor_mle': the_higher_the_better
    , 'commit_hours': the_higher_the_better

}

METRICS_DICT = {

    'ccp': the_lower_the_better
    , 'same_date_duration_avg': the_lower_the_better
    , 'commits': the_higher_the_better

    , 'commit_days': the_higher_the_better
    , 'commit_period': the_higher_the_better

    , 'files_edited': the_higher_the_better
                }

def analyze_developer_cochange():

    keys = ['author_email']

    df = get_developer_motivation_per_year_ds()


    for cur_lb in LABELING_FUNCTIONS_DICT.keys():

        features_dict = {cur_lb : LABELING_FUNCTIONS_DICT[cur_lb]}
        features_dict.update({k : LABELING_FUNCTIONS_DICT[k] for k in LABELING_FUNCTIONS_DICT.keys() if k != cur_lb})
        features_dict.update(METRICS_DICT)

        stats = cochange_analysis(df
                                    , metrics_dict=features_dict
                                    , keys=keys
                                    , control_variables=[]
                                   , min_cnt_column='commits'
                                   , min_cnt_threshold=MINIMAL_COMMIT_PER_DEV
                                  )

        stats_df = pd.DataFrame.from_dict(stats, orient='index')
        stats_df = (stats_df.reset_index()).rename(columns={'index': 'feature'})
        stats_df = stats_df.sort_values(['precision_lift','feature']
                                            , ascending=[False, True])
        stats_df.to_csv(join(DATA_PATH
                             , COCHANGE_FILE_FORMAT.format(i=cur_lb))
                        , index=False)

    return stats_df


def analyze_developer_cochange_with_controls():

    keys = ['author_email']

    df = get_developer_motivation_per_year_ds()


    for cur_lb in LABELING_FUNCTIONS_DICT.keys():

        features_dict = {cur_lb : LABELING_FUNCTIONS_DICT[cur_lb]}
        features_dict.update({k : LABELING_FUNCTIONS_DICT[k] for k in LABELING_FUNCTIONS_DICT.keys() if k != cur_lb})
        features_dict.update(METRICS_DICT)

        for control in controls:
            grouped_stats = cochange_analysis_by_value(df
                                       , metrics_dict=features_dict
                                       , fixed_variable=control
                                       , fixed_values=None
                                       , keys=keys
                                       )
            lead_column = 'metric'
            grouped_stats_df = cochange_by_value_to_df(grouped_stats
                                                       , fixed_variable=control
                                                       , outputfile=join(DATA_PATH
                                                                         , COCHANGE_CONTROLLED_FILE_FORMAT.format(i=cur_lb
                                                                                                       , ctl=control))
                                                       , lead_column=lead_column
                                                       )

def print_lf_cochange():


    dfs = []
    for classifier in sorted(LABELING_FUNCTIONS_DICT.keys()):
        stats = pd.read_csv(join(DATA_PATH
                             , COCHANGE_FILE_FORMAT.format(i=classifier)))
        for concept in sorted(LABELING_FUNCTIONS_DICT.keys()):
            df = stats[stats.feature == concept][['accuracy'
                                                  , 'precision'
                                                  , 'precision_lift'
                                                  , 'lift_over_independent']]
            df['classifier'] = classifier
            df['concept'] = concept
            dfs.append(df)


    stats_df = pd.concat(dfs).sort_values(['concept', 'classifier'])
    stats_df['text'] = stats_df.apply(lambda x: '{p} ({pl})'.format(p=x.precision
                                                                  , pl=x.precision_lift)
                                      , axis='columns')
    print(stats_df[['concept', 'classifier', 'text']])


def control_violations():

    rows = []
    for cur_lb in LABELING_FUNCTIONS_DICT.keys():

        for control in controls:
            stats = pd.read_csv(join(DATA_PATH
                                     , COCHANGE_CONTROLLED_FILE_FORMAT.format(i=cur_lb
                                                                   , ctl=control)))
            stats = stats[['metric', control, 'precision_lift']]
            stats.columns = ['metric', 'violation', 'precision_lift']

            stats['control var'] = control
            stats['classifier'] = cur_lb
            rows.append(stats)

    stats_df = pd.concat(rows).sort_values(['classifier', 'control var', 'precision_lift'])
    stats_df = stats_df[stats_df.metric.isin(LABELING_FUNCTIONS_DICT.keys())]
    print('cases', len(stats_df))
    stats_df = stats_df[stats_df.precision_lift < 0.0]
    print('violations', len(stats_df))
    print(stats_df[['classifier', 'metric', 'control var',  'violation', 'precision_lift']])

    print('strong violations', len(stats_df[stats_df.precision_lift <= -0.05]))
    print(stats_df[stats_df.precision_lift <= -0.05]
          [['classifier', 'metric', 'control var',  'violation', 'precision_lift']])


if __name__ == "__main__":
    #analyze_developer_cochange_with_controls()
    #analyze_developer_cochange()
    #print_lf_cochange()
    control_violations()
