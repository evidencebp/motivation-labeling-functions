create or replace function Tree_ms (high_message_length_cur int64, high_refactor_cur int64, high_hours_cur int64, high_message_length_next int64, high_refactor_next int64, high_hours_next int64) as (
  case when high_hours_next <= 0.5 then
    case when high_hours_cur <= 0.5 then
      case when high_message_length_next <= 0.5 then
        case when high_refactor_next <= 0.5 then
          case when high_refactor_cur <= 0.5 then
            case when high_message_length_cur <= 0.5 then
               return 0.44046037204939814 # (22541.0 out of 51176.0)
            else  # if high_message_length_cur > 0.5
               return 0.4151397371830465 # (2243.0 out of 5403.0)
            end           else  # if high_refactor_cur > 0.5
            case when high_message_length_cur <= 0.5 then
               return 0.3964281058532134 # (3041.0 out of 7671.0)
            else  # if high_message_length_cur > 0.5
               return 0.37108559498956156 # (711.0 out of 1916.0)
            end           end         else  # if high_refactor_next > 0.5
          case when high_message_length_cur <= 0.5 then
            case when high_refactor_cur <= 0.5 then
               return 0.3887429124602406 # (2811.0 out of 7231.0)
            else  # if high_refactor_cur > 0.5
               return 0.40417256011315417 # (2286.0 out of 5656.0)
            end           else  # if high_message_length_cur > 0.5
             return 0.34639084507042256 # (787.0 out of 2272.0)
          end         end       else  # if high_message_length_next > 0.5
        case when high_refactor_next <= 0.5 then
          case when high_message_length_cur <= 0.5 then
            case when high_refactor_cur <= 0.5 then
               return 0.4446280991735537 # (2690.0 out of 6050.0)
            else  # if high_refactor_cur > 0.5
               return 0.40400363967242947 # (444.0 out of 1099.0)
            end           else  # if high_message_length_cur > 0.5
            case when high_refactor_cur <= 0.5 then
               return 0.4157077421517149 # (11163.0 out of 26853.0)
            else  # if high_refactor_cur > 0.5
               return 0.41988397679535905 # (4198.0 out of 9998.0)
            end           end         else  # if high_refactor_next > 0.5
          case when high_refactor_cur <= 0.5 then
            case when high_message_length_cur <= 0.5 then
               return 0.3940149625935162 # (790.0 out of 2005.0)
            else  # if high_message_length_cur > 0.5
               return 0.43393183528652834 # (4036.0 out of 9301.0)
            end           else  # if high_refactor_cur > 0.5
            case when high_message_length_cur <= 0.5 then
               return 0.43346007604562736 # (570.0 out of 1315.0)
            else  # if high_message_length_cur > 0.5
               return 0.4756571640133284 # (10278.0 out of 21608.0)
            end           end         end       end     else  # if high_hours_cur > 0.5
      case when high_message_length_cur <= 0.5 then
        case when high_message_length_next <= 0.5 then
          case when high_refactor_cur <= 0.5 then
            case when high_refactor_next <= 0.5 then
               return 0.43462897526501765 # (3813.0 out of 8773.0)
            else  # if high_refactor_next > 0.5
               return 0.42650807136788443 # (502.0 out of 1177.0)
            end           else  # if high_refactor_cur > 0.5
            case when high_refactor_next <= 0.5 then
               return 0.45161290322580644 # (630.0 out of 1395.0)
            else  # if high_refactor_next > 0.5
               return 0.43645990922844174 # (577.0 out of 1322.0)
            end           end         else  # if high_message_length_next > 0.5
           return 0.40214614205416455 # (787.0 out of 1957.0)
        end       else  # if high_message_length_cur > 0.5
        case when high_refactor_next <= 0.5 then
          case when high_refactor_cur <= 0.5 then
             return 0.353518821603928 # (1728.0 out of 4888.0)
          else  # if high_refactor_cur > 0.5
             return 0.32446007031642393 # (646.0 out of 1991.0)
          end         else  # if high_refactor_next > 0.5
          case when high_refactor_cur <= 0.5 then
             return 0.40015785319652725 # (507.0 out of 1267.0)
          else  # if high_refactor_cur > 0.5
             return 0.401487826871055 # (1781.0 out of 4436.0)
          end         end       end     end   else  # if high_hours_next > 0.5
    case when high_message_length_cur <= 0.5 then
      case when high_refactor_next <= 0.5 then
        case when high_message_length_next <= 0.5 then
          case when high_refactor_cur <= 0.5 then
            case when high_hours_cur <= 0.5 then
               return 0.7140522875816994 # (3933.0 out of 5508.0)
            else  # if high_hours_cur > 0.5
               return 0.7067949115730686 # (6834.0 out of 9669.0)
            end           else  # if high_refactor_cur > 0.5
            case when high_hours_cur <= 0.5 then
               return 0.6882352941176471 # (585.0 out of 850.0)
            else  # if high_hours_cur > 0.5
               return 0.741727199354318 # (919.0 out of 1239.0)
            end           end         else  # if high_message_length_next > 0.5
          case when high_hours_cur <= 0.5 then
             return 0.7752808988764045 # (483.0 out of 623.0)
          else  # if high_hours_cur > 0.5
             return 0.7046843177189409 # (692.0 out of 982.0)
          end         end       else  # if high_refactor_next > 0.5
        case when high_hours_cur <= 0.5 then
          case when high_refactor_cur <= 0.5 then
             return 0.7420262664165104 # (791.0 out of 1066.0)
          else  # if high_refactor_cur > 0.5
             return 0.7305101058710298 # (759.0 out of 1039.0)
          end         else  # if high_hours_cur > 0.5
          case when high_refactor_cur <= 0.5 then
             return 0.7392290249433107 # (978.0 out of 1323.0)
          else  # if high_refactor_cur > 0.5
             return 0.7580645161290323 # (1504.0 out of 1984.0)
          end         end       end     else  # if high_message_length_cur > 0.5
      case when high_message_length_next <= 0.5 then
        case when high_hours_cur <= 0.5 then
           return 0.6819960861056752 # (697.0 out of 1022.0)
        else  # if high_hours_cur > 0.5
           return 0.7375444839857651 # (829.0 out of 1124.0)
        end       else  # if high_message_length_next > 0.5
        case when high_refactor_next <= 0.5 then
          case when high_hours_cur <= 0.5 then
            case when high_refactor_cur <= 0.5 then
               return 0.6689160691691269 # (1586.0 out of 2371.0)
            else  # if high_refactor_cur > 0.5
               return 0.6559905100830368 # (553.0 out of 843.0)
            end           else  # if high_hours_cur > 0.5
            case when high_refactor_cur <= 0.5 then
               return 0.6362704918032787 # (2484.0 out of 3904.0)
            else  # if high_refactor_cur > 0.5
               return 0.5955882352941176 # (729.0 out of 1224.0)
            end           end         else  # if high_refactor_next > 0.5
          case when high_hours_cur <= 0.5 then
            case when high_refactor_cur <= 0.5 then
               return 0.6627697841726619 # (737.0 out of 1112.0)
            else  # if high_refactor_cur > 0.5
               return 0.72211998527788 # (1962.0 out of 2717.0)
            end           else  # if high_hours_cur > 0.5
            case when high_refactor_cur <= 0.5 then
               return 0.666970802919708 # (731.0 out of 1096.0)
            else  # if high_refactor_cur > 0.5
               return 0.6658320493066255 # (3457.0 out of 5192.0)
            end           end         end       end     end   end )