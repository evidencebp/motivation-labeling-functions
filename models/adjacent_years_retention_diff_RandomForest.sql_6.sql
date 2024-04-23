create or replace function RandomForest_6 (message_length_avg_diff int64, refactor_mle_diff int64, commit_hours_diff int64) as (
  case when message_length_avg_diff <= -11.322299480438232 then
    case when commit_hours_diff <= -3.5 then
      case when commit_hours_diff <= -6.5 then
        case when message_length_avg_diff <= -37.382869720458984 then
           return 0.5581643543223053 # (523.0 out of 937.0)
        else  # if message_length_avg_diff > -37.382869720458984
           return 0.6112781954887218 # (813.0 out of 1330.0)
        end       else  # if commit_hours_diff > -6.5
        case when commit_hours_diff <= -5.5 then
           return 0.728421052631579 # (692.0 out of 950.0)
        else  # if commit_hours_diff > -5.5
          case when message_length_avg_diff <= -38.26354789733887 then
             return 0.6881005173688101 # (931.0 out of 1353.0)
          else  # if message_length_avg_diff > -38.26354789733887
             return 0.7349468713105076 # (1245.0 out of 1694.0)
          end         end       end     else  # if commit_hours_diff > -3.5
      case when refactor_mle_diff <= -0.3803330361843109 then
         return 0.7551963048498845 # (654.0 out of 866.0)
      else  # if refactor_mle_diff > -0.3803330361843109
        case when refactor_mle_diff <= -0.0001456387253711 then
          case when refactor_mle_diff <= -0.07955030724406242 then
            case when message_length_avg_diff <= -59.76845359802246 then
              case when message_length_avg_diff <= -163.62062072753906 then
                 return 0.8407407407407408 # (681.0 out of 810.0)
              else  # if message_length_avg_diff > -163.62062072753906
                case when refactor_mle_diff <= -0.1856679990887642 then
                   return 0.8407572383073497 # (755.0 out of 898.0)
                else  # if refactor_mle_diff > -0.1856679990887642
                   return 0.8691910499139415 # (1010.0 out of 1162.0)
                end               end             else  # if message_length_avg_diff > -59.76845359802246
              case when message_length_avg_diff <= -43.92255401611328 then
                 return 0.7987179487179488 # (623.0 out of 780.0)
              else  # if message_length_avg_diff > -43.92255401611328
                case when message_length_avg_diff <= -23.411839485168457 then
                  case when commit_hours_diff <= 0.5 then
                     return 0.7955742887249737 # (755.0 out of 949.0)
                  else  # if commit_hours_diff > 0.5
                     return 0.8748696558915537 # (839.0 out of 959.0)
                  end                 else  # if message_length_avg_diff > -23.411839485168457
                  case when refactor_mle_diff <= -0.1480431705713272 then
                     return 0.7998146431881371 # (863.0 out of 1079.0)
                  else  # if refactor_mle_diff > -0.1480431705713272
                     return 0.8224582701062215 # (1084.0 out of 1318.0)
                  end                 end               end             end           else  # if refactor_mle_diff > -0.07955030724406242
            case when refactor_mle_diff <= -0.031773921102285385 then
              case when message_length_avg_diff <= -17.533405303955078 then
                case when message_length_avg_diff <= -38.77718925476074 then
                   return 0.8725925925925926 # (1178.0 out of 1350.0)
                else  # if message_length_avg_diff > -38.77718925476074
                   return 0.8405238828967643 # (1091.0 out of 1298.0)
                end               else  # if message_length_avg_diff > -17.533405303955078
                 return 0.8763557483731019 # (808.0 out of 922.0)
              end             else  # if refactor_mle_diff > -0.031773921102285385
              case when commit_hours_diff <= -0.5 then
                 return 0.8292978208232445 # (685.0 out of 826.0)
              else  # if commit_hours_diff > -0.5
                case when message_length_avg_diff <= -29.203787803649902 then
                   return 0.9054916985951469 # (709.0 out of 783.0)
                else  # if message_length_avg_diff > -29.203787803649902
                   return 0.9031446540880503 # (718.0 out of 795.0)
                end               end             end           end         else  # if refactor_mle_diff > -0.0001456387253711
          case when refactor_mle_diff <= 5.5720749514875934e-05 then
             return 0.6757990867579908 # (740.0 out of 1095.0)
          else  # if refactor_mle_diff > 5.5720749514875934e-05
            case when commit_hours_diff <= -0.5 then
              case when refactor_mle_diff <= 0.07151155173778534 then
                 return 0.8257317903335603 # (1213.0 out of 1469.0)
              else  # if refactor_mle_diff > 0.07151155173778534
                 return 0.7505813953488372 # (1291.0 out of 1720.0)
              end             else  # if commit_hours_diff > -0.5
              case when refactor_mle_diff <= 0.11927438899874687 then
                case when commit_hours_diff <= 4.5 then
                  case when commit_hours_diff <= 2.5 then
                    case when commit_hours_diff <= 0.5 then
                       return 0.8746177370030581 # (858.0 out of 981.0)
                    else  # if commit_hours_diff > 0.5
                       return 0.8688833124215809 # (1385.0 out of 1594.0)
                    end                   else  # if commit_hours_diff > 2.5
                     return 0.8810703666997026 # (889.0 out of 1009.0)
                  end                 else  # if commit_hours_diff > 4.5
                   return 0.8664944013781223 # (1006.0 out of 1161.0)
                end               else  # if refactor_mle_diff > 0.11927438899874687
                case when refactor_mle_diff <= 0.23513109982013702 then
                  case when message_length_avg_diff <= -32.21826934814453 then
                     return 0.8285385500575374 # (720.0 out of 869.0)
                  else  # if message_length_avg_diff > -32.21826934814453
                     return 0.8394768133174791 # (706.0 out of 841.0)
                  end                 else  # if refactor_mle_diff > 0.23513109982013702
                   return 0.8044831880448319 # (646.0 out of 803.0)
                end               end             end           end         end       end     end   else  # if message_length_avg_diff > -11.322299480438232
    case when commit_hours_diff <= -3.5 then
      case when refactor_mle_diff <= 0.21188043802976608 then
        case when message_length_avg_diff <= 23.42824363708496 then
          case when refactor_mle_diff <= 0.0002534479572204873 then
            case when message_length_avg_diff <= -2.0933092832565308 then
              case when commit_hours_diff <= -5.5 then
                 return 0.6234939759036144 # (828.0 out of 1328.0)
              else  # if commit_hours_diff > -5.5
                 return 0.7475133894414691 # (977.0 out of 1307.0)
              end             else  # if message_length_avg_diff > -2.0933092832565308
              case when refactor_mle_diff <= -0.06669570878148079 then
                case when refactor_mle_diff <= -0.111743975430727 then
                   return 0.7026858213616489 # (1125.0 out of 1601.0)
                else  # if refactor_mle_diff > -0.111743975430727
                   return 0.6719775070290535 # (717.0 out of 1067.0)
                end               else  # if refactor_mle_diff > -0.06669570878148079
                case when message_length_avg_diff <= 2.5672329664230347 then
                   return 0.7122529644268775 # (901.0 out of 1265.0)
                else  # if message_length_avg_diff > 2.5672329664230347
                  case when message_length_avg_diff <= 7.937617063522339 then
                     return 0.7557436517533253 # (625.0 out of 827.0)
                  else  # if message_length_avg_diff > 7.937617063522339
                     return 0.7305751765893037 # (724.0 out of 991.0)
                  end                 end               end             end           else  # if refactor_mle_diff > 0.0002534479572204873
            case when commit_hours_diff <= -7.5 then
               return 0.6351039260969977 # (550.0 out of 866.0)
            else  # if commit_hours_diff > -7.5
              case when message_length_avg_diff <= -0.21796904504299164 then
                 return 0.7214339058999253 # (966.0 out of 1339.0)
              else  # if message_length_avg_diff > -0.21796904504299164
                case when message_length_avg_diff <= 5.89763069152832 then
                   return 0.8006465517241379 # (743.0 out of 928.0)
                else  # if message_length_avg_diff > 5.89763069152832
                   return 0.7653457653457654 # (985.0 out of 1287.0)
                end               end             end           end         else  # if message_length_avg_diff > 23.42824363708496
          case when refactor_mle_diff <= 0.00028287878376431763 then
            case when refactor_mle_diff <= -0.07400289922952652 then
               return 0.6966640806826998 # (898.0 out of 1289.0)
            else  # if refactor_mle_diff > -0.07400289922952652
               return 0.6287744227353463 # (708.0 out of 1126.0)
            end           else  # if refactor_mle_diff > 0.00028287878376431763
            case when refactor_mle_diff <= 0.09735393524169922 then
               return 0.6891241578440809 # (716.0 out of 1039.0)
            else  # if refactor_mle_diff > 0.09735393524169922
               return 0.7116104868913857 # (570.0 out of 801.0)
            end           end         end       else  # if refactor_mle_diff > 0.21188043802976608
         return 0.6319942611190817 # (881.0 out of 1394.0)
      end     else  # if commit_hours_diff > -3.5
      case when refactor_mle_diff <= 0.12417193129658699 then
        case when message_length_avg_diff <= 133.55834197998047 then
          case when message_length_avg_diff <= 16.94499683380127 then
            case when refactor_mle_diff <= -0.10054352506995201 then
              case when refactor_mle_diff <= -0.2398308590054512 then
                case when refactor_mle_diff <= -0.3221166878938675 then
                   return 0.7945205479452054 # (638.0 out of 803.0)
                else  # if refactor_mle_diff > -0.3221166878938675
                   return 0.8048498845265589 # (697.0 out of 866.0)
                end               else  # if refactor_mle_diff > -0.2398308590054512
                case when refactor_mle_diff <= -0.1244637481868267 then
                  case when commit_hours_diff <= 0.5 then
                    case when refactor_mle_diff <= -0.1632545441389084 then
                       return 0.7951690821256039 # (823.0 out of 1035.0)
                    else  # if refactor_mle_diff > -0.1632545441389084
                       return 0.8426483233018057 # (980.0 out of 1163.0)
                    end                   else  # if commit_hours_diff > 0.5
                    case when message_length_avg_diff <= -1.2302546501159668 then
                       return 0.8994413407821229 # (805.0 out of 895.0)
                    else  # if message_length_avg_diff > -1.2302546501159668
                       return 0.8707025411061285 # (1165.0 out of 1338.0)
                    end                   end                 else  # if refactor_mle_diff > -0.1244637481868267
                  case when refactor_mle_diff <= -0.11489246040582657 then
                     return 0.7969303423848878 # (675.0 out of 847.0)
                  else  # if refactor_mle_diff > -0.11489246040582657
                     return 0.8356697819314641 # (1073.0 out of 1284.0)
                  end                 end               end             else  # if refactor_mle_diff > -0.10054352506995201
              case when commit_hours_diff <= -1.5 then
                case when refactor_mle_diff <= 2.751212741713971e-05 then
                  case when message_length_avg_diff <= -4.813641786575317 then
                     return 0.7881720430107527 # (733.0 out of 930.0)
                  else  # if message_length_avg_diff > -4.813641786575317
                    case when refactor_mle_diff <= -8.654039265820757e-05 then
                      case when commit_hours_diff <= -2.5 then
                         return 0.833063209076175 # (1028.0 out of 1234.0)
                      else  # if commit_hours_diff > -2.5
                        case when message_length_avg_diff <= 3.5898693799972534 then
                           return 0.8733264675592173 # (848.0 out of 971.0)
                        else  # if message_length_avg_diff > 3.5898693799972534
                           return 0.8533834586466166 # (681.0 out of 798.0)
                        end                       end                     else  # if refactor_mle_diff > -8.654039265820757e-05
                       return 0.7714570858283433 # (773.0 out of 1002.0)
                    end                   end                 else  # if refactor_mle_diff > 2.751212741713971e-05
                  case when message_length_avg_diff <= 2.5407201051712036 then
                    case when message_length_avg_diff <= -1.3276037573814392 then
                       return 0.8407843137254902 # (1072.0 out of 1275.0)
                    else  # if message_length_avg_diff > -1.3276037573814392
                       return 0.8884976525821596 # (757.0 out of 852.0)
                    end                   else  # if message_length_avg_diff > 2.5407201051712036
                    case when refactor_mle_diff <= 0.04100929573178291 then
                       return 0.8454545454545455 # (651.0 out of 770.0)
                    else  # if refactor_mle_diff > 0.04100929573178291
                       return 0.815 # (652.0 out of 800.0)
                    end                   end                 end               else  # if commit_hours_diff > -1.5
                case when message_length_avg_diff <= -2.865354537963867 then
                  case when refactor_mle_diff <= -5.5262167734326795e-05 then
                    case when refactor_mle_diff <= -0.027259069494903088 then
                      case when refactor_mle_diff <= -0.06765126064419746 then
                         return 0.8821138211382114 # (868.0 out of 984.0)
                      else  # if refactor_mle_diff > -0.06765126064419746
                         return 0.8618339529120198 # (1391.0 out of 1614.0)
                      end                     else  # if refactor_mle_diff > -0.027259069494903088
                       return 0.9090909090909091 # (1340.0 out of 1474.0)
                    end                   else  # if refactor_mle_diff > -5.5262167734326795e-05
                    case when refactor_mle_diff <= 0.0002800809597829357 then
                       return 0.7814569536423841 # (708.0 out of 906.0)
                    else  # if refactor_mle_diff > 0.0002800809597829357
                      case when message_length_avg_diff <= -3.98771333694458 then
                        case when refactor_mle_diff <= 0.07380469888448715 then
                          case when message_length_avg_diff <= -8.16397762298584 then
                             return 0.8721071863580999 # (716.0 out of 821.0)
                          else  # if message_length_avg_diff > -8.16397762298584
                             return 0.900373599003736 # (1446.0 out of 1606.0)
                          end                         else  # if refactor_mle_diff > 0.07380469888448715
                           return 0.8486916951080774 # (746.0 out of 879.0)
                        end                       else  # if message_length_avg_diff > -3.98771333694458
                         return 0.852803738317757 # (730.0 out of 856.0)
                      end                     end                   end                 else  # if message_length_avg_diff > -2.865354537963867
                  case when refactor_mle_diff <= -3.908428425347665e-06 then
                    case when commit_hours_diff <= -0.5 then
                      case when message_length_avg_diff <= 4.258057117462158 then
                         return 0.8839368616527391 # (952.0 out of 1077.0)
                      else  # if message_length_avg_diff > 4.258057117462158
                         return 0.8638344226579521 # (793.0 out of 918.0)
                      end                     else  # if commit_hours_diff > -0.5
                      case when commit_hours_diff <= 1.5 then
                        case when refactor_mle_diff <= -0.04787338152527809 then
                           return 0.8702194357366771 # (1388.0 out of 1595.0)
                        else  # if refactor_mle_diff > -0.04787338152527809
                          case when refactor_mle_diff <= -0.016423449851572514 then
                             return 0.9311276164753545 # (1379.0 out of 1481.0)
                          else  # if refactor_mle_diff > -0.016423449851572514
                             return 0.8926940639269406 # (782.0 out of 876.0)
                          end                         end                       else  # if commit_hours_diff > 1.5
                        case when message_length_avg_diff <= 8.748009204864502 then
                          case when message_length_avg_diff <= 2.885359525680542 then
                            case when message_length_avg_diff <= -0.12538833543658257 then
                               return 0.9037227214377407 # (704.0 out of 779.0)
                            else  # if message_length_avg_diff > -0.12538833543658257
                               return 0.9242081447963801 # (817.0 out of 884.0)
                            end                           else  # if message_length_avg_diff > 2.885359525680542
                             return 0.8828522920203735 # (1040.0 out of 1178.0)
                          end                         else  # if message_length_avg_diff > 8.748009204864502
                           return 0.9275793650793651 # (935.0 out of 1008.0)
                        end                       end                     end                   else  # if refactor_mle_diff > -3.908428425347665e-06
                    case when commit_hours_diff <= 0.5 then
                      case when commit_hours_diff <= -0.5 then
                        case when refactor_mle_diff <= 0.006901539163663983 then
                           return 0.8358585858585859 # (662.0 out of 792.0)
                        else  # if refactor_mle_diff > 0.006901539163663983
                          case when message_length_avg_diff <= 3.9742395877838135 then
                             return 0.8626198083067093 # (810.0 out of 939.0)
                          else  # if message_length_avg_diff > 3.9742395877838135
                             return 0.8974630021141649 # (849.0 out of 946.0)
                          end                         end                       else  # if commit_hours_diff > -0.5
                        case when refactor_mle_diff <= 0.0039990723598748446 then
                           return 0.8470728793309439 # (709.0 out of 837.0)
                        else  # if refactor_mle_diff > 0.0039990723598748446
                          case when refactor_mle_diff <= 0.04130909591913223 then
                             return 0.8884792626728111 # (964.0 out of 1085.0)
                          else  # if refactor_mle_diff > 0.04130909591913223
                             return 0.8637901861252115 # (1021.0 out of 1182.0)
                          end                         end                       end                     else  # if commit_hours_diff > 0.5
                      case when commit_hours_diff <= 5.5 then
                        case when commit_hours_diff <= 3.5 then
                          case when message_length_avg_diff <= 9.913437366485596 then
                            case when refactor_mle_diff <= 0.00038946977292653173 then
                               return 0.840825350036846 # (1141.0 out of 1357.0)
                            else  # if refactor_mle_diff > 0.00038946977292653173
                              case when refactor_mle_diff <= 0.048649778589606285 then
                                case when refactor_mle_diff <= 0.026163008995354176 then
                                   return 0.9027538726333907 # (1049.0 out of 1162.0)
                                else  # if refactor_mle_diff > 0.026163008995354176
                                   return 0.9311475409836065 # (852.0 out of 915.0)
                                end                               else  # if refactor_mle_diff > 0.048649778589606285
                                 return 0.8673938002296211 # (1511.0 out of 1742.0)
                              end                             end                           else  # if message_length_avg_diff > 9.913437366485596
                             return 0.914410480349345 # (1047.0 out of 1145.0)
                          end                         else  # if commit_hours_diff > 3.5
                          case when refactor_mle_diff <= 0.04165229760110378 then
                             return 0.9128672745694022 # (901.0 out of 987.0)
                          else  # if refactor_mle_diff > 0.04165229760110378
                             return 0.879245283018868 # (699.0 out of 795.0)
                          end                         end                       else  # if commit_hours_diff > 5.5
                        case when commit_hours_diff <= 7.5 then
                           return 0.8800413650465356 # (851.0 out of 967.0)
                        else  # if commit_hours_diff > 7.5
                           return 0.878177966101695 # (829.0 out of 944.0)
                        end                       end                     end                   end                 end               end             end           else  # if message_length_avg_diff > 16.94499683380127
            case when commit_hours_diff <= -0.5 then
              case when commit_hours_diff <= -1.5 then
                case when message_length_avg_diff <= 41.381065368652344 then
                  case when message_length_avg_diff <= 27.01291561126709 then
                     return 0.8014042126379137 # (799.0 out of 997.0)
                  else  # if message_length_avg_diff > 27.01291561126709
                     return 0.8696186961869619 # (707.0 out of 813.0)
                  end                 else  # if message_length_avg_diff > 41.381065368652344
                   return 0.7918745545260156 # (1111.0 out of 1403.0)
                end               else  # if commit_hours_diff > -1.5
                case when message_length_avg_diff <= 33.438344955444336 then
                   return 0.8547945205479452 # (936.0 out of 1095.0)
                else  # if message_length_avg_diff > 33.438344955444336
                   return 0.8063241106719368 # (1020.0 out of 1265.0)
                end               end             else  # if commit_hours_diff > -0.5
              case when refactor_mle_diff <= 0.052355995401740074 then
                case when refactor_mle_diff <= -0.01371345529332757 then
                  case when refactor_mle_diff <= -0.13241712749004364 then
                    case when refactor_mle_diff <= -0.20514926314353943 then
                       return 0.8450704225352113 # (660.0 out of 781.0)
                    else  # if refactor_mle_diff > -0.20514926314353943
                       return 0.8658959537572254 # (749.0 out of 865.0)
                    end                   else  # if refactor_mle_diff > -0.13241712749004364
                    case when commit_hours_diff <= 1.5 then
                       return 0.8758708043065231 # (1383.0 out of 1579.0)
                    else  # if commit_hours_diff > 1.5
                      case when refactor_mle_diff <= -0.054147275164723396 then
                         return 0.8824091778202677 # (923.0 out of 1046.0)
                      else  # if refactor_mle_diff > -0.054147275164723396
                         return 0.9020100502512562 # (718.0 out of 796.0)
                      end                     end                   end                 else  # if refactor_mle_diff > -0.01371345529332757
                  case when refactor_mle_diff <= 0.006252785911783576 then
                    case when message_length_avg_diff <= 34.647504806518555 then
                       return 0.8175092478421702 # (663.0 out of 811.0)
                    else  # if message_length_avg_diff > 34.647504806518555
                       return 0.8535108958837773 # (705.0 out of 826.0)
                    end                   else  # if refactor_mle_diff > 0.006252785911783576
                    case when message_length_avg_diff <= 38.56747245788574 then
                       return 0.8635122838944495 # (949.0 out of 1099.0)
                    else  # if message_length_avg_diff > 38.56747245788574
                       return 0.8775055679287305 # (788.0 out of 898.0)
                    end                   end                 end               else  # if refactor_mle_diff > 0.052355995401740074
                case when refactor_mle_diff <= 0.0781494788825512 then
                   return 0.9107981220657277 # (970.0 out of 1065.0)
                else  # if refactor_mle_diff > 0.0781494788825512
                   return 0.8880105401844532 # (1348.0 out of 1518.0)
                end               end             end           end         else  # if message_length_avg_diff > 133.55834197998047
          case when refactor_mle_diff <= -0.07142972946166992 then
             return 0.7988950276243094 # (723.0 out of 905.0)
          else  # if refactor_mle_diff > -0.07142972946166992
            case when commit_hours_diff <= 0.5 then
               return 0.8106382978723404 # (762.0 out of 940.0)
            else  # if commit_hours_diff > 0.5
               return 0.8582766439909297 # (757.0 out of 882.0)
            end           end         end       else  # if refactor_mle_diff > 0.12417193129658699
        case when message_length_avg_diff <= 0.44719959795475006 then
          case when refactor_mle_diff <= 0.22186437994241714 then
             return 0.8148997134670487 # (1422.0 out of 1745.0)
          else  # if refactor_mle_diff > 0.22186437994241714
             return 0.7663782447466008 # (620.0 out of 809.0)
          end         else  # if message_length_avg_diff > 0.44719959795475006
          case when refactor_mle_diff <= 0.24602413922548294 then
            case when message_length_avg_diff <= 4.7996745109558105 then
               return 0.8721278721278721 # (873.0 out of 1001.0)
            else  # if message_length_avg_diff > 4.7996745109558105
              case when commit_hours_diff <= 1.5 then
                case when message_length_avg_diff <= 16.752203941345215 then
                   return 0.7798066595059077 # (726.0 out of 931.0)
                else  # if message_length_avg_diff > 16.752203941345215
                  case when commit_hours_diff <= -0.5 then
                     return 0.8032786885245902 # (931.0 out of 1159.0)
                  else  # if commit_hours_diff > -0.5
                     return 0.8524590163934426 # (936.0 out of 1098.0)
                  end                 end               else  # if commit_hours_diff > 1.5
                case when commit_hours_diff <= 5.5 then
                  case when message_length_avg_diff <= 30.071907997131348 then
                     return 0.88 # (770.0 out of 875.0)
                  else  # if message_length_avg_diff > 30.071907997131348
                     return 0.8992416034669556 # (830.0 out of 923.0)
                  end                 else  # if commit_hours_diff > 5.5
                   return 0.8644501278772379 # (676.0 out of 782.0)
                end               end             end           else  # if refactor_mle_diff > 0.24602413922548294
            case when refactor_mle_diff <= 0.2806672006845474 then
               return 0.7885652642934197 # (731.0 out of 927.0)
            else  # if refactor_mle_diff > 0.2806672006845474
              case when refactor_mle_diff <= 0.38913269340991974 then
                 return 0.8427919112850619 # (1292.0 out of 1533.0)
              else  # if refactor_mle_diff > 0.38913269340991974
                 return 0.7905759162303665 # (755.0 out of 955.0)
              end             end           end         end       end     end   end )