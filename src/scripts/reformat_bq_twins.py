from os.path import join
import pandas as pd

from configuration import DATA_PATH, DEV_SAME_YEAR_CNT_TWINS_STATS, DEV_SAME_YEAR_CNT_OVER_ABND_TWINS_STATS\
    , DEV_NEAR_YEAR_NOACT_OVER_CNT_TWINS_STATS, DEV_CNT_CNT_TWINS_STATS, DEV_CNT_ABND_TWINS_STATS

conversions = {
    'twins_no_activity_over_continue_bq.csv' : DEV_NEAR_YEAR_NOACT_OVER_CNT_TWINS_STATS
    , 'twins_continue_over_continue_bq.csv' : DEV_SAME_YEAR_CNT_TWINS_STATS
    , 'twins_continue_over_abandoned_bq.csv': DEV_SAME_YEAR_CNT_OVER_ABND_TWINS_STATS
    , 'twins_abandoned_over_prev_bq.csv': DEV_CNT_ABND_TWINS_STATS
    , 'twins_next_over_prev_bq.csv': DEV_CNT_CNT_TWINS_STATS
}

def reformat_twins_bq_file(bq_file
                           , output_file):

    AVG_SUFFIX = "_avg"
    STD_SUFFIX = "_std"


    bq_df = pd.read_csv(bq_file)
    metrics = [i[:-len(STD_SUFFIX)]for i in bq_df.columns if i.endswith(STD_SUFFIX)]

    touples = []
    for i in metrics:
        touples.append((i
                     , bq_df.iloc[0][i+ AVG_SUFFIX]
                     , bq_df.iloc[0][i+ STD_SUFFIX]
                     ))

    df = pd.DataFrame(touples)
    df.columns = ['feature','avg','std']

    df.to_csv(output_file
              , index=False)


def reformat_twins_bq_files():

    for i in conversions.keys():
        reformat_twins_bq_file(bq_file=join(DATA_PATH, i)
                               , output_file=join(DATA_PATH, conversions[i]))

if __name__ == "__main__":
    reformat_twins_bq_files()