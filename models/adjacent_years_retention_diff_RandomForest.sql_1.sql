create or replace function RandomForest_1 (message_length_avg_diff int64, refactor_mle_diff int64, commit_hours_diff int64) as (
  case when commit_hours_diff <= -3.5 then
    case when refactor_mle_diff <= 0.21009686589241028 then
      case when refactor_mle_diff <= 0.0012894720421172678 then
        case when commit_hours_diff <= -6.5 then
          case when message_length_avg_diff <= -25.29953098297119 then
             return 0.575 # (483.0 out of 840.0)
          else  # if message_length_avg_diff > -25.29953098297119
            case when refactor_mle_diff <= -0.03084940928965807 then
              case when commit_hours_diff <= -9.5 then
                 return 0.5694736842105264 # (541.0 out of 950.0)
              else  # if commit_hours_diff > -9.5
                case when refactor_mle_diff <= -0.08749500662088394 then
                   return 0.6500765696784073 # (849.0 out of 1306.0)
                else  # if refactor_mle_diff > -0.08749500662088394
                   return 0.6812796208530806 # (575.0 out of 844.0)
                end               end             else  # if refactor_mle_diff > -0.03084940928965807
               return 0.58298755186722 # (843.0 out of 1446.0)
            end           end         else  # if commit_hours_diff > -6.5
          case when message_length_avg_diff <= -9.143455028533936 then
            case when message_length_avg_diff <= -20.07018756866455 then
              case when message_length_avg_diff <= -48.33344841003418 then
                 return 0.724400871459695 # (665.0 out of 918.0)
              else  # if message_length_avg_diff > -48.33344841003418
                 return 0.7588424437299035 # (708.0 out of 933.0)
              end             else  # if message_length_avg_diff > -20.07018756866455
               return 0.6844526218951242 # (744.0 out of 1087.0)
            end           else  # if message_length_avg_diff > -9.143455028533936
            case when commit_hours_diff <= -5.5 then
               return 0.7092105263157895 # (1078.0 out of 1520.0)
            else  # if commit_hours_diff > -5.5
              case when commit_hours_diff <= -4.5 then
                case when message_length_avg_diff <= 10.745454788208008 then
                   return 0.775524981897176 # (1071.0 out of 1381.0)
                else  # if message_length_avg_diff > 10.745454788208008
                   return 0.7144686299615877 # (558.0 out of 781.0)
                end               else  # if commit_hours_diff > -4.5
                case when refactor_mle_diff <= -0.10329221934080124 then
                   return 0.7286432160804021 # (725.0 out of 995.0)
                else  # if refactor_mle_diff > -0.10329221934080124
                  case when refactor_mle_diff <= -0.019705274142324924 then
                     return 0.7966231772831927 # (1038.0 out of 1303.0)
                  else  # if refactor_mle_diff > -0.019705274142324924
                     return 0.7369727047146402 # (594.0 out of 806.0)
                  end                 end               end             end           end         end       else  # if refactor_mle_diff > 0.0012894720421172678
        case when refactor_mle_diff <= 0.014407188631594181 then
           return 0.7713097713097713 # (742.0 out of 962.0)
        else  # if refactor_mle_diff > 0.014407188631594181
          case when commit_hours_diff <= -6.5 then
            case when refactor_mle_diff <= 0.08067809417843819 then
               return 0.6235807860262009 # (714.0 out of 1145.0)
            else  # if refactor_mle_diff > 0.08067809417843819
               return 0.6645796064400715 # (743.0 out of 1118.0)
            end           else  # if commit_hours_diff > -6.5
            case when refactor_mle_diff <= 0.09928521886467934 then
              case when commit_hours_diff <= -4.5 then
                case when refactor_mle_diff <= 0.04831298254430294 then
                   return 0.7290322580645161 # (565.0 out of 775.0)
                else  # if refactor_mle_diff > 0.04831298254430294
                   return 0.776173285198556 # (645.0 out of 831.0)
                end               else  # if commit_hours_diff > -4.5
                 return 0.767515923566879 # (964.0 out of 1256.0)
              end             else  # if refactor_mle_diff > 0.09928521886467934
               return 0.7206736353077816 # (1241.0 out of 1722.0)
            end           end         end       end     else  # if refactor_mle_diff > 0.21009686589241028
      case when refactor_mle_diff <= 0.31802351772785187 then
         return 0.6591606960081884 # (644.0 out of 977.0)
      else  # if refactor_mle_diff > 0.31802351772785187
         return 0.6041397153945667 # (467.0 out of 773.0)
      end     end   else  # if commit_hours_diff > -3.5
    case when message_length_avg_diff <= -6.339880704879761 then
      case when commit_hours_diff <= -0.5 then
        case when message_length_avg_diff <= -12.897368431091309 then
          case when commit_hours_diff <= -1.5 then
            case when refactor_mle_diff <= -0.15585845708847046 then
               return 0.7314410480349345 # (670.0 out of 916.0)
            else  # if refactor_mle_diff > -0.15585845708847046
              case when refactor_mle_diff <= 0.04062853567302227 then
                case when commit_hours_diff <= -2.5 then
                   return 0.7963604852686309 # (919.0 out of 1154.0)
                else  # if commit_hours_diff > -2.5
                   return 0.7803547066848567 # (1144.0 out of 1466.0)
                end               else  # if refactor_mle_diff > 0.04062853567302227
                 return 0.7409783480352847 # (924.0 out of 1247.0)
              end             end           else  # if commit_hours_diff > -1.5
            case when refactor_mle_diff <= -0.010801077354699373 then
              case when message_length_avg_diff <= -39.09147071838379 then
                 return 0.8378712871287128 # (677.0 out of 808.0)
              else  # if message_length_avg_diff > -39.09147071838379
                 return 0.8124341412012644 # (771.0 out of 949.0)
              end             else  # if refactor_mle_diff > -0.010801077354699373
               return 0.7671809256661991 # (1094.0 out of 1426.0)
            end           end         else  # if message_length_avg_diff > -12.897368431091309
          case when refactor_mle_diff <= -8.76461635925807e-05 then
             return 0.8236220472440945 # (1569.0 out of 1905.0)
          else  # if refactor_mle_diff > -8.76461635925807e-05
             return 0.8064304461942258 # (1229.0 out of 1524.0)
          end         end       else  # if commit_hours_diff > -0.5
        case when refactor_mle_diff <= -0.21886800974607468 then
          case when refactor_mle_diff <= -0.35516685247421265 then
             return 0.7805486284289277 # (626.0 out of 802.0)
          else  # if refactor_mle_diff > -0.35516685247421265
             return 0.8160603980782429 # (1189.0 out of 1457.0)
          end         else  # if refactor_mle_diff > -0.21886800974607468
          case when commit_hours_diff <= 2.5 then
            case when commit_hours_diff <= 1.5 then
              case when message_length_avg_diff <= -13.614743709564209 then
                case when commit_hours_diff <= 0.5 then
                  case when refactor_mle_diff <= 0.007952343672513962 then
                    case when message_length_avg_diff <= -35.83148765563965 then
                       return 0.8589108910891089 # (694.0 out of 808.0)
                    else  # if message_length_avg_diff > -35.83148765563965
                       return 0.8394683026584867 # (821.0 out of 978.0)
                    end                   else  # if refactor_mle_diff > 0.007952343672513962
                     return 0.8698795180722891 # (1083.0 out of 1245.0)
                  end                 else  # if commit_hours_diff > 0.5
                  case when refactor_mle_diff <= -3.749456300283782e-05 then
                     return 0.874095513748191 # (1208.0 out of 1382.0)
                  else  # if refactor_mle_diff > -3.749456300283782e-05
                     return 0.8388185654008439 # (994.0 out of 1185.0)
                  end                 end               else  # if message_length_avg_diff > -13.614743709564209
                case when refactor_mle_diff <= -8.882435940904543e-05 then
                   return 0.8695652173913043 # (1300.0 out of 1495.0)
                else  # if refactor_mle_diff > -8.882435940904543e-05
                   return 0.8038277511961722 # (1176.0 out of 1463.0)
                end               end             else  # if commit_hours_diff > 1.5
              case when refactor_mle_diff <= -0.06203734502196312 then
                 return 0.8209277238403452 # (761.0 out of 927.0)
              else  # if refactor_mle_diff > -0.06203734502196312
                case when message_length_avg_diff <= -28.38980197906494 then
                   return 0.882147024504084 # (756.0 out of 857.0)
                else  # if message_length_avg_diff > -28.38980197906494
                   return 0.8593964334705075 # (1253.0 out of 1458.0)
                end               end             end           else  # if commit_hours_diff > 2.5
            case when commit_hours_diff <= 8.5 then
              case when commit_hours_diff <= 3.5 then
                case when refactor_mle_diff <= 5.0686503527686e-05 then
                   return 0.8655589123867069 # (1146.0 out of 1324.0)
                else  # if refactor_mle_diff > 5.0686503527686e-05
                   return 0.8813151563753007 # (1099.0 out of 1247.0)
                end               else  # if commit_hours_diff > 3.5
                case when refactor_mle_diff <= -0.008235405199229717 then
                  case when commit_hours_diff <= 5.5 then
                     return 0.8856282919488337 # (1177.0 out of 1329.0)
                  else  # if commit_hours_diff > 5.5
                     return 0.896551724137931 # (780.0 out of 870.0)
                  end                 else  # if refactor_mle_diff > -0.008235405199229717
                  case when commit_hours_diff <= 4.5 then
                     return 0.856404958677686 # (829.0 out of 968.0)
                  else  # if commit_hours_diff > 4.5
                    case when refactor_mle_diff <= 0.113658856600523 then
                       return 0.8628969790859798 # (1114.0 out of 1291.0)
                    else  # if refactor_mle_diff > 0.113658856600523
                       return 0.8244084682440846 # (662.0 out of 803.0)
                    end                   end                 end               end             else  # if commit_hours_diff > 8.5
               return 0.9039145907473309 # (1016.0 out of 1124.0)
            end           end         end       end     else  # if message_length_avg_diff > -6.339880704879761
      case when refactor_mle_diff <= 0.22468672692775726 then
        case when refactor_mle_diff <= -0.19067492336034775 then
          case when commit_hours_diff <= 0.5 then
            case when refactor_mle_diff <= -0.2777234613895416 then
               return 0.7950920245398773 # (648.0 out of 815.0)
            else  # if refactor_mle_diff > -0.2777234613895416
               return 0.7420262664165104 # (791.0 out of 1066.0)
            end           else  # if commit_hours_diff > 0.5
            case when commit_hours_diff <= 2.5 then
               return 0.8571428571428571 # (750.0 out of 875.0)
            else  # if commit_hours_diff > 2.5
               return 0.8370313695485846 # (1094.0 out of 1307.0)
            end           end         else  # if refactor_mle_diff > -0.19067492336034775
          case when refactor_mle_diff <= 0.13044794648885727 then
            case when commit_hours_diff <= -1.5 then
              case when refactor_mle_diff <= -0.1066369116306305 then
                 return 0.7849544072948328 # (1033.0 out of 1316.0)
              else  # if refactor_mle_diff > -0.1066369116306305
                case when message_length_avg_diff <= 43.79848289489746 then
                  case when refactor_mle_diff <= -0.0007140953384805471 then
                    case when refactor_mle_diff <= -0.017954357899725437 then
                      case when message_length_avg_diff <= 0.3705429881811142 then
                         return 0.8111753371868978 # (842.0 out of 1038.0)
                      else  # if message_length_avg_diff > 0.3705429881811142
                        case when refactor_mle_diff <= -0.042576005682349205 then
                           return 0.8618468146027202 # (1204.0 out of 1397.0)
                        else  # if refactor_mle_diff > -0.042576005682349205
                           return 0.8176470588235294 # (695.0 out of 850.0)
                        end                       end                     else  # if refactor_mle_diff > -0.017954357899725437
                       return 0.8626237623762376 # (697.0 out of 808.0)
                    end                   else  # if refactor_mle_diff > -0.0007140953384805471
                    case when commit_hours_diff <= -2.5 then
                      case when message_length_avg_diff <= 7.990074872970581 then
                         return 0.8112582781456954 # (1225.0 out of 1510.0)
                      else  # if message_length_avg_diff > 7.990074872970581
                         return 0.8323207776427703 # (685.0 out of 823.0)
                      end                     else  # if commit_hours_diff > -2.5
                      case when refactor_mle_diff <= 0.004436894785612822 then
                         return 0.7634543178973717 # (610.0 out of 799.0)
                      else  # if refactor_mle_diff > 0.004436894785612822
                        case when refactor_mle_diff <= 0.06492487341165543 then
                           return 0.8461021505376344 # (1259.0 out of 1488.0)
                        else  # if refactor_mle_diff > 0.06492487341165543
                           return 0.818297331639136 # (644.0 out of 787.0)
                        end                       end                     end                   end                 else  # if message_length_avg_diff > 43.79848289489746
                   return 0.7838018741633199 # (1171.0 out of 1494.0)
                end               end             else  # if commit_hours_diff > -1.5
              case when refactor_mle_diff <= -3.908428425347665e-06 then
                case when commit_hours_diff <= -0.5 then
                  case when refactor_mle_diff <= -0.0485633984208107 then
                    case when refactor_mle_diff <= -0.07496928796172142 then
                       return 0.8442622950819673 # (1236.0 out of 1464.0)
                    else  # if refactor_mle_diff > -0.07496928796172142
                       return 0.8274173806609547 # (676.0 out of 817.0)
                    end                   else  # if refactor_mle_diff > -0.0485633984208107
                    case when message_length_avg_diff <= 3.3052462339401245 then
                       return 0.9019384264538198 # (791.0 out of 877.0)
                    else  # if message_length_avg_diff > 3.3052462339401245
                       return 0.8751238850346879 # (883.0 out of 1009.0)
                    end                   end                 else  # if commit_hours_diff > -0.5
                  case when commit_hours_diff <= 6.5 then
                    case when refactor_mle_diff <= -0.05606578104197979 then
                      case when commit_hours_diff <= 4.5 then
                        case when message_length_avg_diff <= 4.733815670013428 then
                          case when commit_hours_diff <= 1.5 then
                            case when refactor_mle_diff <= -0.09706908464431763 then
                               return 0.8900343642611683 # (777.0 out of 873.0)
                            else  # if refactor_mle_diff > -0.09706908464431763
                               return 0.9024390243902439 # (777.0 out of 861.0)
                            end                           else  # if commit_hours_diff > 1.5
                             return 0.8863636363636364 # (1053.0 out of 1188.0)
                          end                         else  # if message_length_avg_diff > 4.733815670013428
                          case when commit_hours_diff <= 2.5 then
                            case when commit_hours_diff <= 1.5 then
                              case when commit_hours_diff <= 0.5 then
                                 return 0.8653683319220999 # (1022.0 out of 1181.0)
                              else  # if commit_hours_diff > 0.5
                                 return 0.8602794411177644 # (862.0 out of 1002.0)
                              end                             else  # if commit_hours_diff > 1.5
                               return 0.8477722772277227 # (685.0 out of 808.0)
                            end                           else  # if commit_hours_diff > 2.5
                             return 0.8660886319845857 # (899.0 out of 1038.0)
                          end                         end                       else  # if commit_hours_diff > 4.5
                         return 0.8881036513545347 # (754.0 out of 849.0)
                      end                     else  # if refactor_mle_diff > -0.05606578104197979
                      case when message_length_avg_diff <= 36.03411674499512 then
                        case when commit_hours_diff <= 2.5 then
                          case when refactor_mle_diff <= -0.03799922950565815 then
                             return 0.9221251819505094 # (1267.0 out of 1374.0)
                          else  # if refactor_mle_diff > -0.03799922950565815
                            case when message_length_avg_diff <= 11.696815967559814 then
                              case when commit_hours_diff <= 0.5 then
                                 return 0.9126050420168067 # (1086.0 out of 1190.0)
                              else  # if commit_hours_diff > 0.5
                                 return 0.9079214624238321 # (1341.0 out of 1477.0)
                              end                             else  # if message_length_avg_diff > 11.696815967559814
                               return 0.890818858560794 # (718.0 out of 806.0)
                            end                           end                         else  # if commit_hours_diff > 2.5
                          case when commit_hours_diff <= 3.5 then
                             return 0.9230769230769231 # (840.0 out of 910.0)
                          else  # if commit_hours_diff > 3.5
                             return 0.9165964616680707 # (1088.0 out of 1187.0)
                          end                         end                       else  # if message_length_avg_diff > 36.03411674499512
                         return 0.8779019776440241 # (1021.0 out of 1163.0)
                      end                     end                   else  # if commit_hours_diff > 6.5
                     return 0.9168413696715584 # (1312.0 out of 1431.0)
                  end                 end               else  # if refactor_mle_diff > -3.908428425347665e-06
                case when refactor_mle_diff <= 5.2896416491421405e-06 then
                  case when commit_hours_diff <= 1.5 then
                    case when commit_hours_diff <= -0.5 then
                       return 0.7524875621890548 # (605.0 out of 804.0)
                    else  # if commit_hours_diff > -0.5
                      case when message_length_avg_diff <= 0.8942460417747498 then
                         return 0.8173076923076923 # (680.0 out of 832.0)
                      else  # if message_length_avg_diff > 0.8942460417747498
                         return 0.7754491017964071 # (777.0 out of 1002.0)
                      end                     end                   else  # if commit_hours_diff > 1.5
                    case when message_length_avg_diff <= 0.8779687881469727 then
                       return 0.8737233054781801 # (941.0 out of 1077.0)
                    else  # if message_length_avg_diff > 0.8779687881469727
                       return 0.8551007147498375 # (1316.0 out of 1539.0)
                    end                   end                 else  # if refactor_mle_diff > 5.2896416491421405e-06
                  case when message_length_avg_diff <= 7.502614259719849 then
                    case when message_length_avg_diff <= -2.3882840871810913 then
                      case when refactor_mle_diff <= 0.0275350259616971 then
                         return 0.9119106699751861 # (735.0 out of 806.0)
                      else  # if refactor_mle_diff > 0.0275350259616971
                        case when commit_hours_diff <= 1.5 then
                           return 0.8252427184466019 # (765.0 out of 927.0)
                        else  # if commit_hours_diff > 1.5
                           return 0.8873762376237624 # (717.0 out of 808.0)
                        end                       end                     else  # if message_length_avg_diff > -2.3882840871810913
                      case when message_length_avg_diff <= 5.038912296295166 then
                        case when commit_hours_diff <= 0.5 then
                          case when message_length_avg_diff <= 2.1998367309570312 then
                             return 0.8734413965087282 # (1401.0 out of 1604.0)
                          else  # if message_length_avg_diff > 2.1998367309570312
                             return 0.8934240362811792 # (788.0 out of 882.0)
                          end                         else  # if commit_hours_diff > 0.5
                          case when commit_hours_diff <= 4.5 then
                            case when message_length_avg_diff <= 1.248413622379303 then
                               return 0.9226770630279402 # (1420.0 out of 1539.0)
                            else  # if message_length_avg_diff > 1.248413622379303
                               return 0.8767772511848341 # (1295.0 out of 1477.0)
                            end                           else  # if commit_hours_diff > 4.5
                             return 0.9127061105722599 # (941.0 out of 1031.0)
                          end                         end                       else  # if message_length_avg_diff > 5.038912296295166
                        case when message_length_avg_diff <= 6.223490238189697 then
                           return 0.9305882352941176 # (791.0 out of 850.0)
                        else  # if message_length_avg_diff > 6.223490238189697
                           return 0.907292954264524 # (734.0 out of 809.0)
                        end                       end                     end                   else  # if message_length_avg_diff > 7.502614259719849
                    case when commit_hours_diff <= 6.5 then
                      case when commit_hours_diff <= 4.5 then
                        case when commit_hours_diff <= 1.5 then
                          case when commit_hours_diff <= -0.5 then
                            case when refactor_mle_diff <= 0.047722334042191505 then
                               return 0.8640192539109507 # (718.0 out of 831.0)
                            else  # if refactor_mle_diff > 0.047722334042191505
                               return 0.8945783132530121 # (891.0 out of 996.0)
                            end                           else  # if commit_hours_diff > -0.5
                            case when message_length_avg_diff <= 11.873319149017334 then
                               return 0.8557336621454994 # (694.0 out of 811.0)
                            else  # if message_length_avg_diff > 11.873319149017334
                              case when commit_hours_diff <= 0.5 then
                                case when message_length_avg_diff <= 34.5307731628418 then
                                   return 0.8793774319066148 # (678.0 out of 771.0)
                                else  # if message_length_avg_diff > 34.5307731628418
                                   return 0.8658854166666666 # (665.0 out of 768.0)
                                end                               else  # if commit_hours_diff > 0.5
                                 return 0.8814923189465984 # (1205.0 out of 1367.0)
                              end                             end                           end                         else  # if commit_hours_diff > 1.5
                          case when refactor_mle_diff <= 0.08827770873904228 then
                            case when refactor_mle_diff <= 0.0405954010784626 then
                               return 0.8741071428571429 # (979.0 out of 1120.0)
                            else  # if refactor_mle_diff > 0.0405954010784626
                               return 0.9089529590288316 # (1198.0 out of 1318.0)
                            end                           else  # if refactor_mle_diff > 0.08827770873904228
                             return 0.8704156479217604 # (712.0 out of 818.0)
                          end                         end                       else  # if commit_hours_diff > 4.5
                         return 0.8646034816247582 # (894.0 out of 1034.0)
                      end                     else  # if commit_hours_diff > 6.5
                       return 0.9076433121019108 # (855.0 out of 942.0)
                    end                   end                 end               end             end           else  # if refactor_mle_diff > 0.13044794648885727
            case when commit_hours_diff <= 0.5 then
              case when commit_hours_diff <= -0.5 then
                case when refactor_mle_diff <= 0.1630580648779869 then
                   return 0.8030139935414424 # (746.0 out of 929.0)
                else  # if refactor_mle_diff > 0.1630580648779869
                   return 0.7803958529688972 # (828.0 out of 1061.0)
                end               else  # if commit_hours_diff > -0.5
                 return 0.8250289687137891 # (712.0 out of 863.0)
              end             else  # if commit_hours_diff > 0.5
              case when commit_hours_diff <= 3.5 then
                case when commit_hours_diff <= 1.5 then
                   return 0.8436018957345972 # (712.0 out of 844.0)
                else  # if commit_hours_diff > 1.5
                   return 0.8573770491803279 # (1046.0 out of 1220.0)
                end               else  # if commit_hours_diff > 3.5
                case when message_length_avg_diff <= 16.82157611846924 then
                   return 0.9223300970873787 # (760.0 out of 824.0)
                else  # if message_length_avg_diff > 16.82157611846924
                   return 0.8748403575989783 # (685.0 out of 783.0)
                end               end             end           end         end       else  # if refactor_mle_diff > 0.22468672692775726
        case when commit_hours_diff <= -0.5 then
           return 0.7254901960784313 # (1036.0 out of 1428.0)
        else  # if commit_hours_diff > -0.5
          case when refactor_mle_diff <= 0.2587759643793106 then
             return 0.8492688413948256 # (755.0 out of 889.0)
          else  # if refactor_mle_diff > 0.2587759643793106
            case when refactor_mle_diff <= 0.3059210777282715 then
               return 0.8105781057810578 # (659.0 out of 813.0)
            else  # if refactor_mle_diff > 0.3059210777282715
              case when commit_hours_diff <= 2.5 then
                 return 0.806282722513089 # (616.0 out of 764.0)
              else  # if commit_hours_diff > 2.5
                 return 0.8624401913875598 # (721.0 out of 836.0)
              end             end           end         end       end     end   end )