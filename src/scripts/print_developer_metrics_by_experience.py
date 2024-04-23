from os.path import join
import pandas as pd

from configuration import DATA_PATH, DEV_BY_EXPERIENCE_FILE, ALL_FEATURES_DICT, COMMON_METRIC, LAST_ANALYZED_YEAR\
    , FEATURES_NAMES
from decorate_features import display_name, feature_category
from decorate_figure import decorate_figure
from df_to_latex_table import df_to_latex_table
from plot_multi_bar import plot_multi_line


def is_monotone_by_experience(row):
    if row.metric in ALL_FEATURES_DICT.keys():
        rc = ((ALL_FEATURES_DICT[row.metric](row['1'], row['2'])
               and ALL_FEATURES_DICT[row.metric](row['2'], row['3'])
               and ALL_FEATURES_DICT[row.metric](row['3'], row['4'])
               and ALL_FEATURES_DICT[row.metric](row['4'], row['5'])
               and ALL_FEATURES_DICT[row.metric](row['5'], row['6'])
               ) > 0)
    else:
        rc = None

    return rc

"""
def is_monotone_by_experience(row):
    if row.metric in ALL_FEATURES_DICT.keys():
        rc = ((ALL_FEATURES_DICT[row.metric](row['2018'], row['2019'])
               and ALL_FEATURES_DICT[row.metric](row['2017'], row['2018'])
               and ALL_FEATURES_DICT[row.metric](row['2016'], row['2017'])
               and ALL_FEATURES_DICT[row.metric](row['2015'], row['2016'])
               and ALL_FEATURES_DICT[row.metric](row['2014'], row['2015'])) > 0)
    else:
        rc = None

    return rc

"""
def print_developer_metrics_by_experience():

    COL_SIGNATURE = '_rel_delta'

    df = pd.read_csv(join(DATA_PATH
                          , DEV_BY_EXPERIENCE_FILE))

    df = df[df.developers >= 500]
    years = df.year.unique()
    base_metrics = FEATURES_NAMES #[i.replace("_delta", "") for i in df.columns if '_delta' in i]
    for i in base_metrics:
        try:
            df[i + COL_SIGNATURE] = df[i + "_delta"].divide(df["first_" + i])
        except Exception:
            print("problem finding" , i)

    df.to_csv(join(DATA_PATH
                          , DEV_BY_EXPERIENCE_FILE)
              , index=False)

    df = df[ ['year', 'cases' , 'developers'] + [i for i in df.columns if COL_SIGNATURE in i]]

    df = df.T.reset_index()
    df.columns = [COMMON_METRIC] + list([str(LAST_ANALYZED_YEAR - i) for i in years])
    df = df[df[COMMON_METRIC] != 'year']

    df[COMMON_METRIC] = df[COMMON_METRIC].map(lambda x: x.replace(COL_SIGNATURE, ""))

    #df['Monotonicity'] = df.apply(is_monotone_by_experience, axis=1)
    #df['Monotonicity'] = df['Monotonicity'].map(lambda x: '' if x is None else 'True' if x > 0 else 'False')


    df['Category'] = df[COMMON_METRIC].map(feature_category)
    df[COMMON_METRIC] = df[COMMON_METRIC].map(display_name)

    df = df.sort_values(['Category', COMMON_METRIC])
    df = df.rename(columns={'metric': 'Metric'})
    df.fillna('')

    df_to_latex_table(df[['Category','Metric', '1', '2', '3', '4', '5', '6']]
                        , caption=' \label{tab:dev-experience} Performance by Experience'
                        , columns_to_name=None
                        , star_table=True
                        , columns_header=None)


def plot_experince_graph(df
                         , subject
                         , metrics):

    metrics_description = [{'name': i, 'content': i} for i in metrics
                          ]

    fig = plot_multi_line(df
        , grouping_column='Years'
        , metrics=metrics_description)

    fig = decorate_figure(fig
                          , title='Metrics Lift by Years of Experience ' + subject
                          , xaxis_title='Years of Experience'
                          , yaxis_title='Metirc Lift over First Year in Project'
                          , font_dict=dict(
                                    family="Courier New, monospace",
                                    size=18,
                                    color="black"
                                )
                          )

    fig.show()

def plot_graph():

    COL_SIGNATURE = '_rel_delta'

    df = pd.read_csv(join(DATA_PATH
                          , DEV_BY_EXPERIENCE_FILE))

    df = df[df.developers >= 500]
    years = df.year.unique()
    base_metrics = FEATURES_NAMES #[i.replace("_delta", "") for i in df.columns if '_delta' in i]
    for i in base_metrics:
        try:
            df[i + COL_SIGNATURE] = df[i + "_delta"].divide(df["first_" + i])
        except Exception:
            print("problem finding" , i)

    df.to_csv(join(DATA_PATH
                          , DEV_BY_EXPERIENCE_FILE)
              , index=False)

    df = df[ ['year', 'cases' , 'developers'] + [i for i in df.columns if COL_SIGNATURE in i]]

    df = df.T.reset_index()
    df.columns = [COMMON_METRIC] + list([str(LAST_ANALYZED_YEAR - i) for i in years])
    df = df[df[COMMON_METRIC] != 'year']

    df[COMMON_METRIC] = df[COMMON_METRIC].map(lambda x: x.replace(COL_SIGNATURE, ""))
    categories = set(df[COMMON_METRIC].map(feature_category))

    #df['Monotonicity'] = df.apply(is_monotone_by_experience, axis=1)
    #df['Monotonicity'] = df['Monotonicity'].map(lambda x: '' if x is None else 'True' if x > 0 else 'False')


    df[COMMON_METRIC] = df[COMMON_METRIC].map(display_name)

    df = df.rename(columns={'metric': 'Years'})
    df.fillna('')

    df = df.T.reset_index()
    df.columns = df.iloc[0]
    df = df[df['Years'] != 'Years']

    """
    for cat in categories:
        metrics = sorted(set([display_name(m) for m in FEATURES_NAMES if feature_category(m) == cat])
                         - set(['Years', 'cases', 'developers', 'Merged Pull Requests', 'Merged Issues']))

        plot_experince_graph(df
                             , subject=cat
                             , metrics=metrics)
    """

    # For lecture
    intersting = {'refactor_mle', 'avg_coupling_code_size_cut', 'ccp', 'one_file_fix_rate', 'tests_presence',
                  'same_date_duration_avg'}


    metrics = sorted(set([display_name(m) for m in intersting])
                 - set(['Years', 'cases', 'developers', 'Merged Pull Requests', 'Merged Issues']))

    plot_experince_graph(df
                     , subject=""
                     , metrics=metrics)


    # For lecture
    intersting = {'refactor_mle', 'avg_coupling_code_size_cut', 'ccp', 'one_file_fix_rate', 'tests_presence',
                  'same_date_duration_avg'}


    metrics = sorted(set([display_name(m) for m in intersting])
                 - set(['Years', 'cases', 'developers', 'Merged Pull Requests', 'Merged Issues']))

    plot_experince_graph(df
                     , subject=""
                     , metrics=metrics)

if __name__ == "__main__":
    print_developer_metrics_by_experience()
    plot_graph()