from os.path import join
import pandas as pd

from configuration import DATA_PATH

preferences_base_file = 'preference_stability_pairs_stats'

preferences = ['dev_group'
, 'popularity_group'
, 'is_employee'
, 'license_group'
]
controls = ['age_group'
, 'language_code'
, 'Is_Company'
] + preferences

count = 'cases'

def analyze_preference_stability(df: pd.DataFrame
                                 , preference: str) -> pd.DataFrame:
    cases = df[count].sum()
    same_preference = df[df['a_' + preference] == df['a_' + preference]][count].sum()/cases

    g = df.groupby('a_' + preference, as_index=False).agg({count: 'sum'})
    g['prob'] = g[count]/cases
    g['prob_square'] = g['prob'].map(lambda x: x*x)
    expected_prob = g['prob_square'].sum()
    lift = (same_preference/expected_prob) - 1

    return pd.DataFrame([[preference, same_preference, expected_prob, lift]]
                        , columns=['Preference', 'Accuracy', 'Independent Prob.', 'Lift'])

def analyze_preferences_controlled_stability(df: pd.DataFrame):

    rows = []
    for p in preferences:
        for c in controls:
            if p != c:
                for v in df['a_' + c].unique():

                    stats_df = analyze_preference_stability(df[(df['a_' + c] == v)
                                                            & (df['b_' + c] == v)]
                                                      , p)
                    stats_df['preference'] = p
                    stats_df['control'] = c
                    stats_df['control_val'] = v
                    rows.append(stats_df)

    return pd.concat(rows)

def analyze_preferences_stability(df: pd.DataFrame):

    rows = []
    for p in preferences:
        stats_df = analyze_preference_stability(df
                                          , p)
        stats_df['preference'] = p
        rows.append(stats_df)

    return pd.concat(rows)

def run_analyze_preferences_stability():
    df =  pd.read_csv(join(DATA_PATH
                           , preferences_base_file + '.csv'))
    stats_df = analyze_preferences_stability(df)
    print(stats_df)
    stats_df.to_csv(join(DATA_PATH
                         , preferences_base_file + '_agreement.csv')
                    , index=False)

    controlled_stats_df = analyze_preferences_controlled_stability(df)
    print(controlled_stats_df)
    controlled_stats_df.to_csv(join(DATA_PATH
                         , preferences_base_file + '_controlled_agreement.csv')
                        , index=False)


if __name__ == "__main__":
    run_analyze_preferences_stability()

