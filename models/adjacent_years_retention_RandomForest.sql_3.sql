create or replace function RandomForest_3 (high_message_length_cur int64, high_refactor_cur int64, high_hours_cur int64, high_message_length_next int64, high_refactor_next int64, high_hours_next int64) as (
  case when high_message_length_cur <= 0.5 then
    case when high_refactor_next <= 0.5 then
      case when high_hours_next <= 0.5 then
        case when high_hours_cur <= 0.5 then
          case when high_refactor_cur <= 0.5 then
            case when high_message_length_next <= 0.5 then
               return 0.7918437598791668 # (22543.0 out of 28469.0)
            else  # if high_message_length_next > 0.5
               return 0.8026634382566586 # (2652.0 out of 3304.0)
            end           else  # if high_refactor_cur > 0.5
             return 0.7683271698934088 # (3532.0 out of 4597.0)
          end         else  # if high_hours_cur > 0.5
          case when high_refactor_cur <= 0.5 then
             return 0.7936269915651359 # (4234.0 out of 5335.0)
          else  # if high_refactor_cur > 0.5
             return 0.7682789651293588 # (683.0 out of 889.0)
          end         end       else  # if high_hours_next > 0.5
        case when high_refactor_cur <= 0.5 then
          case when high_hours_cur <= 0.5 then
             return 0.926261319534282 # (4296.0 out of 4638.0)
          else  # if high_hours_cur > 0.5
             return 0.9178232286340394 # (7539.0 out of 8214.0)
          end         else  # if high_refactor_cur > 0.5
           return 0.9324631101021567 # (1643.0 out of 1762.0)
        end       end     else  # if high_refactor_next > 0.5
      case when high_hours_next <= 0.5 then
        case when high_refactor_cur <= 0.5 then
          case when high_hours_cur <= 0.5 then
            case when high_message_length_next <= 0.5 then
               return 0.7655436866611887 # (2795.0 out of 3651.0)
            else  # if high_message_length_next > 0.5
               return 0.7730769230769231 # (804.0 out of 1040.0)
            end           else  # if high_hours_cur > 0.5
             return 0.7810578105781057 # (635.0 out of 813.0)
          end         else  # if high_refactor_cur > 0.5
          case when high_hours_cur <= 0.5 then
             return 0.7756569847856155 # (2804.0 out of 3615.0)
          else  # if high_hours_cur > 0.5
             return 0.797859690844233 # (671.0 out of 841.0)
          end         end       else  # if high_hours_next > 0.5
        case when high_hours_cur <= 0.5 then
          case when high_refactor_cur <= 0.5 then
             return 0.9295774647887324 # (792.0 out of 852.0)
          else  # if high_refactor_cur > 0.5
             return 0.9457070707070707 # (749.0 out of 792.0)
          end         else  # if high_hours_cur > 0.5
           return 0.9350348027842227 # (2418.0 out of 2586.0)
        end       end     end   else  # if high_message_length_cur > 0.5
    case when high_hours_next <= 0.5 then
      case when high_refactor_next <= 0.5 then
        case when high_message_length_next <= 0.5 then
           return 0.7728963272896328 # (3325.0 out of 4302.0)
        else  # if high_message_length_next > 0.5
          case when high_hours_cur <= 0.5 then
            case when high_refactor_cur <= 0.5 then
               return 0.7778087538332868 # (11160.0 out of 14348.0)
            else  # if high_refactor_cur > 0.5
               return 0.7899560817261791 # (4137.0 out of 5237.0)
            end           else  # if high_hours_cur > 0.5
            case when high_refactor_cur <= 0.5 then
               return 0.7246003094378546 # (1405.0 out of 1939.0)
            else  # if high_refactor_cur > 0.5
               return 0.7096370463078848 # (567.0 out of 799.0)
            end           end         end       else  # if high_refactor_next > 0.5
        case when high_hours_cur <= 0.5 then
          case when high_refactor_cur <= 0.5 then
             return 0.7793639320563788 # (4313.0 out of 5534.0)
          else  # if high_refactor_cur > 0.5
             return 0.8033842467804732 # (10730.0 out of 13356.0)
          end         else  # if high_hours_cur > 0.5
           return 0.7628458498023716 # (2316.0 out of 3036.0)
        end       end     else  # if high_hours_next > 0.5
      case when high_hours_cur <= 0.5 then
        case when high_refactor_cur <= 0.5 then
          case when high_refactor_next <= 0.5 then
             return 0.9141944317663168 # (2003.0 out of 2191.0)
          else  # if high_refactor_next > 0.5
             return 0.9058553386911596 # (789.0 out of 871.0)
          end         else  # if high_refactor_cur > 0.5
           return 0.9172302737520129 # (2848.0 out of 3105.0)
        end       else  # if high_hours_cur > 0.5
        case when high_message_length_next <= 0.5 then
           return 0.919392523364486 # (787.0 out of 856.0)
        else  # if high_message_length_next > 0.5
          case when high_refactor_next <= 0.5 then
            case when high_refactor_cur <= 0.5 then
               return 0.8938053097345132 # (2424.0 out of 2712.0)
            else  # if high_refactor_cur > 0.5
               return 0.8819951338199513 # (725.0 out of 822.0)
            end           else  # if high_refactor_next > 0.5
            case when high_refactor_cur <= 0.5 then
               return 0.929757343550447 # (728.0 out of 783.0)
            else  # if high_refactor_cur > 0.5
               return 0.9022535976106435 # (3323.0 out of 3683.0)
            end           end         end       end     end   end )