create or replace function Tree_default (high_message_length_cur int64, high_refactor_cur int64, high_hours_cur int64, high_message_length_next int64, high_refactor_next int64, high_hours_next int64) as (
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
            case when high_refactor_cur <= 0.5 then
               return 0.35960591133004927 # (365.0 out of 1015.0)
            else  # if high_refactor_cur > 0.5
               return 0.33571996817820204 # (422.0 out of 1257.0)
            end           end         end       else  # if high_message_length_next > 0.5
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
          case when high_refactor_next <= 0.5 then
            case when high_refactor_cur <= 0.5 then
               return 0.4413145539906103 # (470.0 out of 1065.0)
            else  # if high_refactor_cur > 0.5
               return 0.3489583333333333 # (67.0 out of 192.0)
            end           else  # if high_refactor_next > 0.5
            case when high_refactor_cur <= 0.5 then
               return 0.31670281995661603 # (146.0 out of 461.0)
            else  # if high_refactor_cur > 0.5
               return 0.4351464435146444 # (104.0 out of 239.0)
            end           end         end       else  # if high_message_length_cur > 0.5
        case when high_refactor_next <= 0.5 then
          case when high_message_length_next <= 0.5 then
            case when high_refactor_cur <= 0.5 then
               return 0.382183908045977 # (266.0 out of 696.0)
            else  # if high_refactor_cur > 0.5
               return 0.3684210526315789 # (105.0 out of 285.0)
            end           else  # if high_message_length_next > 0.5
            case when high_refactor_cur <= 0.5 then
               return 0.3487595419847328 # (1462.0 out of 4192.0)
            else  # if high_refactor_cur > 0.5
               return 0.317116060961313 # (541.0 out of 1706.0)
            end           end         else  # if high_refactor_next > 0.5
          case when high_message_length_next <= 0.5 then
            case when high_refactor_cur <= 0.5 then
               return 0.3956043956043956 # (36.0 out of 91.0)
            else  # if high_refactor_cur > 0.5
               return 0.35096153846153844 # (73.0 out of 208.0)
            end           else  # if high_message_length_next > 0.5
            case when high_refactor_cur <= 0.5 then
               return 0.4005102040816326 # (471.0 out of 1176.0)
            else  # if high_refactor_cur > 0.5
               return 0.40397350993377484 # (1708.0 out of 4228.0)
            end           end         end       end     end   else  # if high_hours_next > 0.5
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
            case when high_refactor_cur <= 0.5 then
               return 0.774859287054409 # (413.0 out of 533.0)
            else  # if high_refactor_cur > 0.5
               return 0.7777777777777778 # (70.0 out of 90.0)
            end           else  # if high_hours_cur > 0.5
            case when high_refactor_cur <= 0.5 then
               return 0.6892980437284235 # (599.0 out of 869.0)
            else  # if high_refactor_cur > 0.5
               return 0.8230088495575221 # (93.0 out of 113.0)
            end           end         end       else  # if high_refactor_next > 0.5
        case when high_hours_cur <= 0.5 then
          case when high_message_length_next <= 0.5 then
            case when high_refactor_cur <= 0.5 then
               return 0.7330960854092526 # (618.0 out of 843.0)
            else  # if high_refactor_cur > 0.5
               return 0.7451868629671574 # (658.0 out of 883.0)
            end           else  # if high_message_length_next > 0.5
            case when high_refactor_cur <= 0.5 then
               return 0.7757847533632287 # (173.0 out of 223.0)
            else  # if high_refactor_cur > 0.5
               return 0.6474358974358975 # (101.0 out of 156.0)
            end           end         else  # if high_hours_cur > 0.5
          case when high_message_length_next <= 0.5 then
            case when high_refactor_cur <= 0.5 then
               return 0.7232304900181489 # (797.0 out of 1102.0)
            else  # if high_refactor_cur > 0.5
               return 0.7604107244723332 # (1333.0 out of 1753.0)
            end           else  # if high_message_length_next > 0.5
            case when high_refactor_cur <= 0.5 then
               return 0.8190045248868778 # (181.0 out of 221.0)
            else  # if high_refactor_cur > 0.5
               return 0.7402597402597403 # (171.0 out of 231.0)
            end           end         end       end     else  # if high_message_length_cur > 0.5
      case when high_message_length_next <= 0.5 then
        case when high_refactor_next <= 0.5 then
          case when high_hours_cur <= 0.5 then
            case when high_refactor_cur <= 0.5 then
               return 0.7292069632495164 # (377.0 out of 517.0)
            else  # if high_refactor_cur > 0.5
               return 0.7120418848167539 # (136.0 out of 191.0)
            end           else  # if high_hours_cur > 0.5
            case when high_refactor_cur <= 0.5 then
               return 0.7495961227786753 # (464.0 out of 619.0)
            else  # if high_refactor_cur > 0.5
               return 0.732620320855615 # (137.0 out of 187.0)
            end           end         else  # if high_refactor_next > 0.5
          case when high_hours_cur <= 0.5 then
            case when high_refactor_cur <= 0.5 then
               return 0.46564885496183206 # (61.0 out of 131.0)
            else  # if high_refactor_cur > 0.5
               return 0.6721311475409836 # (123.0 out of 183.0)
            end           else  # if high_hours_cur > 0.5
            case when high_refactor_cur <= 0.5 then
               return 0.7590361445783133 # (63.0 out of 83.0)
            else  # if high_refactor_cur > 0.5
               return 0.7021276595744681 # (165.0 out of 235.0)
            end           end         end       else  # if high_message_length_next > 0.5
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