create or replace function Tree_ms_md (message_length_avg_diff int64, refactor_mle_diff int64, commit_hours_diff int64) as (
  case when commit_hours_diff <= -2.5 then
    case when commit_hours_diff <= -6.5 then
      case when commit_hours_diff <= -9.5 then
         return 0.19205845856886805 # (1393.0 out of 7253.0)
      else  # if commit_hours_diff > -9.5
         return 0.275 # (3960.0 out of 14400.0)
      end     else  # if commit_hours_diff > -6.5
      case when commit_hours_diff <= -3.5 then
         return 0.35705859221392056 # (11804.0 out of 33059.0)
      else  # if commit_hours_diff > -3.5
         return 0.42056338028169016 # (7465.0 out of 17750.0)
      end     end   else  # if commit_hours_diff > -2.5
    case when commit_hours_diff <= -0.5 then
      case when message_length_avg_diff <= -12.563869953155518 then
         return 0.4292736209721464 # (4716.0 out of 10986.0)
      else  # if message_length_avg_diff > -12.563869953155518
         return 0.49676411515286767 # (17808.0 out of 35848.0)
      end     else  # if commit_hours_diff > -0.5
      case when refactor_mle_diff <= -0.1965874284505844 then
         return 0.48238126504705625 # (4408.0 out of 9138.0)
      else  # if refactor_mle_diff > -0.1965874284505844
         return 0.5805421557330626 # (59451.0 out of 102406.0)
      end     end   end )