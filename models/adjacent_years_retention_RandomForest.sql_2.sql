create or replace function RandomForest_2 (high_message_length_cur int64, high_refactor_cur int64, high_hours_cur int64, high_message_length_next int64, high_refactor_next int64, high_hours_next int64) as (
  case when high_hours_cur <= 0.5 then
    case when high_refactor_next <= 0.5 then
      case when high_hours_next <= 0.5 then
        case when high_message_length_next <= 0.5 then
          case when high_refactor_cur <= 0.5 then
            case when high_message_length_cur <= 0.5 then
               return 0.7997045686350368 # (22738.0 out of 28433.0)
            else  # if high_message_length_cur > 0.5
               return 0.7738675958188154 # (2221.0 out of 2870.0)
            end           else  # if high_refactor_cur > 0.5
            case when high_message_length_cur <= 0.5 then
               return 0.7598971722365039 # (2956.0 out of 3890.0)
            else  # if high_message_length_cur > 0.5
               return 0.7537473233404711 # (704.0 out of 934.0)
            end           end         else  # if high_message_length_next > 0.5
          case when high_message_length_cur <= 0.5 then
             return 0.7896181682056401 # (3164.0 out of 4007.0)
          else  # if high_message_length_cur > 0.5
            case when high_refactor_cur <= 0.5 then
               return 0.7781221384799606 # (11047.0 out of 14197.0)
            else  # if high_refactor_cur > 0.5
               return 0.7842516753536858 # (4213.0 out of 5372.0)
            end           end         end       else  # if high_hours_next > 0.5
        case when high_message_length_cur <= 0.5 then
           return 0.9300622482607104 # (5080.0 out of 5462.0)
        else  # if high_message_length_cur > 0.5
           return 0.9224699828473414 # (2689.0 out of 2915.0)
        end       end     else  # if high_refactor_next > 0.5
      case when high_hours_next <= 0.5 then
        case when high_refactor_cur <= 0.5 then
          case when high_message_length_next <= 0.5 then
             return 0.7532894736842105 # (3206.0 out of 4256.0)
          else  # if high_message_length_next > 0.5
            case when high_message_length_cur <= 0.5 then
               return 0.7649325626204239 # (794.0 out of 1038.0)
            else  # if high_message_length_cur > 0.5
               return 0.7902165506573859 # (4087.0 out of 5172.0)
            end           end         else  # if high_refactor_cur > 0.5
          case when high_message_length_next <= 0.5 then
             return 0.771570796460177 # (2790.0 out of 3616.0)
          else  # if high_message_length_next > 0.5
             return 0.8252580815311582 # (10952.0 out of 13271.0)
          end         end       else  # if high_hours_next > 0.5
        case when high_message_length_next <= 0.5 then
           return 0.9261829652996846 # (1468.0 out of 1585.0)
        else  # if high_message_length_next > 0.5
          case when high_refactor_cur <= 0.5 then
             return 0.9297872340425531 # (874.0 out of 940.0)
          else  # if high_refactor_cur > 0.5
             return 0.9281135531135531 # (2027.0 out of 2184.0)
          end         end       end     end   else  # if high_hours_cur > 0.5
    case when high_refactor_next <= 0.5 then
      case when high_message_length_cur <= 0.5 then
        case when high_hours_next <= 0.5 then
           return 0.8083122629582806 # (5115.0 out of 6328.0)
        else  # if high_hours_next > 0.5
          case when high_refactor_cur <= 0.5 then
             return 0.9187179487179488 # (7166.0 out of 7800.0)
          else  # if high_refactor_cur > 0.5
             return 0.9326750448833034 # (1039.0 out of 1114.0)
          end         end       else  # if high_message_length_cur > 0.5
        case when high_hours_next <= 0.5 then
           return 0.7222921914357683 # (2294.0 out of 3176.0)
        else  # if high_hours_next > 0.5
          case when high_refactor_cur <= 0.5 then
             return 0.8982637831251904 # (2949.0 out of 3283.0)
          else  # if high_refactor_cur > 0.5
             return 0.8769074262461851 # (862.0 out of 983.0)
          end         end       end     else  # if high_refactor_next > 0.5
      case when high_hours_next <= 0.5 then
        case when high_refactor_cur <= 0.5 then
           return 0.7761194029850746 # (1144.0 out of 1474.0)
        else  # if high_refactor_cur > 0.5
          case when high_message_length_cur <= 0.5 then
             return 0.8111380145278451 # (670.0 out of 826.0)
          else  # if high_message_length_cur > 0.5
             return 0.7646810308407267 # (1810.0 out of 2367.0)
          end         end       else  # if high_hours_next > 0.5
        case when high_message_length_cur <= 0.5 then
          case when high_refactor_cur <= 0.5 then
             return 0.9267840593141798 # (1000.0 out of 1079.0)
          else  # if high_refactor_cur > 0.5
             return 0.9352380952380952 # (1473.0 out of 1575.0)
          end         else  # if high_message_length_cur > 0.5
          case when high_refactor_cur <= 0.5 then
             return 0.9135381114903299 # (803.0 out of 879.0)
          else  # if high_refactor_cur > 0.5
             return 0.9133299543841865 # (3604.0 out of 3946.0)
          end         end       end     end   end )