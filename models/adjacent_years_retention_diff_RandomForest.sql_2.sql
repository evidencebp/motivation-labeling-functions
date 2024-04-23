create or replace function RandomForest_2 (message_length_avg_diff int64, refactor_mle_diff int64, commit_hours_diff int64) as (
  case when refactor_mle_diff <= 0.351291760802269 then
    case when refactor_mle_diff <= -0.1783360093832016 then
      case when refactor_mle_diff <= -0.47258156538009644 then
         return 0.7466802860061287 # (731.0 out of 979.0)
      else  # if refactor_mle_diff > -0.47258156538009644
        case when commit_hours_diff <= -2.5 then
          case when message_length_avg_diff <= 8.623918533325195 then
            case when message_length_avg_diff <= -7.231235980987549 then
              case when message_length_avg_diff <= -37.53523063659668 then
                 return 0.6606683804627249 # (514.0 out of 778.0)
              else  # if message_length_avg_diff > -37.53523063659668
                 return 0.7074074074074074 # (573.0 out of 810.0)
              end             else  # if message_length_avg_diff > -7.231235980987549
               return 0.6423357664233577 # (528.0 out of 822.0)
            end           else  # if message_length_avg_diff > 8.623918533325195
             return 0.7226720647773279 # (714.0 out of 988.0)
          end         else  # if commit_hours_diff > -2.5
          case when refactor_mle_diff <= -0.1965874284505844 then
            case when refactor_mle_diff <= -0.24680373817682266 then
              case when commit_hours_diff <= 0.5 then
                 return 0.8033333333333333 # (1205.0 out of 1500.0)
              else  # if commit_hours_diff > 0.5
                case when commit_hours_diff <= 3.5 then
                   return 0.8468697123519459 # (1001.0 out of 1182.0)
                else  # if commit_hours_diff > 3.5
                   return 0.8785912882298424 # (948.0 out of 1079.0)
                end               end             else  # if refactor_mle_diff > -0.24680373817682266
              case when refactor_mle_diff <= -0.22939231246709824 then
                 return 0.7829181494661922 # (660.0 out of 843.0)
              else  # if refactor_mle_diff > -0.22939231246709824
                case when message_length_avg_diff <= -4.804942607879639 then
                   return 0.810479375696767 # (727.0 out of 897.0)
                else  # if message_length_avg_diff > -4.804942607879639
                   return 0.8439241917502787 # (757.0 out of 897.0)
                end               end             end           else  # if refactor_mle_diff > -0.1965874284505844
             return 0.8509615384615384 # (1062.0 out of 1248.0)
          end         end       end     else  # if refactor_mle_diff > -0.1783360093832016
      case when commit_hours_diff <= -2.5 then
        case when commit_hours_diff <= -6.5 then
          case when refactor_mle_diff <= 6.914808182045817e-05 then
            case when refactor_mle_diff <= -0.008879133500158787 then
              case when message_length_avg_diff <= -11.88145637512207 then
                 return 0.581858407079646 # (526.0 out of 904.0)
              else  # if message_length_avg_diff > -11.88145637512207
                case when refactor_mle_diff <= -0.0820542722940445 then
                   return 0.6088888888888889 # (685.0 out of 1125.0)
                else  # if refactor_mle_diff > -0.0820542722940445
                   return 0.6544011544011544 # (907.0 out of 1386.0)
                end               end             else  # if refactor_mle_diff > -0.008879133500158787
               return 0.5648484848484848 # (466.0 out of 825.0)
            end           else  # if refactor_mle_diff > 6.914808182045817e-05
            case when commit_hours_diff <= -9.5 then
               return 0.5705596107055961 # (469.0 out of 822.0)
            else  # if commit_hours_diff > -9.5
              case when message_length_avg_diff <= 9.181332111358643 then
                 return 0.6651017214397497 # (850.0 out of 1278.0)
              else  # if message_length_avg_diff > 9.181332111358643
                 return 0.6982182628062361 # (627.0 out of 898.0)
              end             end           end         else  # if commit_hours_diff > -6.5
          case when refactor_mle_diff <= 0.12989723682403564 then
            case when commit_hours_diff <= -4.5 then
              case when message_length_avg_diff <= -0.04006410390138626 then
                case when commit_hours_diff <= -5.5 then
                   return 0.7023076923076923 # (913.0 out of 1300.0)
                else  # if commit_hours_diff > -5.5
                  case when refactor_mle_diff <= -0.003997555235400796 then
                     return 0.7346341463414634 # (753.0 out of 1025.0)
                  else  # if refactor_mle_diff > -0.003997555235400796
                     return 0.71267252195734 # (568.0 out of 797.0)
                  end                 end               else  # if message_length_avg_diff > -0.04006410390138626
                case when refactor_mle_diff <= 0.003129833610728383 then
                  case when refactor_mle_diff <= -0.029786345548927784 then
                     return 0.7476190476190476 # (942.0 out of 1260.0)
                  else  # if refactor_mle_diff > -0.029786345548927784
                     return 0.7254237288135593 # (642.0 out of 885.0)
                  end                 else  # if refactor_mle_diff > 0.003129833610728383
                   return 0.7580645161290323 # (987.0 out of 1302.0)
                end               end             else  # if commit_hours_diff > -4.5
              case when commit_hours_diff <= -3.5 then
                case when message_length_avg_diff <= -4.257000684738159 then
                  case when refactor_mle_diff <= -0.004246990429237485 then
                     return 0.7677029360967185 # (889.0 out of 1158.0)
                  else  # if refactor_mle_diff > -0.004246990429237485
                     return 0.7191697191697192 # (589.0 out of 819.0)
                  end                 else  # if message_length_avg_diff > -4.257000684738159
                  case when message_length_avg_diff <= 17.332319259643555 then
                    case when refactor_mle_diff <= -0.0005226470530033112 then
                       return 0.8027522935779816 # (1050.0 out of 1308.0)
                    else  # if refactor_mle_diff > -0.0005226470530033112
                       return 0.7758037225042301 # (917.0 out of 1182.0)
                    end                   else  # if message_length_avg_diff > 17.332319259643555
                     return 0.7502191060473269 # (856.0 out of 1141.0)
                  end                 end               else  # if commit_hours_diff > -3.5
                case when message_length_avg_diff <= -6.814704418182373 then
                  case when refactor_mle_diff <= -0.0015510767698287964 then
                     return 0.7844690966719493 # (990.0 out of 1262.0)
                  else  # if refactor_mle_diff > -0.0015510767698287964
                     return 0.7354260089686099 # (656.0 out of 892.0)
                  end                 else  # if message_length_avg_diff > -6.814704418182373
                  case when refactor_mle_diff <= 1.1136375178466551e-05 then
                    case when refactor_mle_diff <= -0.03020456526428461 then
                      case when message_length_avg_diff <= 6.519973278045654 then
                         return 0.7911153119092628 # (837.0 out of 1058.0)
                      else  # if message_length_avg_diff > 6.519973278045654
                         return 0.8187066974595842 # (709.0 out of 866.0)
                      end                     else  # if refactor_mle_diff > -0.03020456526428461
                       return 0.7707509881422925 # (975.0 out of 1265.0)
                    end                   else  # if refactor_mle_diff > 1.1136375178466551e-05
                    case when refactor_mle_diff <= 0.035007208585739136 then
                       return 0.8654822335025381 # (682.0 out of 788.0)
                    else  # if refactor_mle_diff > 0.035007208585739136
                       return 0.8051948051948052 # (1116.0 out of 1386.0)
                    end                   end                 end               end             end           else  # if refactor_mle_diff > 0.12989723682403564
            case when commit_hours_diff <= -4.5 then
               return 0.7113702623906706 # (732.0 out of 1029.0)
            else  # if commit_hours_diff > -4.5
              case when refactor_mle_diff <= 0.1914801150560379 then
                 return 0.7686796315250768 # (751.0 out of 977.0)
              else  # if refactor_mle_diff > 0.1914801150560379
                 return 0.7320837927232635 # (664.0 out of 907.0)
              end             end           end         end       else  # if commit_hours_diff > -2.5
        case when refactor_mle_diff <= 0.1284078136086464 then
          case when message_length_avg_diff <= -6.594125509262085 then
            case when message_length_avg_diff <= -8.7152419090271 then
              case when message_length_avg_diff <= -9.555293560028076 then
                case when commit_hours_diff <= -0.5 then
                  case when commit_hours_diff <= -1.5 then
                    case when message_length_avg_diff <= -37.4552059173584 then
                       return 0.7863354037267081 # (633.0 out of 805.0)
                    else  # if message_length_avg_diff > -37.4552059173584
                       return 0.8123038292529818 # (1294.0 out of 1593.0)
                    end                   else  # if commit_hours_diff > -1.5
                    case when message_length_avg_diff <= -20.286508560180664 then
                      case when refactor_mle_diff <= -0.017346459440886974 then
                         return 0.832408435072142 # (750.0 out of 901.0)
                      else  # if refactor_mle_diff > -0.017346459440886974
                         return 0.7736077481840193 # (639.0 out of 826.0)
                      end                     else  # if message_length_avg_diff > -20.286508560180664
                       return 0.8385146804835925 # (971.0 out of 1158.0)
                    end                   end                 else  # if commit_hours_diff > -0.5
                  case when commit_hours_diff <= 0.5 then
                    case when message_length_avg_diff <= -34.66143608093262 then
                       return 0.8321100917431192 # (907.0 out of 1090.0)
                    else  # if message_length_avg_diff > -34.66143608093262
                      case when refactor_mle_diff <= -0.00742255593650043 then
                         return 0.8676893576222435 # (905.0 out of 1043.0)
                      else  # if refactor_mle_diff > -0.00742255593650043
                         return 0.8404669260700389 # (864.0 out of 1028.0)
                      end                     end                   else  # if commit_hours_diff > 0.5
                    case when commit_hours_diff <= 7.5 then
                      case when refactor_mle_diff <= -0.00014840000221738592 then
                        case when commit_hours_diff <= 1.5 then
                          case when refactor_mle_diff <= -0.06780070066452026 then
                             return 0.8461538461538461 # (682.0 out of 806.0)
                          else  # if refactor_mle_diff > -0.06780070066452026
                             return 0.9 # (747.0 out of 830.0)
                          end                         else  # if commit_hours_diff > 1.5
                          case when commit_hours_diff <= 4.5 then
                            case when refactor_mle_diff <= -0.04079861007630825 then
                              case when message_length_avg_diff <= -25.15048885345459 then
                                 return 0.8801399825021873 # (1006.0 out of 1143.0)
                              else  # if message_length_avg_diff > -25.15048885345459
                                 return 0.864963503649635 # (711.0 out of 822.0)
                              end                             else  # if refactor_mle_diff > -0.04079861007630825
                               return 0.9071782178217822 # (733.0 out of 808.0)
                            end                           else  # if commit_hours_diff > 4.5
                             return 0.8917322834645669 # (906.0 out of 1016.0)
                          end                         end                       else  # if refactor_mle_diff > -0.00014840000221738592
                        case when refactor_mle_diff <= 0.007436438230797648 then
                           return 0.7772277227722773 # (628.0 out of 808.0)
                        else  # if refactor_mle_diff > 0.007436438230797648
                          case when refactor_mle_diff <= 0.03977055102586746 then
                             return 0.892542101042502 # (1113.0 out of 1247.0)
                          else  # if refactor_mle_diff > 0.03977055102586746
                            case when commit_hours_diff <= 3.5 then
                               return 0.8797385620915033 # (1346.0 out of 1530.0)
                            else  # if commit_hours_diff > 3.5
                               return 0.8669833729216152 # (730.0 out of 842.0)
                            end                           end                         end                       end                     else  # if commit_hours_diff > 7.5
                       return 0.9062792877225867 # (967.0 out of 1067.0)
                    end                   end                 end               else  # if message_length_avg_diff > -9.555293560028076
                 return 0.8915525114155252 # (781.0 out of 876.0)
              end             else  # if message_length_avg_diff > -8.7152419090271
              case when refactor_mle_diff <= 0.0018708339193835855 then
                case when message_length_avg_diff <= -7.538038730621338 then
                   return 0.828978622327791 # (698.0 out of 842.0)
                else  # if message_length_avg_diff > -7.538038730621338
                   return 0.8181818181818182 # (675.0 out of 825.0)
                end               else  # if refactor_mle_diff > 0.0018708339193835855
                 return 0.8664825046040515 # (941.0 out of 1086.0)
              end             end           else  # if message_length_avg_diff > -6.594125509262085
            case when message_length_avg_diff <= 99.05099105834961 then
              case when message_length_avg_diff <= -5.417577743530273 then
                case when message_length_avg_diff <= -5.949605703353882 then
                   return 0.8871635610766045 # (857.0 out of 966.0)
                else  # if message_length_avg_diff > -5.949605703353882
                   return 0.908235294117647 # (772.0 out of 850.0)
                end               else  # if message_length_avg_diff > -5.417577743530273
                case when commit_hours_diff <= -0.5 then
                  case when refactor_mle_diff <= 0.0014214252005331218 then
                    case when refactor_mle_diff <= -6.108709203545004e-05 then
                      case when commit_hours_diff <= -1.5 then
                        case when refactor_mle_diff <= -0.0861956886947155 then
                           return 0.8220720720720721 # (730.0 out of 888.0)
                        else  # if refactor_mle_diff > -0.0861956886947155
                          case when refactor_mle_diff <= -0.03831474483013153 then
                             return 0.8718199608610567 # (891.0 out of 1022.0)
                          else  # if refactor_mle_diff > -0.03831474483013153
                             return 0.836555360281195 # (952.0 out of 1138.0)
                          end                         end                       else  # if commit_hours_diff > -1.5
                        case when refactor_mle_diff <= -0.05199563503265381 then
                          case when message_length_avg_diff <= 3.0229333639144897 then
                             return 0.8438256658595642 # (697.0 out of 826.0)
                          else  # if message_length_avg_diff > 3.0229333639144897
                             return 0.8217652099400171 # (959.0 out of 1167.0)
                          end                         else  # if refactor_mle_diff > -0.05199563503265381
                          case when message_length_avg_diff <= 5.525315761566162 then
                             return 0.8972332015810277 # (908.0 out of 1012.0)
                          else  # if message_length_avg_diff > 5.525315761566162
                             return 0.8504784688995215 # (711.0 out of 836.0)
                          end                         end                       end                     else  # if refactor_mle_diff > -6.108709203545004e-05
                       return 0.776559287183002 # (1133.0 out of 1459.0)
                    end                   else  # if refactor_mle_diff > 0.0014214252005331218
                    case when message_length_avg_diff <= 4.974596977233887 then
                      case when refactor_mle_diff <= 0.03994480520486832 then
                         return 0.9052880820836622 # (1147.0 out of 1267.0)
                      else  # if refactor_mle_diff > 0.03994480520486832
                         return 0.8351810790835181 # (1130.0 out of 1353.0)
                      end                     else  # if message_length_avg_diff > 4.974596977233887
                      case when message_length_avg_diff <= 11.570930480957031 then
                         return 0.8543599257884972 # (921.0 out of 1078.0)
                      else  # if message_length_avg_diff > 11.570930480957031
                        case when refactor_mle_diff <= 0.05765615031123161 then
                           return 0.8601036269430051 # (996.0 out of 1158.0)
                        else  # if refactor_mle_diff > 0.05765615031123161
                           return 0.8155737704918032 # (796.0 out of 976.0)
                        end                       end                     end                   end                 else  # if commit_hours_diff > -0.5
                  case when refactor_mle_diff <= -3.908428425347665e-06 then
                    case when message_length_avg_diff <= -3.6715333461761475 then
                       return 0.8652751423149905 # (912.0 out of 1054.0)
                    else  # if message_length_avg_diff > -3.6715333461761475
                      case when commit_hours_diff <= 6.5 then
                        case when refactor_mle_diff <= -0.031547605991363525 then
                          case when refactor_mle_diff <= -0.07559363171458244 then
                            case when message_length_avg_diff <= 3.931374669075012 then
                              case when refactor_mle_diff <= -0.11119334772229195 then
                                 return 0.9010025062656641 # (719.0 out of 798.0)
                              else  # if refactor_mle_diff > -0.11119334772229195
                                 return 0.9110320284697508 # (768.0 out of 843.0)
                              end                             else  # if message_length_avg_diff > 3.931374669075012
                              case when refactor_mle_diff <= -0.1011662557721138 then
                                case when commit_hours_diff <= 1.5 then
                                   return 0.8777393310265282 # (761.0 out of 867.0)
                                else  # if commit_hours_diff > 1.5
                                   return 0.8568646543330087 # (880.0 out of 1027.0)
                                end                               else  # if refactor_mle_diff > -0.1011662557721138
                                 return 0.9078822412155746 # (956.0 out of 1053.0)
                              end                             end                           else  # if refactor_mle_diff > -0.07559363171458244
                            case when refactor_mle_diff <= -0.0653570145368576 then
                               return 0.8352668213457076 # (720.0 out of 862.0)
                            else  # if refactor_mle_diff > -0.0653570145368576
                              case when commit_hours_diff <= 2.5 then
                                case when commit_hours_diff <= 0.5 then
                                   return 0.8714285714285714 # (915.0 out of 1050.0)
                                else  # if commit_hours_diff > 0.5
                                   return 0.8814147018030514 # (1271.0 out of 1442.0)
                                end                               else  # if commit_hours_diff > 2.5
                                 return 0.8941289701636189 # (929.0 out of 1039.0)
                              end                             end                           end                         else  # if refactor_mle_diff > -0.031547605991363525
                          case when refactor_mle_diff <= -0.01832408830523491 then
                            case when message_length_avg_diff <= 5.216874122619629 then
                               return 0.9468479604449939 # (766.0 out of 809.0)
                            else  # if message_length_avg_diff > 5.216874122619629
                               return 0.9288888888888889 # (836.0 out of 900.0)
                            end                           else  # if refactor_mle_diff > -0.01832408830523491
                            case when message_length_avg_diff <= 11.52970266342163 then
                              case when commit_hours_diff <= 1.5 then
                                 return 0.8821548821548821 # (786.0 out of 891.0)
                              else  # if commit_hours_diff > 1.5
                                 return 0.9116564417177914 # (743.0 out of 815.0)
                              end                             else  # if message_length_avg_diff > 11.52970266342163
                               return 0.8705738705738706 # (713.0 out of 819.0)
                            end                           end                         end                       else  # if commit_hours_diff > 6.5
                         return 0.9221967963386728 # (1209.0 out of 1311.0)
                      end                     end                   else  # if refactor_mle_diff > -3.908428425347665e-06
                    case when message_length_avg_diff <= -2.73613440990448 then
                      case when message_length_avg_diff <= -3.771746873855591 then
                         return 0.8718428437792329 # (932.0 out of 1069.0)
                      else  # if message_length_avg_diff > -3.771746873855591
                         return 0.817824377457405 # (624.0 out of 763.0)
                      end                     else  # if message_length_avg_diff > -2.73613440990448
                      case when refactor_mle_diff <= 5.2896416491421405e-06 then
                        case when commit_hours_diff <= 4.5 then
                          case when commit_hours_diff <= 0.5 then
                             return 0.8220720720720721 # (730.0 out of 888.0)
                          else  # if commit_hours_diff > 0.5
                             return 0.8473282442748091 # (1776.0 out of 2096.0)
                          end                         else  # if commit_hours_diff > 4.5
                           return 0.8918918918918919 # (759.0 out of 851.0)
                        end                       else  # if refactor_mle_diff > 5.2896416491421405e-06
                        case when message_length_avg_diff <= -1.4966853260993958 then
                           return 0.9316037735849056 # (790.0 out of 848.0)
                        else  # if message_length_avg_diff > -1.4966853260993958
                          case when commit_hours_diff <= 2.5 then
                            case when message_length_avg_diff <= 39.65558624267578 then
                              case when commit_hours_diff <= 0.5 then
                                case when message_length_avg_diff <= 5.066418886184692 then
                                   return 0.8642611683848798 # (1006.0 out of 1164.0)
                                else  # if message_length_avg_diff > 5.066418886184692
                                  case when refactor_mle_diff <= 0.04923848621547222 then
                                     return 0.8990498812351544 # (757.0 out of 842.0)
                                  else  # if refactor_mle_diff > 0.04923848621547222
                                     return 0.8785276073619632 # (716.0 out of 815.0)
                                  end                                 end                               else  # if commit_hours_diff > 0.5
                                case when message_length_avg_diff <= 14.32146692276001 then
                                  case when refactor_mle_diff <= 0.0569473672658205 then
                                    case when commit_hours_diff <= 1.5 then
                                       return 0.9044117647058824 # (984.0 out of 1088.0)
                                    else  # if commit_hours_diff > 1.5
                                       return 0.9060150375939849 # (723.0 out of 798.0)
                                    end                                   else  # if refactor_mle_diff > 0.0569473672658205
                                     return 0.8507581803671189 # (1066.0 out of 1253.0)
                                  end                                 else  # if message_length_avg_diff > 14.32146692276001
                                   return 0.9086021505376344 # (1014.0 out of 1116.0)
                                end                               end                             else  # if message_length_avg_diff > 39.65558624267578
                               return 0.8633093525179856 # (960.0 out of 1112.0)
                            end                           else  # if commit_hours_diff > 2.5
                            case when refactor_mle_diff <= 0.09140731021761894 then
                              case when refactor_mle_diff <= 0.06899173557758331 then
                                case when commit_hours_diff <= 4.5 then
                                  case when message_length_avg_diff <= 8.536656856536865 then
                                     return 0.9254278728606357 # (757.0 out of 818.0)
                                  else  # if message_length_avg_diff > 8.536656856536865
                                     return 0.8733183856502242 # (779.0 out of 892.0)
                                  end                                 else  # if commit_hours_diff > 4.5
                                  case when commit_hours_diff <= 6.5 then
                                     return 0.8918918918918919 # (792.0 out of 888.0)
                                  else  # if commit_hours_diff > 6.5
                                     return 0.8916666666666667 # (749.0 out of 840.0)
                                  end                                 end                               else  # if refactor_mle_diff > 0.06899173557758331
                                 return 0.9283582089552239 # (933.0 out of 1005.0)
                              end                             else  # if refactor_mle_diff > 0.09140731021761894
                               return 0.8785529715762274 # (1020.0 out of 1161.0)
                            end                           end                         end                       end                     end                   end                 end               end             else  # if message_length_avg_diff > 99.05099105834961
              case when commit_hours_diff <= 0.5 then
                 return 0.8247863247863247 # (1158.0 out of 1404.0)
              else  # if commit_hours_diff > 0.5
                case when refactor_mle_diff <= 0.0022084390511736274 then
                   return 0.8722415795586528 # (751.0 out of 861.0)
                else  # if refactor_mle_diff > 0.0022084390511736274
                   return 0.8625766871165644 # (703.0 out of 815.0)
                end               end             end           end         else  # if refactor_mle_diff > 0.1284078136086464
          case when commit_hours_diff <= 1.5 then
            case when message_length_avg_diff <= -4.71047830581665 then
              case when message_length_avg_diff <= -25.89934730529785 then
                 return 0.8206650831353919 # (691.0 out of 842.0)
              else  # if message_length_avg_diff > -25.89934730529785
                 return 0.7389903329752954 # (688.0 out of 931.0)
              end             else  # if message_length_avg_diff > -4.71047830581665
              case when message_length_avg_diff <= 6.5408947467803955 then
                 return 0.8453922315308454 # (1110.0 out of 1313.0)
              else  # if message_length_avg_diff > 6.5408947467803955
                case when message_length_avg_diff <= 16.75566291809082 then
                   return 0.7666666666666667 # (644.0 out of 840.0)
                else  # if message_length_avg_diff > 16.75566291809082
                  case when refactor_mle_diff <= 0.18046240508556366 then
                     return 0.8009708737864077 # (825.0 out of 1030.0)
                  else  # if refactor_mle_diff > 0.18046240508556366
                     return 0.8259878419452887 # (1087.0 out of 1316.0)
                  end                 end               end             end           else  # if commit_hours_diff > 1.5
            case when message_length_avg_diff <= 0.6450524926185608 then
              case when commit_hours_diff <= 4.5 then
                 return 0.8310291858678955 # (1082.0 out of 1302.0)
              else  # if commit_hours_diff > 4.5
                 return 0.875 # (868.0 out of 992.0)
              end             else  # if message_length_avg_diff > 0.6450524926185608
              case when refactor_mle_diff <= 0.17773694545030594 then
                 return 0.8675742574257426 # (1402.0 out of 1616.0)
              else  # if refactor_mle_diff > 0.17773694545030594
                case when message_length_avg_diff <= 18.6614351272583 then
                   return 0.8968058968058968 # (730.0 out of 814.0)
                else  # if message_length_avg_diff > 18.6614351272583
                   return 0.8750872295882763 # (1254.0 out of 1433.0)
                end               end             end           end         end       end     end   else  # if refactor_mle_diff > 0.351291760802269
    case when commit_hours_diff <= -0.5 then
       return 0.607625099285147 # (765.0 out of 1259.0)
    else  # if commit_hours_diff > -0.5
       return 0.8083504449007529 # (1181.0 out of 1461.0)
    end   end )