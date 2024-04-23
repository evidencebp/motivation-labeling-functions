metrics_description = [{'name': 'CCP in Activities'
                           , 'content': 'ccp_avg'}
    , {'name': 'Refactor'
                           , 'content': 'refactor_mle_avg'}
    , {'name': 'Tests Presence'
                           , 'content': 'tests_presence_avg'}
    , {'name': 'Single Line Message Probability'
                           , 'content': 'single_line_message_ratio_avg'}
                       ]
metrics_to_normalize = ['commits_avg', 'ccp_avg', 'message_length_avg_avg', 'same_date_duration_avg'
    , 'commit_days_avg', 'message_length_avg_avg', 'files_edited_avg', 'files_created_avg', 'files_owned_avg'
    , 'files_edited_ccp_avg', 'files_created_ccp_avg', 'files_owned_ccp_avg']


def add_normalized_metrics(df
                           , metrics_to_normalize
                           , metrics_description):
    for i in metrics_to_normalize:
        normalized_name = i + '_nrm'
        df[i + '_nrm'] = df[i] / df[i].max()
        metrics_description.append({'name': i + ' (nrm)'
                                       , 'content': normalized_name})

    return df, metrics_description

