create or replace function RandomForest_7 (high_message_length_cur int64, high_refactor_cur int64, high_hours_cur int64, high_message_length_next int64, high_refactor_next int64, high_hours_next int64) as (
  case when high_refactor_next <= 0.5 then
    case when high_hours_next <= 0.5 then
      case when high_message_length_cur <= 0.5 then
        case when high_message_length_next <= 0.5 then
          case when high_hours_cur <= 0.5 then
            case when high_refactor_cur <= 0.5 then
               return 0.7961731626229044 # (22511.0 out of 28274.0)
            else  # if high_refactor_cur > 0.5
               return 0.7708653353814644 # (3011.0 out of 3906.0)
            end           else  # if high_hours_cur > 0.5
            case when high_refactor_cur <= 0.5 then
               return 0.7914238134887593 # (3802.0 out of 4804.0)
            else  # if high_refactor_cur > 0.5
               return 0.8253588516746412 # (690.0 out of 836.0)
            end           end         else  # if high_message_length_next > 0.5
           return 0.7845888193395208 # (3635.0 out of 4633.0)
        end       else  # if high_message_length_cur > 0.5
        case when high_hours_cur <= 0.5 then
          case when high_refactor_cur <= 0.5 then
            case when high_message_length_next <= 0.5 then
               return 0.7846047635484984 # (2273.0 out of 2897.0)
            else  # if high_message_length_next > 0.5
               return 0.7817451933234735 # (11100.0 out of 14199.0)
            end           else  # if high_refactor_cur > 0.5
            case when high_message_length_next <= 0.5 then
               return 0.7507692307692307 # (732.0 out of 975.0)
            else  # if high_message_length_next > 0.5
               return 0.7823474178403755 # (4166.0 out of 5325.0)
            end           end         else  # if high_hours_cur > 0.5
          case when high_refactor_cur <= 0.5 then
             return 0.7310556285589137 # (1669.0 out of 2283.0)
          else  # if high_refactor_cur > 0.5
             return 0.6847237269772481 # (632.0 out of 923.0)
          end         end       end     else  # if high_hours_next > 0.5
      case when high_message_length_cur <= 0.5 then
        case when high_refactor_cur <= 0.5 then
          case when high_message_length_next <= 0.5 then
            case when high_hours_cur <= 0.5 then
               return 0.9291375291375291 # (3986.0 out of 4290.0)
            else  # if high_hours_cur > 0.5
               return 0.9221434415053177 # (6763.0 out of 7334.0)
            end           else  # if high_message_length_next > 0.5
             return 0.9248188405797102 # (1021.0 out of 1104.0)
          end         else  # if high_refactor_cur > 0.5
           return 0.9208309938236946 # (1640.0 out of 1781.0)
        end       else  # if high_message_length_cur > 0.5
        case when high_message_length_next <= 0.5 then
           return 0.93929173693086 # (1114.0 out of 1186.0)
        else  # if high_message_length_next > 0.5
          case when high_hours_cur <= 0.5 then
             return 0.9195020746887966 # (2216.0 out of 2410.0)
          else  # if high_hours_cur > 0.5
            case when high_refactor_cur <= 0.5 then
               return 0.8883994126284875 # (2420.0 out of 2724.0)
            else  # if high_refactor_cur > 0.5
               return 0.8762135922330098 # (722.0 out of 824.0)
            end           end         end       end     end   else  # if high_refactor_next > 0.5
    case when high_hours_next <= 0.5 then
      case when high_hours_cur <= 0.5 then
        case when high_message_length_cur <= 0.5 then
          case when high_message_length_next <= 0.5 then
            case when high_refactor_cur <= 0.5 then
               return 0.7641204948897257 # (2841.0 out of 3718.0)
            else  # if high_refactor_cur > 0.5
               return 0.768922974324775 # (2306.0 out of 2999.0)
            end           else  # if high_message_length_next > 0.5
             return 0.7662337662337663 # (1357.0 out of 1771.0)
          end         else  # if high_message_length_cur > 0.5
          case when high_refactor_cur <= 0.5 then
             return 0.7956989247311828 # (4366.0 out of 5487.0)
          else  # if high_refactor_cur > 0.5
             return 0.8096783934772761 # (10725.0 out of 13246.0)
          end         end       else  # if high_hours_cur > 0.5
        case when high_message_length_cur <= 0.5 then
          case when high_refactor_cur <= 0.5 then
             return 0.7693251533742331 # (627.0 out of 815.0)
          else  # if high_refactor_cur > 0.5
             return 0.7755813953488372 # (667.0 out of 860.0)
          end         else  # if high_message_length_cur > 0.5
           return 0.777292576419214 # (2314.0 out of 2977.0)
        end       end     else  # if high_hours_next > 0.5
      case when high_message_length_next <= 0.5 then
        case when high_hours_cur <= 0.5 then
           return 0.9254019292604502 # (1439.0 out of 1555.0)
        else  # if high_hours_cur > 0.5
           return 0.928150765606596 # (2364.0 out of 2547.0)
        end       else  # if high_message_length_next > 0.5
        case when high_hours_cur <= 0.5 then
           return 0.9290104486785494 # (3023.0 out of 3254.0)
        else  # if high_hours_cur > 0.5
          case when high_refactor_cur <= 0.5 then
             return 0.912041884816754 # (871.0 out of 955.0)
          else  # if high_refactor_cur > 0.5
             return 0.9105392156862745 # (3715.0 out of 4080.0)
          end         end       end     end   end )