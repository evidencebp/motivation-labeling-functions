create or replace function RandomForest_4 (message_length_avg_diff int64, refactor_mle_diff int64, commit_hours_diff int64) as (
  case when message_length_avg_diff <= -11.832657814025879 then
    case when commit_hours_diff <= -3.5 then
      case when commit_hours_diff <= -6.5 then
        case when message_length_avg_diff <= -35.53388977050781 then
           return 0.5747011952191236 # (577.0 out of 1004.0)
        else  # if message_length_avg_diff > -35.53388977050781
           return 0.6104838709677419 # (757.0 out of 1240.0)
        end       else  # if commit_hours_diff > -6.5
        case when commit_hours_diff <= -5.5 then
           return 0.6632548618219037 # (648.0 out of 977.0)
        else  # if commit_hours_diff > -5.5
          case when refactor_mle_diff <= -0.002450249041430652 then
            case when refactor_mle_diff <= -0.13097558170557022 then
               return 0.7062279670975323 # (601.0 out of 851.0)
            else  # if refactor_mle_diff > -0.13097558170557022
               return 0.7672413793103449 # (801.0 out of 1044.0)
            end           else  # if refactor_mle_diff > -0.002450249041430652
             return 0.6799292661361627 # (769.0 out of 1131.0)
          end         end       end     else  # if commit_hours_diff > -3.5
      case when commit_hours_diff <= -1.5 then
        case when refactor_mle_diff <= 7.441941124852747e-05 then
          case when commit_hours_diff <= -2.5 then
             return 0.7644978783592645 # (1081.0 out of 1414.0)
          else  # if commit_hours_diff > -2.5
            case when message_length_avg_diff <= -32.27338981628418 then
               return 0.7745726495726496 # (725.0 out of 936.0)
            else  # if message_length_avg_diff > -32.27338981628418
               return 0.738327904451683 # (680.0 out of 921.0)
            end           end         else  # if refactor_mle_diff > 7.441941124852747e-05
          case when refactor_mle_diff <= 0.07079090923070908 then
             return 0.8283166109253066 # (743.0 out of 897.0)
          else  # if refactor_mle_diff > 0.07079090923070908
             return 0.748496993987976 # (747.0 out of 998.0)
          end         end       else  # if commit_hours_diff > -1.5
        case when refactor_mle_diff <= 0.12897931039333344 then
          case when commit_hours_diff <= 1.5 then
            case when refactor_mle_diff <= -0.23943592607975006 then
               return 0.7693965517241379 # (714.0 out of 928.0)
            else  # if refactor_mle_diff > -0.23943592607975006
              case when refactor_mle_diff <= -2.2792173695052043e-05 then
                case when message_length_avg_diff <= -15.413486003875732 then
                  case when commit_hours_diff <= -0.5 then
                     return 0.8541055718475073 # (1165.0 out of 1364.0)
                  else  # if commit_hours_diff > -0.5
                    case when message_length_avg_diff <= -36.47675132751465 then
                       return 0.8562277580071175 # (1203.0 out of 1405.0)
                    else  # if message_length_avg_diff > -36.47675132751465
                       return 0.8393371757925072 # (1165.0 out of 1388.0)
                    end                   end                 else  # if message_length_avg_diff > -15.413486003875732
                   return 0.8910648714810282 # (728.0 out of 817.0)
                end               else  # if refactor_mle_diff > -2.2792173695052043e-05
                case when message_length_avg_diff <= -52.710248947143555 then
                   return 0.7886977886977887 # (642.0 out of 814.0)
                else  # if message_length_avg_diff > -52.710248947143555
                  case when message_length_avg_diff <= -17.527915954589844 then
                     return 0.8456330399458362 # (1249.0 out of 1477.0)
                  else  # if message_length_avg_diff > -17.527915954589844
                     return 0.8193224592220828 # (653.0 out of 797.0)
                  end                 end               end             end           else  # if commit_hours_diff > 1.5
            case when commit_hours_diff <= 7.5 then
              case when message_length_avg_diff <= -20.93540096282959 then
                case when message_length_avg_diff <= -31.842598915100098 then
                  case when refactor_mle_diff <= -0.06746744364500046 then
                    case when refactor_mle_diff <= -0.20485784113407135 then
                       return 0.8369304556354916 # (698.0 out of 834.0)
                    else  # if refactor_mle_diff > -0.20485784113407135
                       return 0.865531914893617 # (1017.0 out of 1175.0)
                    end                   else  # if refactor_mle_diff > -0.06746744364500046
                    case when refactor_mle_diff <= -0.00013630613102577627 then
                       return 0.9071170084439083 # (752.0 out of 829.0)
                    else  # if refactor_mle_diff > -0.00013630613102577627
                       return 0.8797896318557475 # (1171.0 out of 1331.0)
                    end                   end                 else  # if message_length_avg_diff > -31.842598915100098
                   return 0.8463187991422445 # (1184.0 out of 1399.0)
                end               else  # if message_length_avg_diff > -20.93540096282959
                case when refactor_mle_diff <= -0.05284059792757034 then
                   return 0.851089588377724 # (703.0 out of 826.0)
                else  # if refactor_mle_diff > -0.05284059792757034
                   return 0.8962194217939214 # (1209.0 out of 1349.0)
                end               end             else  # if commit_hours_diff > 7.5
               return 0.911525974025974 # (1123.0 out of 1232.0)
            end           end         else  # if refactor_mle_diff > 0.12897931039333344
          case when message_length_avg_diff <= -25.558144569396973 then
            case when commit_hours_diff <= 1.5 then
               return 0.7941176470588235 # (621.0 out of 782.0)
            else  # if commit_hours_diff > 1.5
               return 0.8489208633093526 # (826.0 out of 973.0)
            end           else  # if message_length_avg_diff > -25.558144569396973
             return 0.765524625267666 # (715.0 out of 934.0)
          end         end       end     end   else  # if message_length_avg_diff > -11.832657814025879
    case when commit_hours_diff <= -2.5 then
      case when commit_hours_diff <= -7.5 then
        case when message_length_avg_diff <= 41.750627517700195 then
          case when commit_hours_diff <= -9.5 then
             return 0.5309849967384214 # (814.0 out of 1533.0)
          else  # if commit_hours_diff > -9.5
            case when refactor_mle_diff <= -0.03792443126440048 then
               return 0.6260657734470159 # (514.0 out of 821.0)
            else  # if refactor_mle_diff > -0.03792443126440048
               return 0.6554903604358759 # (782.0 out of 1193.0)
            end           end         else  # if message_length_avg_diff > 41.750627517700195
           return 0.6384039900249376 # (512.0 out of 802.0)
        end       else  # if commit_hours_diff > -7.5
        case when commit_hours_diff <= -4.5 then
          case when refactor_mle_diff <= 0.08114144951105118 then
            case when message_length_avg_diff <= 23.94786548614502 then
              case when commit_hours_diff <= -6.5 then
                 return 0.7016806722689075 # (835.0 out of 1190.0)
              else  # if commit_hours_diff > -6.5
                case when commit_hours_diff <= -5.5 then
                  case when refactor_mle_diff <= -0.028762955218553543 then
                     return 0.7380952380952381 # (589.0 out of 798.0)
                  else  # if refactor_mle_diff > -0.028762955218553543
                     return 0.7276029055690073 # (601.0 out of 826.0)
                  end                 else  # if commit_hours_diff > -5.5
                  case when message_length_avg_diff <= 3.714798927307129 then
                     return 0.735624586913417 # (1113.0 out of 1513.0)
                  else  # if message_length_avg_diff > 3.714798927307129
                     return 0.759478672985782 # (641.0 out of 844.0)
                  end                 end               end             else  # if message_length_avg_diff > 23.94786548614502
               return 0.696159122085048 # (1015.0 out of 1458.0)
            end           else  # if refactor_mle_diff > 0.08114144951105118
            case when refactor_mle_diff <= 0.18323756009340286 then
               return 0.6821994408201305 # (732.0 out of 1073.0)
            else  # if refactor_mle_diff > 0.18323756009340286
               return 0.7091346153846154 # (590.0 out of 832.0)
            end           end         else  # if commit_hours_diff > -4.5
          case when message_length_avg_diff <= 20.75351905822754 then
            case when message_length_avg_diff <= -4.336292743682861 then
              case when message_length_avg_diff <= -7.0477635860443115 then
                 return 0.7676174496644296 # (915.0 out of 1192.0)
              else  # if message_length_avg_diff > -7.0477635860443115
                 return 0.733402489626556 # (707.0 out of 964.0)
              end             else  # if message_length_avg_diff > -4.336292743682861
              case when refactor_mle_diff <= 0.11682813614606857 then
                case when refactor_mle_diff <= -5.233440606389195e-05 then
                  case when refactor_mle_diff <= -0.09011991694569588 then
                     return 0.7813953488372093 # (1008.0 out of 1290.0)
                  else  # if refactor_mle_diff > -0.09011991694569588
                    case when refactor_mle_diff <= -0.03103030566126108 then
                       return 0.8341892883345561 # (1137.0 out of 1363.0)
                    else  # if refactor_mle_diff > -0.03103030566126108
                       return 0.8244803695150116 # (714.0 out of 866.0)
                    end                   end                 else  # if refactor_mle_diff > -5.233440606389195e-05
                  case when message_length_avg_diff <= 3.3922559022903442 then
                     return 0.8009776536312849 # (1147.0 out of 1432.0)
                  else  # if message_length_avg_diff > 3.3922559022903442
                     return 0.753030303030303 # (994.0 out of 1320.0)
                  end                 end               else  # if refactor_mle_diff > 0.11682813614606857
                 return 0.7116104868913857 # (570.0 out of 801.0)
              end             end           else  # if message_length_avg_diff > 20.75351905822754
            case when refactor_mle_diff <= 0.13177715241909027 then
              case when commit_hours_diff <= -3.5 then
                 return 0.7291666666666666 # (875.0 out of 1200.0)
              else  # if commit_hours_diff > -3.5
                 return 0.7936507936507936 # (1150.0 out of 1449.0)
              end             else  # if refactor_mle_diff > 0.13177715241909027
               return 0.7201492537313433 # (579.0 out of 804.0)
            end           end         end       end     else  # if commit_hours_diff > -2.5
      case when commit_hours_diff <= -0.5 then
        case when commit_hours_diff <= -1.5 then
          case when refactor_mle_diff <= 0.14791959524154663 then
            case when message_length_avg_diff <= 58.858747482299805 then
              case when message_length_avg_diff <= 14.71453857421875 then
                case when message_length_avg_diff <= -2.0888848304748535 then
                  case when refactor_mle_diff <= -0.012097612023353577 then
                     return 0.837914691943128 # (884.0 out of 1055.0)
                  else  # if refactor_mle_diff > -0.012097612023353577
                     return 0.8100208768267223 # (776.0 out of 958.0)
                  end                 else  # if message_length_avg_diff > -2.0888848304748535
                  case when refactor_mle_diff <= -0.07832953333854675 then
                     return 0.815365551425031 # (658.0 out of 807.0)
                  else  # if refactor_mle_diff > -0.07832953333854675
                    case when refactor_mle_diff <= -0.004853980615735054 then
                       return 0.8894052044609665 # (957.0 out of 1076.0)
                    else  # if refactor_mle_diff > -0.004853980615735054
                      case when message_length_avg_diff <= 3.2824493646621704 then
                         return 0.867504835589942 # (897.0 out of 1034.0)
                      else  # if message_length_avg_diff > 3.2824493646621704
                         return 0.8213953488372093 # (883.0 out of 1075.0)
                      end                     end                   end                 end               else  # if message_length_avg_diff > 14.71453857421875
                case when refactor_mle_diff <= -0.005189150106161833 then
                   return 0.8119047619047619 # (682.0 out of 840.0)
                else  # if refactor_mle_diff > -0.005189150106161833
                   return 0.826530612244898 # (648.0 out of 784.0)
                end               end             else  # if message_length_avg_diff > 58.858747482299805
               return 0.7683352735739232 # (660.0 out of 859.0)
            end           else  # if refactor_mle_diff > 0.14791959524154663
             return 0.7657657657657657 # (765.0 out of 999.0)
          end         else  # if commit_hours_diff > -1.5
          case when refactor_mle_diff <= 0.16405890882015228 then
            case when message_length_avg_diff <= 7.012857437133789 then
              case when message_length_avg_diff <= -4.037154912948608 then
                case when refactor_mle_diff <= -0.005021685967221856 then
                   return 0.8559670781893004 # (832.0 out of 972.0)
                else  # if refactor_mle_diff > -0.005021685967221856
                   return 0.7949367088607595 # (628.0 out of 790.0)
                end               else  # if message_length_avg_diff > -4.037154912948608
                case when message_length_avg_diff <= -1.205317735671997 then
                   return 0.8797629127857748 # (1039.0 out of 1181.0)
                else  # if message_length_avg_diff > -1.205317735671997
                  case when refactor_mle_diff <= 6.389918416971341e-05 then
                    case when message_length_avg_diff <= 2.5473079681396484 then
                       return 0.8541839270919636 # (1031.0 out of 1207.0)
                    else  # if message_length_avg_diff > 2.5473079681396484
                       return 0.8191881918819188 # (666.0 out of 813.0)
                    end                   else  # if refactor_mle_diff > 6.389918416971341e-05
                     return 0.8749010292953285 # (1105.0 out of 1263.0)
                  end                 end               end             else  # if message_length_avg_diff > 7.012857437133789
              case when refactor_mle_diff <= -0.10004225745797157 then
                 return 0.7757961783439491 # (609.0 out of 785.0)
              else  # if refactor_mle_diff > -0.10004225745797157
                case when message_length_avg_diff <= 46.0603084564209 then
                  case when refactor_mle_diff <= 0.036032527685165405 then
                    case when refactor_mle_diff <= -0.010499137919396162 then
                       return 0.852017937219731 # (760.0 out of 892.0)
                    else  # if refactor_mle_diff > -0.010499137919396162
                       return 0.8146279949558638 # (646.0 out of 793.0)
                    end                   else  # if refactor_mle_diff > 0.036032527685165405
                     return 0.8581932773109243 # (817.0 out of 952.0)
                  end                 else  # if message_length_avg_diff > 46.0603084564209
                   return 0.8631578947368421 # (902.0 out of 1045.0)
                end               end             end           else  # if refactor_mle_diff > 0.16405890882015228
             return 0.7668292682926829 # (786.0 out of 1025.0)
          end         end       else  # if commit_hours_diff > -0.5
        case when refactor_mle_diff <= 0.12402546033263206 then
          case when message_length_avg_diff <= -6.590933322906494 then
            case when message_length_avg_diff <= -8.249264240264893 then
              case when message_length_avg_diff <= -10.366336345672607 then
                 return 0.9002849002849003 # (948.0 out of 1053.0)
              else  # if message_length_avg_diff > -10.366336345672607
                case when refactor_mle_diff <= -8.882435940904543e-05 then
                   return 0.8828451882845189 # (844.0 out of 956.0)
                else  # if refactor_mle_diff > -8.882435940904543e-05
                   return 0.8545006165228114 # (693.0 out of 811.0)
                end               end             else  # if message_length_avg_diff > -8.249264240264893
              case when refactor_mle_diff <= -0.0029215310933068395 then
                 return 0.8417653390742734 # (782.0 out of 929.0)
              else  # if refactor_mle_diff > -0.0029215310933068395
                 return 0.826302729528536 # (666.0 out of 806.0)
              end             end           else  # if message_length_avg_diff > -6.590933322906494
            case when message_length_avg_diff <= -5.515910387039185 then
               return 0.9107835531419706 # (1174.0 out of 1289.0)
            else  # if message_length_avg_diff > -5.515910387039185
              case when message_length_avg_diff <= -2.729195237159729 then
                case when message_length_avg_diff <= -3.9518940448760986 then
                  case when message_length_avg_diff <= -4.8596367835998535 then
                     return 0.8644264194669756 # (746.0 out of 863.0)
                  else  # if message_length_avg_diff > -4.8596367835998535
                     return 0.8909382518043304 # (1111.0 out of 1247.0)
                  end                 else  # if message_length_avg_diff > -3.9518940448760986
                  case when refactor_mle_diff <= -0.0001353005791315809 then
                     return 0.8589607635206787 # (810.0 out of 943.0)
                  else  # if refactor_mle_diff > -0.0001353005791315809
                     return 0.8256578947368421 # (753.0 out of 912.0)
                  end                 end               else  # if message_length_avg_diff > -2.729195237159729
                case when refactor_mle_diff <= -0.16130715608596802 then
                  case when message_length_avg_diff <= 42.35919761657715 then
                    case when commit_hours_diff <= 1.5 then
                       return 0.7931034482758621 # (713.0 out of 899.0)
                    else  # if commit_hours_diff > 1.5
                       return 0.8417553191489362 # (1266.0 out of 1504.0)
                    end                   else  # if message_length_avg_diff > 42.35919761657715
                     return 0.8459893048128342 # (791.0 out of 935.0)
                  end                 else  # if refactor_mle_diff > -0.16130715608596802
                  case when refactor_mle_diff <= -0.00035083935654256493 then
                    case when commit_hours_diff <= 7.5 then
                      case when message_length_avg_diff <= -1.4632785320281982 then
                         return 0.9284116331096197 # (830.0 out of 894.0)
                      else  # if message_length_avg_diff > -1.4632785320281982
                        case when refactor_mle_diff <= -0.023937123827636242 then
                          case when message_length_avg_diff <= 54.20168113708496 then
                            case when commit_hours_diff <= 2.5 then
                              case when message_length_avg_diff <= 16.690105438232422 then
                                case when refactor_mle_diff <= -0.040667545050382614 then
                                  case when commit_hours_diff <= 0.5 then
                                     return 0.880248833592535 # (1132.0 out of 1286.0)
                                  else  # if commit_hours_diff > 0.5
                                    case when message_length_avg_diff <= 5.850215911865234 then
                                       return 0.8607594936708861 # (952.0 out of 1106.0)
                                    else  # if message_length_avg_diff > 5.850215911865234
                                       return 0.8992718446601942 # (741.0 out of 824.0)
                                    end                                   end                                 else  # if refactor_mle_diff > -0.040667545050382614
                                   return 0.9108409321175278 # (899.0 out of 987.0)
                                end                               else  # if message_length_avg_diff > 16.690105438232422
                                 return 0.8505263157894737 # (1212.0 out of 1425.0)
                              end                             else  # if commit_hours_diff > 2.5
                              case when refactor_mle_diff <= -0.07816826552152634 then
                                 return 0.8698083067092651 # (1089.0 out of 1252.0)
                              else  # if refactor_mle_diff > -0.07816826552152634
                                 return 0.8966887417218543 # (1354.0 out of 1510.0)
                              end                             end                           else  # if message_length_avg_diff > 54.20168113708496
                             return 0.8961625282167043 # (1191.0 out of 1329.0)
                          end                         else  # if refactor_mle_diff > -0.023937123827636242
                          case when refactor_mle_diff <= -0.01687332708388567 then
                             return 0.9166666666666666 # (847.0 out of 924.0)
                          else  # if refactor_mle_diff > -0.01687332708388567
                            case when commit_hours_diff <= 1.5 then
                               return 0.9036144578313253 # (975.0 out of 1079.0)
                            else  # if commit_hours_diff > 1.5
                               return 0.9045936395759717 # (1024.0 out of 1132.0)
                            end                           end                         end                       end                     else  # if commit_hours_diff > 7.5
                       return 0.908641975308642 # (736.0 out of 810.0)
                    end                   else  # if refactor_mle_diff > -0.00035083935654256493
                    case when refactor_mle_diff <= 5.5224550123966765e-06 then
                      case when commit_hours_diff <= 1.5 then
                        case when message_length_avg_diff <= 1.6496255993843079 then
                           return 0.8486682808716707 # (701.0 out of 826.0)
                        else  # if message_length_avg_diff > 1.6496255993843079
                           return 0.8142201834862385 # (710.0 out of 872.0)
                        end                       else  # if commit_hours_diff > 1.5
                        case when message_length_avg_diff <= 1.5487329363822937 then
                           return 0.9195402298850575 # (880.0 out of 957.0)
                        else  # if message_length_avg_diff > 1.5487329363822937
                           return 0.8357558139534884 # (1150.0 out of 1376.0)
                        end                       end                     else  # if refactor_mle_diff > 5.5224550123966765e-06
                      case when message_length_avg_diff <= 90.1216926574707 then
                        case when refactor_mle_diff <= 0.017040950246155262 then
                          case when commit_hours_diff <= 1.5 then
                             return 0.8935331230283912 # (1133.0 out of 1268.0)
                          else  # if commit_hours_diff > 1.5
                             return 0.9271523178807947 # (1260.0 out of 1359.0)
                          end                         else  # if refactor_mle_diff > 0.017040950246155262
                          case when commit_hours_diff <= 0.5 then
                            case when message_length_avg_diff <= 5.634724855422974 then
                               return 0.8713272543059777 # (860.0 out of 987.0)
                            else  # if message_length_avg_diff > 5.634724855422974
                              case when refactor_mle_diff <= 0.057474762201309204 then
                                 return 0.8748370273794003 # (671.0 out of 767.0)
                              else  # if refactor_mle_diff > 0.057474762201309204
                                 return 0.9031877213695395 # (765.0 out of 847.0)
                              end                             end                           else  # if commit_hours_diff > 0.5
                            case when refactor_mle_diff <= 0.06691819429397583 then
                              case when refactor_mle_diff <= 0.026163008995354176 then
                                 return 0.877025738798856 # (920.0 out of 1049.0)
                              else  # if refactor_mle_diff > 0.026163008995354176
                                case when refactor_mle_diff <= 0.035334262996912 then
                                   return 0.9173363949483353 # (799.0 out of 871.0)
                                else  # if refactor_mle_diff > 0.035334262996912
                                  case when message_length_avg_diff <= 2.269223213195801 then
                                     return 0.9149198520345253 # (742.0 out of 811.0)
                                  else  # if message_length_avg_diff > 2.269223213195801
                                    case when message_length_avg_diff <= 15.673983097076416 then
                                       return 0.8716372021521906 # (1134.0 out of 1301.0)
                                    else  # if message_length_avg_diff > 15.673983097076416
                                       return 0.9070667957405615 # (937.0 out of 1033.0)
                                    end                                   end                                 end                               end                             else  # if refactor_mle_diff > 0.06691819429397583
                              case when commit_hours_diff <= 3.5 then
                                case when refactor_mle_diff <= 0.09869363158941269 then
                                   return 0.8896746817538896 # (1258.0 out of 1414.0)
                                else  # if refactor_mle_diff > 0.09869363158941269
                                   return 0.8737113402061856 # (678.0 out of 776.0)
                                end                               else  # if commit_hours_diff > 3.5
                                 return 0.8762641284949435 # (1473.0 out of 1681.0)
                              end                             end                           end                         end                       else  # if message_length_avg_diff > 90.1216926574707
                         return 0.8598726114649682 # (1080.0 out of 1256.0)
                      end                     end                   end                 end               end             end           end         else  # if refactor_mle_diff > 0.12402546033263206
          case when refactor_mle_diff <= 0.14368436485528946 then
            case when refactor_mle_diff <= 0.13351695239543915 then
               return 0.8062953995157385 # (666.0 out of 826.0)
            else  # if refactor_mle_diff > 0.13351695239543915
               return 0.8292383292383292 # (675.0 out of 814.0)
            end           else  # if refactor_mle_diff > 0.14368436485528946
            case when message_length_avg_diff <= 1.7881017923355103 then
               return 0.8068535825545171 # (1295.0 out of 1605.0)
            else  # if message_length_avg_diff > 1.7881017923355103
              case when refactor_mle_diff <= 0.3675181567668915 then
                case when refactor_mle_diff <= 0.27737316489219666 then
                  case when message_length_avg_diff <= 16.19480323791504 then
                     return 0.8302718589272594 # (1130.0 out of 1361.0)
                  else  # if message_length_avg_diff > 16.19480323791504
                    case when message_length_avg_diff <= 42.36270332336426 then
                       return 0.8868471953578336 # (917.0 out of 1034.0)
                    else  # if message_length_avg_diff > 42.36270332336426
                       return 0.8676748582230623 # (1377.0 out of 1587.0)
                    end                   end                 else  # if refactor_mle_diff > 0.27737316489219666
                   return 0.8839190628328009 # (830.0 out of 939.0)
                end               else  # if refactor_mle_diff > 0.3675181567668915
                 return 0.8243243243243243 # (671.0 out of 814.0)
              end             end           end         end       end     end   end )