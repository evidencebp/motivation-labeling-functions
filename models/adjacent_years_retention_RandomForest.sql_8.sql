create or replace function RandomForest_8 (high_message_length_cur int64, high_refactor_cur int64, high_hours_cur int64, high_message_length_next int64, high_refactor_next int64, high_hours_next int64) as (
  case when high_hours_cur <= 0.5 then
    case when high_refactor_next <= 0.5 then
      case when high_hours_next <= 0.5 then
        case when high_refactor_cur <= 0.5 then
          case when high_message_length_cur <= 0.5 then
            case when high_message_length_next <= 0.5 then
               return 0.7932907686338142 # (22489.0 out of 28349.0)
            else  # if high_message_length_next > 0.5
               return 0.8006664647076643 # (2643.0 out of 3301.0)
            end           else  # if high_message_length_cur > 0.5
            case when high_message_length_next <= 0.5 then
               return 0.7840520191649555 # (2291.0 out of 2922.0)
            else  # if high_message_length_next > 0.5
               return 0.7821198028736032 # (11268.0 out of 14407.0)
            end           end         else  # if high_refactor_cur > 0.5
          case when high_message_length_cur <= 0.5 then
             return 0.7732481269281621 # (3509.0 out of 4538.0)
          else  # if high_message_length_cur > 0.5
            case when high_message_length_next <= 0.5 then
               return 0.749475890985325 # (715.0 out of 954.0)
            else  # if high_message_length_next > 0.5
               return 0.7900076569678407 # (4127.0 out of 5224.0)
            end           end         end       else  # if high_hours_next > 0.5
        case when high_message_length_next <= 0.5 then
          case when high_refactor_cur <= 0.5 then
             return 0.9225043782837128 # (4214.0 out of 4568.0)
          else  # if high_refactor_cur > 0.5
             return 0.9099216710182768 # (697.0 out of 766.0)
          end         else  # if high_message_length_next > 0.5
           return 0.9102920723226704 # (2618.0 out of 2876.0)
        end       end     else  # if high_refactor_next > 0.5
      case when high_message_length_cur <= 0.5 then
        case when high_hours_next <= 0.5 then
          case when high_refactor_cur <= 0.5 then
            case when high_message_length_next <= 0.5 then
               return 0.7640387275242047 # (2762.0 out of 3615.0)
            else  # if high_message_length_next > 0.5
               return 0.7681862269641125 # (792.0 out of 1031.0)
            end           else  # if high_refactor_cur > 0.5
             return 0.7707182320441989 # (2790.0 out of 3620.0)
          end         else  # if high_hours_next > 0.5
          case when high_refactor_cur <= 0.5 then
             return 0.9119804400977995 # (746.0 out of 818.0)
          else  # if high_refactor_cur > 0.5
             return 0.9240048250904704 # (766.0 out of 829.0)
          end         end       else  # if high_message_length_cur > 0.5
        case when high_message_length_next <= 0.5 then
           return 0.7716966379984362 # (987.0 out of 1279.0)
        else  # if high_message_length_next > 0.5
          case when high_refactor_cur <= 0.5 then
            case when high_hours_next <= 0.5 then
               return 0.7896627419676712 # (3957.0 out of 5011.0)
            else  # if high_hours_next > 0.5
               return 0.9159561510353228 # (752.0 out of 821.0)
            end           else  # if high_refactor_cur > 0.5
            case when high_hours_next <= 0.5 then
               return 0.8204803043512721 # (10352.0 out of 12617.0)
            else  # if high_hours_next > 0.5
               return 0.9274310595065312 # (1917.0 out of 2067.0)
            end           end         end       end     end   else  # if high_hours_cur > 0.5
    case when high_message_length_next <= 0.5 then
      case when high_refactor_cur <= 0.5 then
        case when high_message_length_cur <= 0.5 then
          case when high_refactor_next <= 0.5 then
            case when high_hours_next <= 0.5 then
               return 0.8070139032994397 # (3889.0 out of 4819.0)
            else  # if high_hours_next > 0.5
               return 0.923539633738805 # (6909.0 out of 7481.0)
            end           else  # if high_refactor_next > 0.5
             return 0.8776342624065262 # (1291.0 out of 1471.0)
          end         else  # if high_message_length_cur > 0.5
           return 0.8735632183908046 # (836.0 out of 957.0)
        end       else  # if high_refactor_cur > 0.5
         return 0.8833223467369808 # (4020.0 out of 4551.0)
      end     else  # if high_message_length_next > 0.5
      case when high_message_length_cur <= 0.5 then
         return 0.859713890170743 # (1863.0 out of 2167.0)
      else  # if high_message_length_cur > 0.5
        case when high_refactor_cur <= 0.5 then
          case when high_refactor_next <= 0.5 then
            case when high_hours_next <= 0.5 then
               return 0.7344827586206897 # (1491.0 out of 2030.0)
            else  # if high_hours_next > 0.5
               return 0.8922367954626019 # (2517.0 out of 2821.0)
            end           else  # if high_refactor_next > 0.5
             return 0.8351877607788595 # (1201.0 out of 1438.0)
          end         else  # if high_refactor_cur > 0.5
          case when high_refactor_next <= 0.5 then
             return 0.793512164691204 # (1272.0 out of 1603.0)
          else  # if high_refactor_next > 0.5
            case when high_hours_next <= 0.5 then
               return 0.7717785843920145 # (1701.0 out of 2204.0)
            else  # if high_hours_next > 0.5
               return 0.9033272203301022 # (3448.0 out of 3817.0)
            end           end         end       end     end   end )