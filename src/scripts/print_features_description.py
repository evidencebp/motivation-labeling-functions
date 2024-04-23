from configuration import FEATURES_NAMES
from decorate_features import FEATURES_DISPLAY_DICT, feature_category, feature_description, display_name

def get_categories():
    categories = []

    for i in FEATURES_DISPLAY_DICT.keys():
        categories = categories + feature_category(i
                                                   , as_string=False)

    categories = sorted(list(set(categories)))

    return categories

def print_category_features(category
                            , features_restriction=None):

    print("\n Features of {category}\n".format(category=category))
    print(r"\begin{itemize}")
    for i in sorted(FEATURES_DISPLAY_DICT.keys(), key=display_name):
        feature_categories = feature_category(i
                                                   , as_string=False)
        if ((features_restriction is None or i in features_restriction)
            and category in feature_categories):
            print(r"\item {feature} - {description}".format(feature=display_name(i)
                                                            , description=feature_description(i)))

    print(r"\end{itemize}")

def print_features():
    for i in get_categories():
        print_category_features(i
                                , features_restriction=FEATURES_NAMES)

def print_project_features():

    print_category_features("Project")

if __name__ == "__main__":
    print_features()
    print_project_features()