create or replace function RandomForest_9 (high_message_length_cur int64, high_refactor_cur int64, high_hours_cur int64, high_message_length_next int64, high_refactor_next int64, high_hours_next int64) as (
  case when high_hours_next <= 0.5 then
    case when high_hours_cur <= 0.5 then
      case when high_message_length_next <= 0.5 then
        case when high_refactor_next <= 0.5 then
          case when high_message_length_cur <= 0.5 then
            case when high_refactor_cur <= 0.5 then
               return 0.7964819700967458 # (22640.0 out of 28425.0)
            else  # if high_refactor_cur > 0.5
               return 0.7578063500393597 # (2888.0 out of 3811.0)
            end           else  # if high_message_length_cur > 0.5
            case when high_refactor_cur <= 0.5 then
               return 0.7657318741450069 # (2239.0 out of 2924.0)
            else  # if high_refactor_cur > 0.5
               return 0.7444794952681388 # (708.0 out of 951.0)
            end           end         else  # if high_refactor_next > 0.5
          case when high_message_length_cur <= 0.5 then
            case when high_refactor_cur <= 0.5 then
               return 0.7618660157309466 # (2809.0 out of 3687.0)
            else  # if high_refactor_cur > 0.5
               return 0.7691013126893302 # (2285.0 out of 2971.0)
            end           else  # if high_message_length_cur > 0.5
             return 0.7566539923954373 # (796.0 out of 1052.0)
          end         end       else  # if high_message_length_next > 0.5
        case when high_refactor_cur <= 0.5 then
          case when high_refactor_next <= 0.5 then
            case when high_message_length_cur <= 0.5 then
               return 0.7909752547307133 # (2717.0 out of 3435.0)
            else  # if high_message_length_cur > 0.5
               return 0.7783704119587339 # (11091.0 out of 14249.0)
            end           else  # if high_refactor_next > 0.5
            case when high_message_length_cur <= 0.5 then
               return 0.764034253092293 # (803.0 out of 1051.0)
            else  # if high_message_length_cur > 0.5
               return 0.7980384307445957 # (3987.0 out of 4996.0)
            end           end         else  # if high_refactor_cur > 0.5
          case when high_refactor_next <= 0.5 then
             return 0.7810543657331137 # (4741.0 out of 6070.0)
          else  # if high_refactor_next > 0.5
             return 0.8152481455991435 # (10661.0 out of 13077.0)
          end         end       end     else  # if high_hours_cur > 0.5
      case when high_message_length_cur <= 0.5 then
        case when high_message_length_next <= 0.5 then
          case when high_refactor_next <= 0.5 then
             return 0.7985560838175735 # (4535.0 out of 5679.0)
          else  # if high_refactor_next > 0.5
             return 0.8025936599423631 # (1114.0 out of 1388.0)
          end         else  # if high_message_length_next > 0.5
           return 0.7480392156862745 # (763.0 out of 1020.0)
        end       else  # if high_message_length_cur > 0.5
         return 0.7495884096147514 # (4553.0 out of 6074.0)
      end     end   else  # if high_hours_next > 0.5
    case when high_message_length_cur <= 0.5 then
      case when high_message_length_next <= 0.5 then
        case when high_refactor_cur <= 0.5 then
          case when high_hours_cur <= 0.5 then
             return 0.9259718775847808 # (4478.0 out of 4836.0)
          else  # if high_hours_cur > 0.5
            case when high_refactor_next <= 0.5 then
               return 0.9253591086051819 # (6893.0 out of 7449.0)
            else  # if high_refactor_next > 0.5
               return 0.9117997616209773 # (765.0 out of 839.0)
            end           end         else  # if high_refactor_cur > 0.5
          case when high_refactor_next <= 0.5 then
             return 0.9291091593475533 # (1481.0 out of 1594.0)
          else  # if high_refactor_next > 0.5
             return 0.9308924485125858 # (2034.0 out of 2185.0)
          end         end       else  # if high_message_length_next > 0.5
         return 0.9402202412165706 # (1793.0 out of 1907.0)
      end     else  # if high_message_length_cur > 0.5
      case when high_refactor_cur <= 0.5 then
        case when high_hours_cur <= 0.5 then
          case when high_refactor_next <= 0.5 then
             return 0.9153846153846154 # (2023.0 out of 2210.0)
          else  # if high_refactor_next > 0.5
             return 0.9076212471131639 # (786.0 out of 866.0)
          end         else  # if high_hours_cur > 0.5
          case when high_refactor_next <= 0.5 then
             return 0.9073684210526316 # (3017.0 out of 3325.0)
          else  # if high_refactor_next > 0.5
             return 0.9149659863945578 # (807.0 out of 882.0)
          end         end       else  # if high_refactor_cur > 0.5
        case when high_hours_cur <= 0.5 then
           return 0.9280958721704394 # (2788.0 out of 3004.0)
        else  # if high_hours_cur > 0.5
           return 0.9088733798604187 # (4558.0 out of 5015.0)
        end       end     end   end )