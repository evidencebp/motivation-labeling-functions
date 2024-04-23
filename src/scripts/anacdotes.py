from data_utils import get_developer_motivation_per_year_ds

from build_retention_model import raw_lb
def developers_num(df):

    print("developers", df.author_email.nunique())

def raw_labeling_functions_correlation(df):
    CONCEPT = 'will_continue'

    df[CONCEPT] = df.apply(lambda x: (x.status == 'Continue')
                           , axis=1)


    print("Raw labeling functions correlation")
    correlations = df[raw_lb + ['commit_days', CONCEPT]].corr()
    print(correlations)

def anacdotes():
    df = get_developer_motivation_per_year_ds()
    developers_num(df)
    raw_labeling_functions_correlation(df)

if __name__ == "__main__":
    anacdotes()