import numpy as np
import pandas as pd
from pandas.testing import assert_frame_equal
import pytest

from developer_status_twins_analysis import build_same_repo_cnt_abnd, build_same_year_cnt_abnd\
    , build_same_repo_cnt_cnt, relative_diff

@pytest.mark.parametrize(('developers_df'
                            , 'comparision_columns'
                            , 'expected')
    , [
pytest.param(
            pd.DataFrame([
                ['rep1', 'a@a.com', 2001, 'Continue', 20, 40]
                , ['rep1', 'a@a.com', 2002, 'Abandoned', 10, 20]
                , ['rep2', 'a@a.com', 2002, 'Abandoned', 10, 20]
                , ['rep3', 'a@a.com', 2002, 'Abandoned', 10, 20]
                , ['rep2', 'b@a.com', 2002, 'Continue', 10, 20]
                , ['rep3', 'b@a.com', 2002, 'Continue', 10, 20]
                , ['rep3', 'b@a.com', 2003, 'Continue', 10, 20]
                , ['rep4', 'b@a.com', 2002, 'Continue', 10, 20]
                , ['rep4', 'b@a.com', 2004, 'Abandoned', 10, 20]
            ], columns=['repo_name', 'author_email', 'year', 'status', 'commits', 'commit_days'])
            , ['commits', 'commit_days']
            , pd.DataFrame([
                            ['rep1', 'a@a.com', 0.5, 0.5, 1.0005]
                ], columns=['repo_name', 'author_email', 'commits_cmp', 'commit_days_cmp','year_cmp'])

, id='reg1')
                         ])
def test_build_same_repo_cnt_abnd(developers_df: pd.DataFrame
                                            , comparision_columns
                                            , expected: pd.DataFrame):
    """

    :param developers_df:
    :param comparision_columns:
    :param expected:
    :return:
    """

    #import pdb; pdb.set_trace()
    actual = build_same_repo_cnt_abnd(developers_df
                                              , comparision_columns
                                              , relative_diff)

    assert_frame_equal(actual.reset_index(drop=True)
                       , expected.reset_index(drop=True))

@pytest.mark.parametrize(('developers_df'
                            , 'comparision_columns'
                            , 'expected')
    , [
pytest.param(
            pd.DataFrame([
                ['rep1', 'a@a.com', 2001, 'Continue', 20, 40]
                , ['rep1', 'a@a.com', 2002, 'Abandoned', 20, 10]
                , ['rep2', 'a@a.com', 2002, 'Continue', 10, 20]
                , ['rep2', 'b@a.com', 2002, 'Continue', 10, 20]
                , ['rep3', 'b@a.com', 2002, 'Continue', 10, 20]
                , ['rep3', 'b@a.com', 2003, 'Continue', 10, 20]
                , ['rep4', 'b@a.com', 2002, 'Continue', 10, 20]
                , ['rep4', 'b@a.com', 2004, 'Abandoned', 10, 20]
            ], columns=['repo_name', 'author_email', 'year', 'status', 'commits', 'commit_days'])
            , ['commits', 'commit_days']
            , pd.DataFrame([

                            [2002, 'a@a.com', 2.0, 0.5, None]
                ], columns=[ 'year', 'author_email', 'commits_cmp', 'commit_days_cmp','repo_name_cmp'])

, id='reg1')
                         ])
def test_build_same_year_cnt_abnd(developers_df: pd.DataFrame
                                            , comparision_columns
                                            , expected: pd.DataFrame):
    """

    :param developers_df:
    :param comparision_columns:
    :param expected:
    :return:
    """

    #import pdb; pdb.set_trace()
    actual = build_same_year_cnt_abnd(developers_df
                                              , comparision_columns
                                              , relative_diff)

    assert_frame_equal(actual.reset_index(drop=True)
                       , expected.reset_index(drop=True))



@pytest.mark.parametrize(('developers_df'
                            , 'comparision_columns'
                            , 'expected')
    , [
pytest.param(
            pd.DataFrame([
                ['rep1', 'a@a.com', 2001, 'Continue', 20, 40]
                , ['rep1', 'a@a.com', 2002, 'Abandoned', 20, 10]
                , ['rep2', 'a@a.com', 2002, 'Continue', 10, 20]
                , ['rep2', 'b@a.com', 2002, 'Continue', 10, 20]
                , ['rep3', 'b@a.com', 2002, 'Continue', 10, 20]
                , ['rep3', 'b@a.com', 2003, 'Continue', 20, 10]
                , ['rep4', 'b@a.com', 2002, 'Continue', 10, 20]
                , ['rep4', 'b@a.com', 2004, 'Abandoned', 10, 20]
            ], columns=['repo_name', 'author_email', 'year', 'status', 'commits', 'commit_days'])
            , ['commits', 'commit_days']
            , pd.DataFrame([
                            ['rep3', 'b@a.com', 2.0, 0.5, 1.0005]
                ], columns=['repo_name', 'author_email', 'commits_cmp', 'commit_days_cmp','year_cmp'])

, id='reg1')
                         ])
def test_build_same_repo_cnt_cnt(developers_df: pd.DataFrame
                                            , comparision_columns
                                            , expected: pd.DataFrame):
    """

    :param developers_df:
    :param comparision_columns:
    :param expected:
    :return:
    """

    #import pdb; pdb.set_trace()
    actual = build_same_repo_cnt_cnt(developers_df
                                              , comparision_columns
                                              , relative_diff)

    assert_frame_equal(actual.reset_index(drop=True)
                       , expected.reset_index(drop=True))

