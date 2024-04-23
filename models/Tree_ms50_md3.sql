create or replace function continue.tree (rel_avg_coupling_code_size_cut int64, rel_ccp int64, rel_commit_day_density int64, rel_commit_days int64, rel_commit_period int64, rel_commits int64, rel_commits_per_day int64, rel_corrective_multiline_message_ratio int64, rel_cursing_rate int64, rel_files_created int64, rel_files_edited int64, rel_merged_issues int64, rel_merged_prs int64, rel_message_length_avg int64, rel_multiline_message_ratio int64, rel_negative_sentiment_rate int64, rel_one_file_fix_rate int64, rel_one_file_refactor_rate int64, rel_positive_sentiment_rate int64, rel_prev_touch_ago int64, rel_refactor_mle int64, rel_reverted_ratio int64, rel_same_date_duration_avg int64, rel_tests_presence int64) as (
  case when rel_commit_period <= -0.25578054785728455 then
    case when rel_commit_period <= -0.49005304276943207 then
      case when rel_commits <= -0.28344491124153137 then
          0.24730489265640837 
      else  # if rel_commits > -0.28344491124153137
          0.38130040322580644 
      end     else  # if rel_commit_period > -0.49005304276943207
      case when rel_tests_presence <= -0.6671114265918732 then
          0.5628799392097265 
      else  # if rel_tests_presence > -0.6671114265918732
          0.4276791181873852 
      end     end   else  # if rel_commit_period > -0.25578054785728455
    case when rel_commit_period <= -0.12038585543632507 then
      case when rel_commit_period <= -0.18339360505342484 then
          0.6657115568290354 
      else  # if rel_commit_period > -0.18339360505342484
          0.7718040621266428 
      end     else  # if rel_commit_period > -0.12038585543632507
      case when rel_commit_period <= 0.20082896202802658 then
          0.9251076283074542 
      else  # if rel_commit_period > 0.20082896202802658
          0.8347916938748857 
      end     end   end )