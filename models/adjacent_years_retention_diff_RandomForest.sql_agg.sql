create or replace function RandomForest_agg (message_length_avg_diff int64, refactor_mle_diff int64, commit_hours_diff int64) as (
 
(
RandomForest_0(message_length_avg_diff,refactor_mle_diff,commit_hours_diff)
 + RandomForest_1(message_length_avg_diff,refactor_mle_diff,commit_hours_diff)
 + RandomForest_2(message_length_avg_diff,refactor_mle_diff,commit_hours_diff)
 + RandomForest_3(message_length_avg_diff,refactor_mle_diff,commit_hours_diff)
 + RandomForest_4(message_length_avg_diff,refactor_mle_diff,commit_hours_diff)
 + RandomForest_5(message_length_avg_diff,refactor_mle_diff,commit_hours_diff)
 + RandomForest_6(message_length_avg_diff,refactor_mle_diff,commit_hours_diff)
 + RandomForest_7(message_length_avg_diff,refactor_mle_diff,commit_hours_diff)
 + RandomForest_8(message_length_avg_diff,refactor_mle_diff,commit_hours_diff)
 + RandomForest_9(message_length_avg_diff,refactor_mle_diff,commit_hours_diff)
) /10
)