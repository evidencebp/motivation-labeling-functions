create or replace function RandomForest_1 (high_message_length_cur int64, high_refactor_cur int64, high_hours_cur int64, high_message_length_next int64, high_refactor_next int64, high_hours_next int64) as (
  case when high_hours_next <= 0.5 then
    case when high_refactor_next <= 0.5 then
      case when high_message_length_cur <= 0.5 then
        case when high_hours_cur <= 0.5 then
          case when high_refactor_cur <= 0.5 then
            case when high_message_length_next <= 0.5 then
               return 0.7968869698446968 # (22885.0 out of 28718.0)
            else  # if high_message_length_next > 0.5
               return 0.7966666666666666 # (2629.0 out of 3300.0)
            end           else  # if high_refactor_cur > 0.5
             return 0.7736699729486023 # (3432.0 out of 4436.0)
          end         else  # if high_hours_cur > 0.5
           return 0.8046789134872037 # (5125.0 out of 6369.0)
        end       else  # if high_message_length_cur > 0.5
        case when high_message_length_next <= 0.5 then
          case when high_refactor_cur <= 0.5 then
             return 0.7740443896424167 # (2511.0 out of 3244.0)
          else  # if high_refactor_cur > 0.5
             return 0.7641165755919854 # (839.0 out of 1098.0)
          end         else  # if high_message_length_next > 0.5
          case when high_refactor_cur <= 0.5 then
            case when high_hours_cur <= 0.5 then
               return 0.7831291564578229 # (11187.0 out of 14285.0)
            else  # if high_hours_cur > 0.5
               return 0.7170561909497762 # (1442.0 out of 2011.0)
            end           else  # if high_refactor_cur > 0.5
             return 0.7695001591849729 # (4834.0 out of 6282.0)
          end         end       end     else  # if high_refactor_next > 0.5
      case when high_message_length_cur <= 0.5 then
        case when high_refactor_cur <= 0.5 then
          case when high_hours_cur <= 0.5 then
            case when high_message_length_next <= 0.5 then
               return 0.7635116598079561 # (2783.0 out of 3645.0)
            else  # if high_message_length_next > 0.5
               return 0.7687203791469195 # (811.0 out of 1055.0)
            end           else  # if high_hours_cur > 0.5
             return 0.764774044032445 # (660.0 out of 863.0)
          end         else  # if high_refactor_cur > 0.5
          case when high_message_length_next <= 0.5 then
             return 0.7728868485012153 # (2862.0 out of 3703.0)
          else  # if high_message_length_next > 0.5
             return 0.79841449603624 # (705.0 out of 883.0)
          end         end       else  # if high_message_length_cur > 0.5
        case when high_hours_cur <= 0.5 then
          case when high_refactor_cur <= 0.5 then
             return 0.8 # (4416.0 out of 5520.0)
          else  # if high_refactor_cur > 0.5
             return 0.8118160251014005 # (10608.0 out of 13067.0)
          end         else  # if high_hours_cur > 0.5
           return 0.7778532608695652 # (2290.0 out of 2944.0)
        end       end     end   else  # if high_hours_next > 0.5
    case when high_message_length_next <= 0.5 then
      case when high_refactor_cur <= 0.5 then
        case when high_message_length_cur <= 0.5 then
          case when high_refactor_next <= 0.5 then
            case when high_hours_cur <= 0.5 then
               return 0.9238802506381991 # (3981.0 out of 4309.0)
            else  # if high_hours_cur > 0.5
               return 0.922478504162686 # (6759.0 out of 7327.0)
            end           else  # if high_refactor_next > 0.5
             return 0.9239280774550485 # (1336.0 out of 1446.0)
          end         else  # if high_message_length_cur > 0.5
           return 0.9224137931034483 # (963.0 out of 1044.0)
        end       else  # if high_refactor_cur > 0.5
        case when high_refactor_next <= 0.5 then
           return 0.9310529128808124 # (1742.0 out of 1871.0)
        else  # if high_refactor_next > 0.5
          case when high_hours_cur <= 0.5 then
             return 0.9347037484885127 # (773.0 out of 827.0)
          else  # if high_hours_cur > 0.5
             return 0.9399494310998736 # (1487.0 out of 1582.0)
          end         end       end     else  # if high_message_length_next > 0.5
      case when high_refactor_next <= 0.5 then
        case when high_message_length_cur <= 0.5 then
           return 0.9426160337552743 # (1117.0 out of 1185.0)
        else  # if high_message_length_cur > 0.5
          case when high_refactor_cur <= 0.5 then
            case when high_hours_cur <= 0.5 then
               return 0.9134502923976608 # (1562.0 out of 1710.0)
            else  # if high_hours_cur > 0.5
               return 0.8968481375358166 # (2504.0 out of 2792.0)
            end           else  # if high_refactor_cur > 0.5
             return 0.8820058997050148 # (1196.0 out of 1356.0)
          end         end       else  # if high_refactor_next > 0.5
        case when high_refactor_cur <= 0.5 then
          case when high_hours_cur <= 0.5 then
             return 0.917610710607621 # (891.0 out of 971.0)
          else  # if high_hours_cur > 0.5
             return 0.9106776180698152 # (887.0 out of 974.0)
          end         else  # if high_refactor_cur > 0.5
          case when high_hours_cur <= 0.5 then
             return 0.93 # (2139.0 out of 2300.0)
          else  # if high_hours_cur > 0.5
             return 0.903242542153048 # (3482.0 out of 3855.0)
          end         end       end     end   end )