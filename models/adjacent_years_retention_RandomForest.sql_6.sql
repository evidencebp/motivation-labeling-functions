create or replace function RandomForest_6 (high_message_length_cur int64, high_refactor_cur int64, high_hours_cur int64, high_message_length_next int64, high_refactor_next int64, high_hours_next int64) as (
  case when high_hours_cur <= 0.5 then
    case when high_message_length_next <= 0.5 then
      case when high_hours_next <= 0.5 then
        case when high_refactor_cur <= 0.5 then
          case when high_message_length_cur <= 0.5 then
            case when high_refactor_next <= 0.5 then
               return 0.7947966676080204 # (22515.0 out of 28328.0)
            else  # if high_refactor_next > 0.5
               return 0.7672316384180791 # (2716.0 out of 3540.0)
            end           else  # if high_message_length_cur > 0.5
             return 0.7795154860472248 # (2542.0 out of 3261.0)
          end         else  # if high_refactor_cur > 0.5
          case when high_refactor_next <= 0.5 then
            case when high_message_length_cur <= 0.5 then
               return 0.7629517311094264 # (3019.0 out of 3957.0)
            else  # if high_message_length_cur > 0.5
               return 0.759453781512605 # (723.0 out of 952.0)
            end           else  # if high_refactor_next > 0.5
             return 0.7616666666666667 # (2742.0 out of 3600.0)
          end         end       else  # if high_hours_next > 0.5
        case when high_refactor_cur <= 0.5 then
           return 0.9235910404624278 # (5113.0 out of 5536.0)
        else  # if high_refactor_cur > 0.5
           return 0.9329153605015674 # (1488.0 out of 1595.0)
        end       end     else  # if high_message_length_next > 0.5
      case when high_refactor_next <= 0.5 then
        case when high_refactor_cur <= 0.5 then
          case when high_hours_next <= 0.5 then
            case when high_message_length_cur <= 0.5 then
               return 0.810721772985924 # (2707.0 out of 3339.0)
            else  # if high_message_length_cur > 0.5
               return 0.7818892690078894 # (11199.0 out of 14323.0)
            end           else  # if high_hours_next > 0.5
             return 0.9219990658570761 # (1974.0 out of 2141.0)
          end         else  # if high_refactor_cur > 0.5
           return 0.8037537537537538 # (5353.0 out of 6660.0)
        end       else  # if high_refactor_next > 0.5
        case when high_hours_next <= 0.5 then
          case when high_refactor_cur <= 0.5 then
            case when high_message_length_cur <= 0.5 then
               return 0.7537878787878788 # (796.0 out of 1056.0)
            else  # if high_message_length_cur > 0.5
               return 0.8037865748709122 # (4203.0 out of 5229.0)
            end           else  # if high_refactor_cur > 0.5
             return 0.8139780884019645 # (10773.0 out of 13235.0)
          end         else  # if high_hours_next > 0.5
          case when high_refactor_cur <= 0.5 then
             return 0.9230769230769231 # (972.0 out of 1053.0)
          else  # if high_refactor_cur > 0.5
             return 0.9299044151115157 # (2043.0 out of 2197.0)
          end         end       end     end   else  # if high_hours_cur > 0.5
    case when high_hours_next <= 0.5 then
      case when high_message_length_next <= 0.5 then
        case when high_refactor_next <= 0.5 then
           return 0.7854177047002159 # (4729.0 out of 6021.0)
        else  # if high_refactor_next > 0.5
           return 0.7825793382849426 # (1159.0 out of 1481.0)
        end       else  # if high_message_length_next > 0.5
        case when high_message_length_cur <= 0.5 then
           return 0.7428851815505397 # (757.0 out of 1019.0)
        else  # if high_message_length_cur > 0.5
          case when high_refactor_cur <= 0.5 then
             return 0.7299820466786355 # (2033.0 out of 2785.0)
          else  # if high_refactor_cur > 0.5
            case when high_refactor_next <= 0.5 then
               return 0.7263922518159807 # (600.0 out of 826.0)
            else  # if high_refactor_next > 0.5
               return 0.7688147814330779 # (1706.0 out of 2219.0)
            end           end         end       end     else  # if high_hours_next > 0.5
      case when high_message_length_next <= 0.5 then
        case when high_refactor_cur <= 0.5 then
           return 0.9238572894106919 # (8105.0 out of 8773.0)
        else  # if high_refactor_cur > 0.5
          case when high_refactor_next <= 0.5 then
             return 0.9353711790393013 # (1071.0 out of 1145.0)
          else  # if high_refactor_next > 0.5
             return 0.9365482233502538 # (1476.0 out of 1576.0)
          end         end       else  # if high_message_length_next > 0.5
        case when high_refactor_cur <= 0.5 then
          case when high_refactor_next <= 0.5 then
             return 0.8923631990378833 # (2968.0 out of 3326.0)
          else  # if high_refactor_next > 0.5
             return 0.9164882226980728 # (856.0 out of 934.0)
          end         else  # if high_refactor_cur > 0.5
           return 0.9068859198355601 # (4412.0 out of 4865.0)
        end       end     end   end )