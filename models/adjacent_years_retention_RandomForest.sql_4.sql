create or replace function RandomForest_4 (high_message_length_cur int64, high_refactor_cur int64, high_hours_cur int64, high_message_length_next int64, high_refactor_next int64, high_hours_next int64) as (
  case when high_hours_next <= 0.5 then
    case when high_refactor_next <= 0.5 then
      case when high_message_length_cur <= 0.5 then
        case when high_message_length_next <= 0.5 then
          case when high_refactor_cur <= 0.5 then
            case when high_hours_cur <= 0.5 then
               return 0.7978798837126853 # (22505.0 out of 28206.0)
            else  # if high_hours_cur > 0.5
               return 0.7867772108843537 # (3701.0 out of 4704.0)
            end           else  # if high_refactor_cur > 0.5
            case when high_hours_cur <= 0.5 then
               return 0.770362852068003 # (3036.0 out of 3941.0)
            else  # if high_hours_cur > 0.5
               return 0.8017676767676768 # (635.0 out of 792.0)
            end           end         else  # if high_message_length_next > 0.5
           return 0.8015021459227468 # (3735.0 out of 4660.0)
        end       else  # if high_message_length_cur > 0.5
        case when high_hours_cur <= 0.5 then
          case when high_refactor_cur <= 0.5 then
            case when high_message_length_next <= 0.5 then
               return 0.7873961218836565 # (2274.0 out of 2888.0)
            else  # if high_message_length_next > 0.5
               return 0.7788144510698001 # (11102.0 out of 14255.0)
            end           else  # if high_refactor_cur > 0.5
            case when high_message_length_next <= 0.5 then
               return 0.7601626016260162 # (748.0 out of 984.0)
            else  # if high_message_length_next > 0.5
               return 0.7757450018860808 # (4113.0 out of 5302.0)
            end           end         else  # if high_hours_cur > 0.5
           return 0.7248709383540844 # (2387.0 out of 3293.0)
        end       end     else  # if high_refactor_next > 0.5
      case when high_hours_cur <= 0.5 then
        case when high_message_length_cur <= 0.5 then
          case when high_message_length_next <= 0.5 then
            case when high_refactor_cur <= 0.5 then
               return 0.7672823218997361 # (2908.0 out of 3790.0)
            else  # if high_refactor_cur > 0.5
               return 0.7842665750601168 # (2283.0 out of 2911.0)
            end           else  # if high_message_length_next > 0.5
             return 0.765509391007399 # (1345.0 out of 1757.0)
          end         else  # if high_message_length_cur > 0.5
          case when high_message_length_next <= 0.5 then
             return 0.7215302491103203 # (811.0 out of 1124.0)
          else  # if high_message_length_next > 0.5
            case when high_refactor_cur <= 0.5 then
               return 0.8027594247959581 # (4131.0 out of 5146.0)
            else  # if high_refactor_cur > 0.5
               return 0.8223399133365431 # (10248.0 out of 12462.0)
            end           end         end       else  # if high_hours_cur > 0.5
        case when high_message_length_cur <= 0.5 then
          case when high_refactor_cur <= 0.5 then
             return 0.7655334114888629 # (653.0 out of 853.0)
          else  # if high_refactor_cur > 0.5
             return 0.8112994350282486 # (718.0 out of 885.0)
          end         else  # if high_message_length_cur > 0.5
           return 0.7761143246002041 # (2281.0 out of 2939.0)
        end       end     end   else  # if high_hours_next > 0.5
    case when high_hours_cur <= 0.5 then
      case when high_message_length_next <= 0.5 then
        case when high_refactor_next <= 0.5 then
           return 0.9250861599854888 # (5100.0 out of 5513.0)
        else  # if high_refactor_next > 0.5
           return 0.9281914893617021 # (1396.0 out of 1504.0)
        end       else  # if high_message_length_next > 0.5
        case when high_message_length_cur <= 0.5 then
           return 0.9225888324873096 # (727.0 out of 788.0)
        else  # if high_message_length_cur > 0.5
          case when high_refactor_next <= 0.5 then
             return 0.9021509911429777 # (2139.0 out of 2371.0)
          else  # if high_refactor_next > 0.5
            case when high_refactor_cur <= 0.5 then
               return 0.9094159713945172 # (763.0 out of 839.0)
            else  # if high_refactor_cur > 0.5
               return 0.9238095238095239 # (1940.0 out of 2100.0)
            end           end         end       end     else  # if high_hours_cur > 0.5
      case when high_message_length_cur <= 0.5 then
        case when high_refactor_cur <= 0.5 then
          case when high_refactor_next <= 0.5 then
             return 0.9238451935081149 # (7400.0 out of 8010.0)
          else  # if high_refactor_next > 0.5
             return 0.9376114081996435 # (1052.0 out of 1122.0)
          end         else  # if high_refactor_cur > 0.5
           return 0.9359259259259259 # (2527.0 out of 2700.0)
        end       else  # if high_message_length_cur > 0.5
        case when high_message_length_next <= 0.5 then
           return 0.9203056768558951 # (843.0 out of 916.0)
        else  # if high_message_length_next > 0.5
          case when high_refactor_cur <= 0.5 then
            case when high_refactor_next <= 0.5 then
               return 0.8966500356379188 # (2516.0 out of 2806.0)
            else  # if high_refactor_next > 0.5
               return 0.9188861985472155 # (759.0 out of 826.0)
            end           else  # if high_refactor_cur > 0.5
            case when high_refactor_next <= 0.5 then
               return 0.8833333333333333 # (742.0 out of 840.0)
            else  # if high_refactor_next > 0.5
               return 0.9054739652870494 # (3391.0 out of 3745.0)
            end           end         end       end     end   end )