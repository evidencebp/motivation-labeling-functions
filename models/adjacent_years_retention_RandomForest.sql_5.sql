create or replace function RandomForest_5 (high_message_length_cur int64, high_refactor_cur int64, high_hours_cur int64, high_message_length_next int64, high_refactor_next int64, high_hours_next int64) as (
  case when high_message_length_cur <= 0.5 then
    case when high_hours_next <= 0.5 then
      case when high_refactor_next <= 0.5 then
        case when high_hours_cur <= 0.5 then
          case when high_refactor_cur <= 0.5 then
            case when high_message_length_next <= 0.5 then
               return 0.7971415398801291 # (22477.0 out of 28197.0)
            else  # if high_message_length_next > 0.5
               return 0.8020304568527918 # (2686.0 out of 3349.0)
            end           else  # if high_refactor_cur > 0.5
             return 0.761301594234549 # (3486.0 out of 4579.0)
          end         else  # if high_hours_cur > 0.5
           return 0.793213828425096 # (4956.0 out of 6248.0)
        end       else  # if high_refactor_next > 0.5
        case when high_message_length_next <= 0.5 then
          case when high_refactor_cur <= 0.5 then
             return 0.7656713015728288 # (3359.0 out of 4387.0)
          else  # if high_refactor_cur > 0.5
             return 0.7779280497700839 # (2876.0 out of 3697.0)
          end         else  # if high_message_length_next > 0.5
           return 0.7767554479418887 # (1604.0 out of 2065.0)
        end       end     else  # if high_hours_next > 0.5
      case when high_refactor_next <= 0.5 then
        case when high_message_length_next <= 0.5 then
          case when high_refactor_cur <= 0.5 then
            case when high_hours_cur <= 0.5 then
               return 0.9261481652434803 # (4013.0 out of 4333.0)
            else  # if high_hours_cur > 0.5
               return 0.9267541510444564 # (6921.0 out of 7468.0)
            end           else  # if high_refactor_cur > 0.5
             return 0.9338235294117647 # (1524.0 out of 1632.0)
          end         else  # if high_message_length_next > 0.5
           return 0.9233361415332771 # (1096.0 out of 1187.0)
        end       else  # if high_refactor_next > 0.5
         return 0.9389312977099237 # (4059.0 out of 4323.0)
      end     end   else  # if high_message_length_cur > 0.5
    case when high_hours_next <= 0.5 then
      case when high_message_length_next <= 0.5 then
         return 0.751994327246942 # (4242.0 out of 5641.0)
      else  # if high_message_length_next > 0.5
        case when high_refactor_cur <= 0.5 then
          case when high_hours_cur <= 0.5 then
            case when high_refactor_next <= 0.5 then
               return 0.7808507651270532 # (11124.0 out of 14246.0)
            else  # if high_refactor_next > 0.5
               return 0.7979559748427673 # (4060.0 out of 5088.0)
            end           else  # if high_hours_cur > 0.5
             return 0.7323449083105735 # (1877.0 out of 2563.0)
          end         else  # if high_refactor_cur > 0.5
          case when high_refactor_next <= 0.5 then
             return 0.7719651240778002 # (4604.0 out of 5964.0)
          else  # if high_refactor_next > 0.5
            case when high_hours_cur <= 0.5 then
               return 0.8192484540986206 # (10334.0 out of 12614.0)
            else  # if high_hours_cur > 0.5
               return 0.7667844522968198 # (1736.0 out of 2264.0)
            end           end         end       end     else  # if high_hours_next > 0.5
      case when high_message_length_next <= 0.5 then
         return 0.9204685573366215 # (1493.0 out of 1622.0)
      else  # if high_message_length_next > 0.5
        case when high_hours_cur <= 0.5 then
          case when high_refactor_next <= 0.5 then
             return 0.9145154464663563 # (2161.0 out of 2363.0)
          else  # if high_refactor_next > 0.5
            case when high_refactor_cur <= 0.5 then
               return 0.9116161616161617 # (722.0 out of 792.0)
            else  # if high_refactor_cur > 0.5
               return 0.924455205811138 # (1909.0 out of 2065.0)
            end           end         else  # if high_hours_cur > 0.5
          case when high_refactor_cur <= 0.5 then
            case when high_refactor_next <= 0.5 then
               return 0.9066713981547196 # (2555.0 out of 2818.0)
            else  # if high_refactor_next > 0.5
               return 0.89375 # (715.0 out of 800.0)
            end           else  # if high_refactor_cur > 0.5
            case when high_refactor_next <= 0.5 then
               return 0.9009216589861752 # (782.0 out of 868.0)
            else  # if high_refactor_next > 0.5
               return 0.9110292182153198 # (3461.0 out of 3799.0)
            end           end         end       end     end   end )