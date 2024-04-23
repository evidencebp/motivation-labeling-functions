create or replace function Tree_ms_md (high_message_length_cur int64, high_refactor_cur int64, high_hours_cur int64, high_message_length_next int64, high_refactor_next int64, high_hours_next int64) as (
  case when high_hours_next <= 0.5 then
    case when high_hours_cur <= 0.5 then
      case when high_message_length_next <= 0.5 then
         return 0.42324008607439284 # (34420.0 out of 81325.0)
      else  # if high_message_length_next > 0.5
         return 0.43678175612624476 # (34169.0 out of 78229.0)
      end     else  # if high_hours_cur > 0.5
      case when high_message_length_cur <= 0.5 then
         return 0.431414113785558 # (6309.0 out of 14624.0)
      else  # if high_message_length_cur > 0.5
         return 0.37052932761087265 # (4662.0 out of 12582.0)
      end     end   else  # if high_hours_next > 0.5
    case when high_message_length_cur <= 0.5 then
      case when high_refactor_next <= 0.5 then
         return 0.7125218589369933 # (13446.0 out of 18871.0)
      else  # if high_refactor_next > 0.5
         return 0.7450110864745011 # (4032.0 out of 5412.0)
      end     else  # if high_message_length_cur > 0.5
      case when high_message_length_next <= 0.5 then
         return 0.7110904007455732 # (1526.0 out of 2146.0)
      else  # if high_message_length_next > 0.5
         return 0.66303700092096 # (12239.0 out of 18459.0)
      end     end   end )