from os.path import join
import pandas as pd

from data_utils import get_developer_motivation_per_year_ds

from plot_deciles import plot_deciles

def run_plots():
    df = get_developer_motivation_per_year_ds()
    df = df[df.commits >= 200]


    grouping_columns = ['ccp'#, 'implementation_involved_rate', 'abs_content_ratio'
                        ]

    metrics = ['ccp']

    for grouping_column in grouping_columns:
        for metric_column in metrics:
            fig = plot_deciles(df
                             , grouping_column
                             , metric_column
                             , title="CCP by Developers Deciles"
                             , xaxis_title="Deciles of Developers, ordered by CCP"
                             , output_file=None)
            fig.show()




if __name__ == "__main__":
    run_plots()