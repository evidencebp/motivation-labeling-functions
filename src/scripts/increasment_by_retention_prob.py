"""
This is co-change analysis of repositories.
It is based on the output of analyze_repo_cochange.py

However, due to usability considerations, this output is computed with retention probability as th concept.
Hence, the precision lift computes the lift of improvement in the metric to improve the retention prob.

In our use case, the other direction is more interesting.
By how much an improvement in the retention probability improves the metrics.

The following code switch the concept and the classifier on the original confusion metrices in order to compute that.
"""
from os.path import join
import pandas as pd

from configuration import DATA_PATH, REPO_COHANGE_STATS_TEMPLATE, COCHANGE_OF_METRCIS_BY_RETENTION_PROB

def increasment_by_retention_prob():

    METRIC = 'retention_prob'

    stats_file = REPO_COHANGE_STATS_TEMPLATE.format(metric=METRIC)
    df = pd.read_csv(join(DATA_PATH
                          , stats_file))
    df['original_metric_positive_rate'] = df['hit_rate']
    df['original_metric_precision'] = df.apply(lambda x: x.true_positives/(x.samples*x.hit_rate)  if x.hit_rate> 0 else None
                                               , axis=1) #TP/ hits

    df['original_metric_precision_lift'] =  df['original_metric_precision']/df['positive_rate'] -1
    df = df.sort_values('original_metric_precision_lift'
                        , ascending=False)

    df = df[['feature', 'original_metric_positive_rate', 'original_metric_precision'
        , 'original_metric_precision_lift']]
    df.columns = ['feature', 'hit_rate', 'precision'
        , 'precision_lift']
    df.to_csv(join(DATA_PATH
                   , COCHANGE_OF_METRCIS_BY_RETENTION_PROB))

if __name__ == '__main__':
    increasment_by_retention_prob()

