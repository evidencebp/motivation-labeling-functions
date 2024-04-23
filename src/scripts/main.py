import datetime


from plot_performance_by_developer_status import plot_performance_by_developer_status
from plot_performance_by_relative_month import plot_performance_by_relative_month
from developer_adjacent_years import run_build_developer_adjacent_df
from developer_status_twins_analysis import run_developer_status_twins_analysis
from analyze_repo_metrics_stability import run_analayze_repo_metrics_stability
from analyze_repo_pearson import run_analayze_repo_correlation, run_analayze_developer_correlation
from analyze_repo_cochange import run_analayze_repo_cochange
from etl import run_etl
from performance_by_developer_status import performance_by_developer_status
from performance_by_repo_retention import performance_by_repo_retention
from build_continue_model import run_build_models
from aggragete_repo_analysis import run_aggregate_repo_analysis
from print_retention_table import print_retention_table
from plot_retention_deciles import run_plots
from aggregate_motivation_stats import run_aggregate_motivation_stats

def main():

    ### Get Input files from BigQuery (after following main.sql)
    # Run main.sql

    print("About to run {phase}, time {time}".format(phase='Start'
                                                        , time=datetime.datetime.now()))

    print("About to run {phase}, time {time}".format(phase='ETL'
                                                        , time=datetime.datetime.now()))
    run_etl()
    #plot_performance_by_developer_status() # DEPRECATED
    #plot_performance_by_relative_month() # DEPRECATED
    #run_build_developer_adjacent_df() # DEPRECATED

    print("About to run {phase}, time {time}".format(phase='Stability'
                                                        , time=datetime.datetime.now()))
    run_analayze_repo_metrics_stability()
    print("About to run {phase}, time {time}".format(phase='Repo Correlation'
                                                        , time=datetime.datetime.now()))
    run_analayze_repo_correlation()
    print("About to run {phase}, time {time}".format(phase='Developer Correlation'
                                                     , time=datetime.datetime.now()))
    run_analayze_developer_correlation()
    print("About to run {phase}, time {time}".format(phase='Cochange'
                                                        , time=datetime.datetime.now()))
    run_analayze_repo_cochange()
    print("About to run {phase}, time {time}".format(phase='Twins'
                                                        , time=datetime.datetime.now()))
    run_developer_status_twins_analysis()
    print("About to run {phase}, time {time}".format(phase='Performance by status'
                                                        , time=datetime.datetime.now()))
    performance_by_developer_status()
    print("About to run {phase}, time {time}".format(phase='Performance by retention'
                                                        , time=datetime.datetime.now()))
    performance_by_repo_retention()
    print("About to run {phase}, time {time}".format(phase='Build models'
                                                        , time=datetime.datetime.now()))
    run_build_models()

    print("About to run {phase}, time {time}".format(phase='Aggregate motivation'
                                                     , time=datetime.datetime.now()))
    run_aggregate_motivation_stats()

    print("About to run {phase}, time {time}".format(phase='Agrergate'
                                                        , time=datetime.datetime.now()))
    run_aggregate_repo_analysis()

    print("About to run {phase}, time {time}".format(phase='Retention table'
                                                        , time=datetime.datetime.now()))
    print_retention_table()
    print("About to run {phase}, time {time}".format(phase='Plot'
                                                        , time=datetime.datetime.now()))
    run_plots()
    print("About to run {phase}, time {time}".format(phase='End'
                                                        , time=datetime.datetime.now()))


if __name__ == "__main__":
    main()



