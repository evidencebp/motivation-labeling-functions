    create or replace function Tree_md (popularity_group_code int64, high_refactor_y int64, high_message_length_x int64, high_hours_x int64, dev_group_code int64, year int64, language_group int64, License Type_code int64, high_refactor_x int64, age_group_code int64, employee_code int64, high_hours_y int64, high_message_length_y int64) as (
  case when high_hours_x <= 0.5 then
    case when high_hours_y <= 0.5 then
      case when high_message_length_x <= 0.5 then
        case when popularity_group_code <= 1.5 then
          case when dev_group_code <= 2.5 then
             return 0.5 # (2706.0 out of 5412.0)
          else  # if dev_group_code > 2.5
             return 0.9998264893001735 # (17287.0 out of 17290.0)
          end         else  # if popularity_group_code > 1.5
          case when License Type_code <= 4.0 then
             return 0.698339483394834 # (757.0 out of 1084.0)
          else  # if License Type_code > 4.0
             return 0.07306044740599714 # (307.0 out of 4202.0)
          end         end       else  # if high_message_length_x > 0.5
        case when high_message_length_y <= 0.5 then
          case when popularity_group_code <= 1.5 then
             return 0.05489790643577152 # (1062.0 out of 19345.0)
          else  # if popularity_group_code > 1.5
             return 0.8879586308790938 # (3606.0 out of 4061.0)
          end         else  # if high_message_length_y > 0.5
          case when high_refactor_x <= 0.5 then
             return 0.5004560328735955 # (918534.0 out of 1835394.0)
          else  # if high_refactor_x > 0.5
             return 0.003893575600259572 # (6.0 out of 1541.0)
          end         end       end     else  # if high_hours_y > 0.5
      case when language_group <= 0.5 then
        case when year <= 2020.5 then
          case when age_group_code <= 1.5 then
             return 0.40526181841318315 # (12739.0 out of 31434.0)
          else  # if age_group_code > 1.5
             return 0.649187845834878 # (47281.0 out of 72831.0)
          end         else  # if year > 2020.5
          case when high_message_length_x <= 0.5 then
             return 0.8162412993039443 # (1759.0 out of 2155.0)
          else  # if high_message_length_x > 0.5
             return 0.9883768186621149 # (12160.0 out of 12303.0)
          end         end       else  # if language_group > 0.5
        case when age_group_code <= 0.5 then
          case when dev_group_code <= 1.5 then
             return 0.0 # (0.0 out of 1179.0)
          else  # if dev_group_code > 1.5
             return 0.5322391559202814 # (454.0 out of 853.0)
          end         else  # if age_group_code > 0.5
          case when language_group <= 3.5 then
             return 0.9313167730625476 # (56313.0 out of 60466.0)
          else  # if language_group > 3.5
             return 0.43145990404386564 # (1259.0 out of 2918.0)
          end         end       end     end   else  # if high_hours_x > 0.5
    case when year <= 2020.5 then
      case when language_group <= 0.5 then
        case when high_message_length_x <= 0.5 then
          case when high_message_length_y <= 0.5 then
             return 0.49628844114528103 # (468.0 out of 943.0)
          else  # if high_message_length_y > 0.5
             return 0.0030646644192460926 # (20.0 out of 6526.0)
          end         else  # if high_message_length_x > 0.5
          case when age_group_code <= 1.5 then
             return 0.5607060727365641 # (26333.0 out of 46964.0)
          else  # if age_group_code > 1.5
             return 0.4124109400137899 # (35888.0 out of 87020.0)
          end         end       else  # if language_group > 0.5
        case when age_group_code <= 1.5 then
          case when dev_group_code <= 2.5 then
             return 0.5078959241991277 # (6754.0 out of 13298.0)
          else  # if dev_group_code > 2.5
             return 0.03490508266993264 # (114.0 out of 3266.0)
          end         else  # if age_group_code > 1.5
          case when language_group <= 3.5 then
             return 0.0630884208482966 # (1950.0 out of 30909.0)
          else  # if language_group > 3.5
             return 0.5044973544973544 # (1907.0 out of 3780.0)
          end         end       end     else  # if year > 2020.5
      case when high_hours_y <= 0.5 then
        case when high_message_length_y <= 0.5 then
          case when dev_group_code <= 2.5 then
             return 0.41818992420864914 # (938.0 out of 2243.0)
          else  # if dev_group_code > 2.5
             return 0.00196078431372549 # (2.0 out of 1020.0)
          end         else  # if high_message_length_y > 0.5
          case when License Type_code <= 1.0 then
             return 0.03638338311159381 # (134.0 out of 3683.0)
          else  # if License Type_code > 1.0
             return 0.0 # (0.0 out of 29213.0)
          end         end       else  # if high_hours_y > 0.5
        case when high_message_length_y <= 0.5 then
          case when License Type_code <= 4.0 then
             return 0.6746031746031746 # (340.0 out of 504.0)
          else  # if License Type_code > 4.0
             return 0.4895861509331891 # (1810.0 out of 3697.0)
          end         else  # if high_message_length_y > 0.5
          case when License Type_code <= 4.0 then
             return 0.3786407766990291 # (273.0 out of 721.0)
          else  # if License Type_code > 4.0
             return 1.0 # (95.0 out of 95.0)
          end         end       end     end   end )