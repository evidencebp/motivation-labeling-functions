from os.path import join
import pandas as pd

from configuration import DATA_PATH, FEATURES_NAMES, PERFORMANCE_BY_DEV_STATUS_STATS, ALL_FEATURES_DICT\
    , control_variables
from control_analysis import control_analysis_by_value, check_controlled_results, controlled_performance
from data_utils import get_developer_motivation_per_year_ds, get_repo_ds
from decorate_features import display_name, feature_category
from df_to_latex_table import df_to_latex_table
from normalization_utils import normalize_by_ref

COMMON_METRIC = 'metric'
AGG_COLUMN = 'status'

"""
# With all statuses. However, it is not clear that abandoned are less motivedted than no activity
def is_monotone_by_status(row):
    if row.metric in ALL_FEATURES_DICT.keys():
        rc = ((ALL_FEATURES_DICT[row.metric](row['No activity'], row.Continue)
              and ALL_FEATURES_DICT[row.metric](row.Abandoned, row['No activity'])) >0 )
    else:
        rc = None
    
    return rc
"""


def is_monotone_by_status(row):
    if row.metric in ALL_FEATURES_DICT.keys():
        rc = ALL_FEATURES_DICT[row.metric](row['No activity'], row.Continue) > 0
    else:
        rc = None

    return rc


def performance_by_developer_status():

    dry = get_developer_motivation_per_year_ds()

    ndf = compute_status_performance(dry
                                     , features=FEATURES_NAMES)
    ndf = ndf.rename(columns={'Abandoned': 'Switched'
                              , 'No activity':'Quit'})

    ndf[['metric' , 'Switched' , 'Continue' , 'Quit', 'monotone' ]].to_csv(join(DATA_PATH
                    , PERFORMANCE_BY_DEV_STATUS_STATS)
               , index=False)

    #ndf[COMMON_METRIC] = ndf[COMMON_METRIC].map(lambda x: x.replace("_", " "))
    ndf['Metric'] = ndf.metric.map(display_name)
    ndf['Category'] = ndf.metric.map(feature_category)

    ndf = ndf.sort_values(['Category', 'Metric'])

    df_to_latex_table(ndf[['Category', 'Metric' , 'Switched' , 'Quit', 'Continue', 'Monotonicity' ]]
                        , caption=' \label{tab:pref-by-dev-status} Performance by Developer Status'
                        , columns_to_name=None
                        , star_table=True
                        , columns_header=None)


    return ndf


def compute_status_performance(dry
                               , features):

    gdry = dry.groupby([AGG_COLUMN], as_index=False).agg({i: 'mean' for i in features})
    ndf = normalize_by_ref(df=gdry
                           , ref_column=AGG_COLUMN
                           , ref_val='Continue'
                           , features=features)
    ndf = ndf.T.reset_index()
    ndf.columns = ndf.iloc[0]
    ndf = ndf[ndf.status != AGG_COLUMN]
    ndf = ndf.rename(columns={AGG_COLUMN: COMMON_METRIC})
    ndf['monotone'] = ndf.apply(is_monotone_by_status, axis=1)
    ndf['Monotonicity'] = ndf['monotone'].map(lambda x: 'True' if x > 0 else 'False')

    return ndf


def get_monotonicity(dry
                               , features):
    ndf = compute_status_performance(dry
                               , features)

    return ndf.iloc[0]['Monotonicity']

def control_results():

    dry = get_developer_motivation_per_year_ds()

    for i in control_variables:
        print(i)
        print(controlled_performance(df=dry
                                    , control_variable=i
                                    , features=FEATURES_NAMES
                                    , feature_evaluation_function=get_monotonicity
                                    , control_value_output_file=join(DATA_PATH
                                            , "performance_by_dev_status_ctl_{control}.csv".format(control=i))
                                    , control_summary_output_file=join(DATA_PATH
                                            , "performance_by_dev_status_ctl_{control}_sum.csv".format(control=i))))

if __name__ == "__main__":
    df = performance_by_developer_status()
    control_results()


