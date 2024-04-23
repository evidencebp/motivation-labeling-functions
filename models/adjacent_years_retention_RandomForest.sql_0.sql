create or replace function RandomForest_0 (high_message_length_cur int64, high_refactor_cur int64, high_hours_cur int64, high_message_length_next int64, high_refactor_next int64, high_hours_next int64) as (
  case when high_refactor_next <= 0.5 then
    case when high_hours_next <= 0.5 then
      case when high_message_length_cur <= 0.5 then
        case when high_message_length_next <= 0.5 then
          case when high_hours_cur <= 0.5 then
            case when high_refactor_cur <= 0.5 then
               return 0.8011963406052076 # (22770.0 out of 28420.0)
            else  # if high_refactor_cur > 0.5
               return 0.7706351247107226 # (2997.0 out of 3889.0)
            end           else  # if high_hours_cur > 0.5
             return 0.8070710696338838 # (4497.0 out of 5572.0)
          end         else  # if high_message_length_next > 0.5
           return 0.7910641053313188 # (3665.0 out of 4633.0)
        end       else  # if high_message_length_cur > 0.5
        case when high_refactor_cur <= 0.5 then
          case when high_message_length_next <= 0.5 then
             return 0.7865588052271313 # (2528.0 out of 3214.0)
          else  # if high_message_length_next > 0.5
            case when high_hours_cur <= 0.5 then
               return 0.778697072933324 # (11200.0 out of 14383.0)
            else  # if high_hours_cur > 0.5
               return 0.7338308457711443 # (1475.0 out of 2010.0)
            end           end         else  # if high_refactor_cur > 0.5
          case when high_message_length_next <= 0.5 then
             return 0.7587800369685767 # (821.0 out of 1082.0)
          else  # if high_message_length_next > 0.5
             return 0.7767798824297845 # (4757.0 out of 6124.0)
          end         end       end     else  # if high_hours_next > 0.5
      case when high_message_length_cur <= 0.5 then
        case when high_hours_cur <= 0.5 then
           return 0.9251346832621214 # (4980.0 out of 5383.0)
        else  # if high_hours_cur > 0.5
          case when high_refactor_cur <= 0.5 then
             return 0.9258385093167701 # (7453.0 out of 8050.0)
          else  # if high_refactor_cur > 0.5
             return 0.9458515283842794 # (1083.0 out of 1145.0)
          end         end       else  # if high_message_length_cur > 0.5
        case when high_refactor_cur <= 0.5 then
          case when high_message_length_next <= 0.5 then
             return 0.9255555555555556 # (833.0 out of 900.0)
          else  # if high_message_length_next > 0.5
            case when high_hours_cur <= 0.5 then
               return 0.923202614379085 # (1695.0 out of 1836.0)
            else  # if high_hours_cur > 0.5
               return 0.8997071742313324 # (2458.0 out of 2732.0)
            end           end         else  # if high_refactor_cur > 0.5
           return 0.8939140145170296 # (1601.0 out of 1791.0)
        end       end     end   else  # if high_refactor_next > 0.5
    case when high_hours_cur <= 0.5 then
      case when high_refactor_cur <= 0.5 then
        case when high_hours_next <= 0.5 then
          case when high_message_length_next <= 0.5 then
             return 0.7732032365540219 # (3249.0 out of 4202.0)
          else  # if high_message_length_next > 0.5
            case when high_message_length_cur <= 0.5 then
               return 0.7470472440944882 # (759.0 out of 1016.0)
            else  # if high_message_length_cur > 0.5
               return 0.8035214085634254 # (4016.0 out of 4998.0)
            end           end         else  # if high_hours_next > 0.5
          case when high_message_length_cur <= 0.5 then
             return 0.917550058892815 # (779.0 out of 849.0)
          else  # if high_message_length_cur > 0.5
             return 0.895040369088812 # (776.0 out of 867.0)
          end         end       else  # if high_refactor_cur > 0.5
        case when high_message_length_next <= 0.5 then
           return 0.7930795847750866 # (3438.0 out of 4335.0)
        else  # if high_message_length_next > 0.5
          case when high_hours_next <= 0.5 then
             return 0.819603674739959 # (10795.0 out of 13171.0)
          else  # if high_hours_next > 0.5
             return 0.9212389380530973 # (2082.0 out of 2260.0)
          end         end       end     else  # if high_hours_cur > 0.5
      case when high_message_length_cur <= 0.5 then
        case when high_hours_next <= 0.5 then
           return 0.7817848410757946 # (1279.0 out of 1636.0)
        else  # if high_hours_next > 0.5
           return 0.9376854599406528 # (2528.0 out of 2696.0)
        end       else  # if high_message_length_cur > 0.5
         return 0.8556184109025456 # (6655.0 out of 7778.0)
      end     end   end )