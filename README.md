# [Motivation Research Using Labeling Functions](https://dl.acm.org/doi/abs/10.1145/3661167.3661224)


Motivation is an important factor in software development. However, it is a subjective concept that is hard to quantify and study
empirically. In order to use the wealth of data available about real
software development projects in GitHub, we represent the motivation of developers using labeling functions. These are validated
heuristics that need only be better than a guess, computable on
a dataset. We define four labeling functions for motivation based
on behavioral cues like working in diverse hours of the day. We
validated the functions by agreement with respect to a developers
survey, per person behavior, and temporal changes. We then apply them to 150 thousand developers working on GitHub projects.
Using the identification of motivated developers, we measure developer performance gaps. We show that motivated developers have
up to 70% longer activity period, produce up to 300% more commits,
and invest up to 44% more time per commit.

# Code and data

The data from this article is [here](https://github.com/evidencebp/motivation-labeling-functions/tree/main/data).
The data and code from the survey, "[A Large Scale Survey of Motivation in Software Development and Analysis of its Validity](https://arxiv.org/pdf/2404.08303)" is [here](https://github.com/evidencebp/motivation-survey).

The understand and use the code, start with the [main](https://github.com/evidencebp/motivation-labeling-functions/blob/main/src/scripts/main.py)

This is the replication package of "Motivation Research Using Labeling Functions" by Idan Amit and [Dror G. Feitelson](https://www.cs.huji.ac.il/~feit/).
https://doi.org/10.1145/3661167.3661224
