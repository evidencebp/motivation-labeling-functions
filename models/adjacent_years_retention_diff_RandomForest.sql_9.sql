create or replace function RandomForest_9 (message_length_avg_diff int64, refactor_mle_diff int64, commit_hours_diff int64) as (
  case when message_length_avg_diff <= -5.781147718429565 then
    case when message_length_avg_diff <= -18.11030673980713 then
      case when commit_hours_diff <= -3.5 then
        case when commit_hours_diff <= -6.5 then
          case when refactor_mle_diff <= -0.06644530221819878 then
             return 0.5739130434782609 # (462.0 out of 805.0)
          else  # if refactor_mle_diff > -0.06644530221819878
             return 0.5987951807228916 # (497.0 out of 830.0)
          end         else  # if commit_hours_diff > -6.5
          case when refactor_mle_diff <= -0.1061384528875351 then
             return 0.7447619047619047 # (782.0 out of 1050.0)
          else  # if refactor_mle_diff > -0.1061384528875351
            case when commit_hours_diff <= -4.5 then
               return 0.6999050332383666 # (737.0 out of 1053.0)
            else  # if commit_hours_diff > -4.5
               return 0.7329479768786127 # (634.0 out of 865.0)
            end           end         end       else  # if commit_hours_diff > -3.5
        case when refactor_mle_diff <= -0.2154107242822647 then
          case when commit_hours_diff <= 1.5 then
             return 0.7489626556016598 # (1083.0 out of 1446.0)
          else  # if commit_hours_diff > 1.5
             return 0.817258883248731 # (966.0 out of 1182.0)
          end         else  # if refactor_mle_diff > -0.2154107242822647
          case when commit_hours_diff <= -0.5 then
            case when message_length_avg_diff <= -42.12257194519043 then
              case when commit_hours_diff <= -1.5 then
                case when message_length_avg_diff <= -78.90657424926758 then
                   return 0.7950727883538634 # (710.0 out of 893.0)
                else  # if message_length_avg_diff > -78.90657424926758
                   return 0.8165829145728644 # (650.0 out of 796.0)
                end               else  # if commit_hours_diff > -1.5
                 return 0.8390804597701149 # (949.0 out of 1131.0)
              end             else  # if message_length_avg_diff > -42.12257194519043
              case when refactor_mle_diff <= 0.00020963672432117164 then
                 return 0.7595861229458308 # (1248.0 out of 1643.0)
              else  # if refactor_mle_diff > 0.00020963672432117164
                 return 0.8024489795918367 # (983.0 out of 1225.0)
              end             end           else  # if commit_hours_diff > -0.5
            case when message_length_avg_diff <= -105.31832122802734 then
              case when refactor_mle_diff <= -0.0003649835998658091 then
                 return 0.8978685612788633 # (1011.0 out of 1126.0)
              else  # if refactor_mle_diff > -0.0003649835998658091
                 return 0.8638689866939611 # (844.0 out of 977.0)
              end             else  # if message_length_avg_diff > -105.31832122802734
              case when commit_hours_diff <= 5.5 then
                case when refactor_mle_diff <= 0.1391879841685295 then
                  case when refactor_mle_diff <= 0.004264767514541745 then
                    case when refactor_mle_diff <= -0.014354733750224113 then
                      case when refactor_mle_diff <= -0.08175293728709221 then
                        case when message_length_avg_diff <= -41.401350021362305 then
                           return 0.806609547123623 # (659.0 out of 817.0)
                        else  # if message_length_avg_diff > -41.401350021362305
                           return 0.8704710144927537 # (961.0 out of 1104.0)
                        end                       else  # if refactor_mle_diff > -0.08175293728709221
                        case when commit_hours_diff <= 1.5 then
                           return 0.8850574712643678 # (770.0 out of 870.0)
                        else  # if commit_hours_diff > 1.5
                           return 0.8955732122587968 # (789.0 out of 881.0)
                        end                       end                     else  # if refactor_mle_diff > -0.014354733750224113
                       return 0.7887667887667887 # (646.0 out of 819.0)
                    end                   else  # if refactor_mle_diff > 0.004264767514541745
                    case when refactor_mle_diff <= 0.048559051007032394 then
                       return 0.892422825070159 # (954.0 out of 1069.0)
                    else  # if refactor_mle_diff > 0.048559051007032394
                       return 0.8720445062586927 # (1254.0 out of 1438.0)
                    end                   end                 else  # if refactor_mle_diff > 0.1391879841685295
                   return 0.7795497185741088 # (831.0 out of 1066.0)
                end               else  # if commit_hours_diff > 5.5
                case when message_length_avg_diff <= -38.90682601928711 then
                   return 0.9058064516129032 # (702.0 out of 775.0)
                else  # if message_length_avg_diff > -38.90682601928711
                   return 0.914249684741488 # (725.0 out of 793.0)
                end               end             end           end         end       end     else  # if message_length_avg_diff > -18.11030673980713
      case when refactor_mle_diff <= 0.1509983390569687 then
        case when commit_hours_diff <= -2.5 then
          case when commit_hours_diff <= -7.5 then
             return 0.5940023068050749 # (515.0 out of 867.0)
          else  # if commit_hours_diff > -7.5
            case when commit_hours_diff <= -3.5 then
              case when refactor_mle_diff <= -0.06234215386211872 then
                 return 0.7535934291581109 # (734.0 out of 974.0)
              else  # if refactor_mle_diff > -0.06234215386211872
                 return 0.6657946370176586 # (1018.0 out of 1529.0)
              end             else  # if commit_hours_diff > -3.5
               return 0.7479307750188111 # (994.0 out of 1329.0)
            end           end         else  # if commit_hours_diff > -2.5
          case when commit_hours_diff <= -0.5 then
            case when commit_hours_diff <= -1.5 then
              case when refactor_mle_diff <= -0.02698878664523363 then
                 return 0.7780458383594693 # (645.0 out of 829.0)
              else  # if refactor_mle_diff > -0.02698878664523363
                 return 0.8042452830188679 # (682.0 out of 848.0)
              end             else  # if commit_hours_diff > -1.5
              case when message_length_avg_diff <= -9.41254186630249 then
                 return 0.8076271186440678 # (953.0 out of 1180.0)
              else  # if message_length_avg_diff > -9.41254186630249
                 return 0.837708830548926 # (702.0 out of 838.0)
              end             end           else  # if commit_hours_diff > -0.5
            case when message_length_avg_diff <= -9.722132682800293 then
              case when commit_hours_diff <= 0.5 then
                 return 0.8125537403267412 # (945.0 out of 1163.0)
              else  # if commit_hours_diff > 0.5
                case when refactor_mle_diff <= 0.016529817134141922 then
                  case when refactor_mle_diff <= -0.018913005478680134 then
                    case when message_length_avg_diff <= -13.824911117553711 then
                       return 0.8677248677248677 # (656.0 out of 756.0)
                    else  # if message_length_avg_diff > -13.824911117553711
                       return 0.8306976744186046 # (893.0 out of 1075.0)
                    end                   else  # if refactor_mle_diff > -0.018913005478680134
                     return 0.8158890290037831 # (647.0 out of 793.0)
                  end                 else  # if refactor_mle_diff > 0.016529817134141922
                   return 0.9017788089713844 # (1166.0 out of 1293.0)
                end               end             else  # if message_length_avg_diff > -9.722132682800293
              case when commit_hours_diff <= 1.5 then
                case when commit_hours_diff <= 0.5 then
                   return 0.8661417322834646 # (880.0 out of 1016.0)
                else  # if commit_hours_diff > 0.5
                   return 0.8459657701711492 # (692.0 out of 818.0)
                end               else  # if commit_hours_diff > 1.5
                case when message_length_avg_diff <= -8.102132797241211 then
                   return 0.8946784922394678 # (807.0 out of 902.0)
                else  # if message_length_avg_diff > -8.102132797241211
                   return 0.8589458054936897 # (1157.0 out of 1347.0)
                end               end             end           end         end       else  # if refactor_mle_diff > 0.1509983390569687
         return 0.7254632807137955 # (1057.0 out of 1457.0)
      end     end   else  # if message_length_avg_diff > -5.781147718429565
    case when commit_hours_diff <= -3.5 then
      case when refactor_mle_diff <= 0.21625851839780807 then
        case when refactor_mle_diff <= 0.000935422460315749 then
          case when message_length_avg_diff <= 21.071392059326172 then
            case when message_length_avg_diff <= 9.637964248657227 then
              case when message_length_avg_diff <= 6.024372816085815 then
                case when commit_hours_diff <= -7.5 then
                   return 0.605832549388523 # (644.0 out of 1063.0)
                else  # if commit_hours_diff > -7.5
                  case when message_length_avg_diff <= -0.34599097073078156 then
                     return 0.7224080267558528 # (1080.0 out of 1495.0)
                  else  # if message_length_avg_diff > -0.34599097073078156
                    case when message_length_avg_diff <= 1.7040765285491943 then
                       return 0.7731196054254007 # (627.0 out of 811.0)
                    else  # if message_length_avg_diff > 1.7040765285491943
                       return 0.7463369963369964 # (815.0 out of 1092.0)
                    end                   end                 end               else  # if message_length_avg_diff > 6.024372816085815
                 return 0.668806161745828 # (521.0 out of 779.0)
              end             else  # if message_length_avg_diff > 9.637964248657227
               return 0.7278067885117493 # (1115.0 out of 1532.0)
            end           else  # if message_length_avg_diff > 21.071392059326172
            case when message_length_avg_diff <= 75.73643493652344 then
              case when refactor_mle_diff <= -0.07208450138568878 then
                 return 0.6810699588477366 # (662.0 out of 972.0)
              else  # if refactor_mle_diff > -0.07208450138568878
                 return 0.636038186157518 # (533.0 out of 838.0)
              end             else  # if message_length_avg_diff > 75.73643493652344
               return 0.7353279631760644 # (639.0 out of 869.0)
            end           end         else  # if refactor_mle_diff > 0.000935422460315749
          case when message_length_avg_diff <= 67.82091903686523 then
            case when commit_hours_diff <= -7.5 then
               return 0.6359696641386782 # (587.0 out of 923.0)
            else  # if commit_hours_diff > -7.5
              case when refactor_mle_diff <= 0.08100628107786179 then
                case when message_length_avg_diff <= 4.050898313522339 then
                   return 0.7955465587044535 # (786.0 out of 988.0)
                else  # if message_length_avg_diff > 4.050898313522339
                   return 0.7606534090909091 # (1071.0 out of 1408.0)
                end               else  # if refactor_mle_diff > 0.08100628107786179
                 return 0.7413314840499307 # (1069.0 out of 1442.0)
              end             end           else  # if message_length_avg_diff > 67.82091903686523
             return 0.7040816326530612 # (621.0 out of 882.0)
          end         end       else  # if refactor_mle_diff > 0.21625851839780807
         return 0.6389568052159739 # (784.0 out of 1227.0)
      end     else  # if commit_hours_diff > -3.5
      case when commit_hours_diff <= -1.5 then
        case when commit_hours_diff <= -2.5 then
          case when refactor_mle_diff <= 0.13157327473163605 then
            case when message_length_avg_diff <= 40.63673400878906 then
              case when refactor_mle_diff <= 0.0009242908272426575 then
                case when message_length_avg_diff <= 2.4522480964660645 then
                   return 0.7759815242494227 # (1008.0 out of 1299.0)
                else  # if message_length_avg_diff > 2.4522480964660645
                  case when message_length_avg_diff <= 9.87122106552124 then
                     return 0.8313413014608234 # (626.0 out of 753.0)
                  else  # if message_length_avg_diff > 9.87122106552124
                     return 0.8098086124401914 # (677.0 out of 836.0)
                  end                 end               else  # if refactor_mle_diff > 0.0009242908272426575
                case when refactor_mle_diff <= 0.04226558469235897 then
                   return 0.8555691554467564 # (699.0 out of 817.0)
                else  # if refactor_mle_diff > 0.04226558469235897
                   return 0.8109339407744874 # (712.0 out of 878.0)
                end               end             else  # if message_length_avg_diff > 40.63673400878906
               return 0.7833163784333672 # (770.0 out of 983.0)
            end           else  # if refactor_mle_diff > 0.13157327473163605
             return 0.7051282051282052 # (605.0 out of 858.0)
          end         else  # if commit_hours_diff > -2.5
          case when message_length_avg_diff <= 52.0177116394043 then
            case when refactor_mle_diff <= -0.1068074069917202 then
               return 0.7722772277227723 # (780.0 out of 1010.0)
            else  # if refactor_mle_diff > -0.1068074069917202
              case when message_length_avg_diff <= 0.45509228110313416 then
                case when message_length_avg_diff <= -1.7149699330329895 then
                   return 0.8306930693069307 # (839.0 out of 1010.0)
                else  # if message_length_avg_diff > -1.7149699330329895
                   return 0.781908302354399 # (631.0 out of 807.0)
                end               else  # if message_length_avg_diff > 0.45509228110313416
                case when message_length_avg_diff <= 3.3146783113479614 then
                   return 0.8928571428571429 # (800.0 out of 896.0)
                else  # if message_length_avg_diff > 3.3146783113479614
                  case when refactor_mle_diff <= -0.0026097806403413415 then
                     return 0.8416220351951033 # (1100.0 out of 1307.0)
                  else  # if refactor_mle_diff > -0.0026097806403413415
                    case when refactor_mle_diff <= 0.0400072205811739 then
                       return 0.7827715355805244 # (627.0 out of 801.0)
                    else  # if refactor_mle_diff > 0.0400072205811739
                       return 0.8333333333333334 # (1175.0 out of 1410.0)
                    end                   end                 end               end             end           else  # if message_length_avg_diff > 52.0177116394043
             return 0.7868975903614458 # (1045.0 out of 1328.0)
          end         end       else  # if commit_hours_diff > -1.5
        case when commit_hours_diff <= 0.5 then
          case when refactor_mle_diff <= 0.1434711441397667 then
            case when refactor_mle_diff <= -0.20182368904352188 then
               return 0.7838405036726128 # (747.0 out of 953.0)
            else  # if refactor_mle_diff > -0.20182368904352188
              case when message_length_avg_diff <= 23.265877723693848 then
                case when message_length_avg_diff <= 15.167656898498535 then
                  case when message_length_avg_diff <= -2.745680332183838 then
                    case when commit_hours_diff <= -0.5 then
                       return 0.8504486540378864 # (853.0 out of 1003.0)
                    else  # if commit_hours_diff > -0.5
                       return 0.8561020036429873 # (940.0 out of 1098.0)
                    end                   else  # if message_length_avg_diff > -2.745680332183838
                    case when message_length_avg_diff <= -1.7541887760162354 then
                       return 0.9108669108669109 # (746.0 out of 819.0)
                    else  # if message_length_avg_diff > -1.7541887760162354
                      case when refactor_mle_diff <= -0.09391028434038162 then
                         return 0.8288288288288288 # (920.0 out of 1110.0)
                      else  # if refactor_mle_diff > -0.09391028434038162
                        case when refactor_mle_diff <= -0.05753113888204098 then
                           return 0.90216271884655 # (876.0 out of 971.0)
                        else  # if refactor_mle_diff > -0.05753113888204098
                          case when message_length_avg_diff <= 8.590097427368164 then
                            case when commit_hours_diff <= -0.5 then
                              case when refactor_mle_diff <= 0.00013665186997968704 then
                                 return 0.8408769448373409 # (1189.0 out of 1414.0)
                              else  # if refactor_mle_diff > 0.00013665186997968704
                                 return 0.885234899328859 # (1319.0 out of 1490.0)
                              end                             else  # if commit_hours_diff > -0.5
                              case when refactor_mle_diff <= -2.19271478272276e-05 then
                                 return 0.8941289701636189 # (929.0 out of 1039.0)
                              else  # if refactor_mle_diff > -2.19271478272276e-05
                                case when message_length_avg_diff <= 3.6978049278259277 then
                                   return 0.8640054127198917 # (1277.0 out of 1478.0)
                                else  # if message_length_avg_diff > 3.6978049278259277
                                   return 0.8815461346633416 # (707.0 out of 802.0)
                                end                               end                             end                           else  # if message_length_avg_diff > 8.590097427368164
                            case when message_length_avg_diff <= 11.14714002609253 then
                               return 0.8482587064676617 # (682.0 out of 804.0)
                            else  # if message_length_avg_diff > 11.14714002609253
                               return 0.8552036199095022 # (756.0 out of 884.0)
                            end                           end                         end                       end                     end                   end                 else  # if message_length_avg_diff > 15.167656898498535
                   return 0.8973463687150838 # (1285.0 out of 1432.0)
                end               else  # if message_length_avg_diff > 23.265877723693848
                case when message_length_avg_diff <= 34.320457458496094 then
                   return 0.8222811671087533 # (930.0 out of 1131.0)
                else  # if message_length_avg_diff > 34.320457458496094
                  case when message_length_avg_diff <= 61.49027633666992 then
                     return 0.8736692689850958 # (1231.0 out of 1409.0)
                  else  # if message_length_avg_diff > 61.49027633666992
                    case when message_length_avg_diff <= 121.52130889892578 then
                       return 0.8541247484909457 # (849.0 out of 994.0)
                    else  # if message_length_avg_diff > 121.52130889892578
                       return 0.8663366336633663 # (700.0 out of 808.0)
                    end                   end                 end               end             end           else  # if refactor_mle_diff > 0.1434711441397667
            case when message_length_avg_diff <= 46.265390396118164 then
               return 0.8186462324393359 # (1282.0 out of 1566.0)
            else  # if message_length_avg_diff > 46.265390396118164
               return 0.7912735849056604 # (671.0 out of 848.0)
            end           end         else  # if commit_hours_diff > 0.5
          case when refactor_mle_diff <= 0.10582087934017181 then
            case when message_length_avg_diff <= 146.4415283203125 then
              case when refactor_mle_diff <= -0.2004370391368866 then
                case when message_length_avg_diff <= 13.9499831199646 then
                   return 0.8179959100204499 # (800.0 out of 978.0)
                else  # if message_length_avg_diff > 13.9499831199646
                   return 0.8701622971285893 # (697.0 out of 801.0)
                end               else  # if refactor_mle_diff > -0.2004370391368866
                case when message_length_avg_diff <= -4.599786758422852 then
                   return 0.9141630901287554 # (852.0 out of 932.0)
                else  # if message_length_avg_diff > -4.599786758422852
                  case when message_length_avg_diff <= -3.3656085729599 then
                     return 0.853202846975089 # (959.0 out of 1124.0)
                  else  # if message_length_avg_diff > -3.3656085729599
                    case when refactor_mle_diff <= 0.003965042298659682 then
                      case when commit_hours_diff <= 2.5 then
                        case when refactor_mle_diff <= -0.002111451467499137 then
                          case when message_length_avg_diff <= 3.044920563697815 then
                            case when refactor_mle_diff <= -0.04726375825703144 then
                               return 0.882865440464666 # (912.0 out of 1033.0)
                            else  # if refactor_mle_diff > -0.04726375825703144
                               return 0.926208651399491 # (728.0 out of 786.0)
                            end                           else  # if message_length_avg_diff > 3.044920563697815
                            case when commit_hours_diff <= 1.5 then
                              case when message_length_avg_diff <= 16.425734519958496 then
                                 return 0.8982456140350877 # (1024.0 out of 1140.0)
                              else  # if message_length_avg_diff > 16.425734519958496
                                 return 0.8843469591226321 # (887.0 out of 1003.0)
                              end                             else  # if commit_hours_diff > 1.5
                              case when message_length_avg_diff <= 12.757786750793457 then
                                 return 0.8533501896333755 # (675.0 out of 791.0)
                              else  # if message_length_avg_diff > 12.757786750793457
                                 return 0.8866103739445115 # (735.0 out of 829.0)
                              end                             end                           end                         else  # if refactor_mle_diff > -0.002111451467499137
                          case when message_length_avg_diff <= 1.6433029770851135 then
                             return 0.8590250329380764 # (652.0 out of 759.0)
                          else  # if message_length_avg_diff > 1.6433029770851135
                             return 0.8224789915966386 # (783.0 out of 952.0)
                          end                         end                       else  # if commit_hours_diff > 2.5
                        case when refactor_mle_diff <= -2.9055852792225778e-05 then
                          case when message_length_avg_diff <= 3.967410683631897 then
                            case when message_length_avg_diff <= 0.699605256319046 then
                               return 0.9033175355450237 # (953.0 out of 1055.0)
                            else  # if message_length_avg_diff > 0.699605256319046
                               return 0.9186189889025894 # (745.0 out of 811.0)
                            end                           else  # if message_length_avg_diff > 3.967410683631897
                            case when commit_hours_diff <= 5.5 then
                              case when message_length_avg_diff <= 11.211847305297852 then
                                 return 0.9060022650056625 # (800.0 out of 883.0)
                              else  # if message_length_avg_diff > 11.211847305297852
                                case when message_length_avg_diff <= 27.943113327026367 then
                                   return 0.8830049261083743 # (717.0 out of 812.0)
                                else  # if message_length_avg_diff > 27.943113327026367
                                   return 0.8756345177664975 # (690.0 out of 788.0)
                                end                               end                             else  # if commit_hours_diff > 5.5
                               return 0.9136745607333843 # (1196.0 out of 1309.0)
                            end                           end                         else  # if refactor_mle_diff > -2.9055852792225778e-05
                          case when message_length_avg_diff <= 2.2445180416107178 then
                             return 0.8891625615763546 # (722.0 out of 812.0)
                          else  # if message_length_avg_diff > 2.2445180416107178
                             return 0.8800403225806451 # (873.0 out of 992.0)
                          end                         end                       end                     else  # if refactor_mle_diff > 0.003965042298659682
                      case when refactor_mle_diff <= 0.012777677737176418 then
                         return 0.9358047016274864 # (1035.0 out of 1106.0)
                      else  # if refactor_mle_diff > 0.012777677737176418
                        case when message_length_avg_diff <= 2.9119715690612793 then
                          case when refactor_mle_diff <= 0.03867664374411106 then
                             return 0.8686131386861314 # (833.0 out of 959.0)
                          else  # if refactor_mle_diff > 0.03867664374411106
                            case when message_length_avg_diff <= -0.05312229506671429 then
                               return 0.9020979020979021 # (774.0 out of 858.0)
                            else  # if message_length_avg_diff > -0.05312229506671429
                               return 0.8831942789034565 # (741.0 out of 839.0)
                            end                           end                         else  # if message_length_avg_diff > 2.9119715690612793
                          case when refactor_mle_diff <= 0.07019663602113724 then
                            case when message_length_avg_diff <= 5.9335997104644775 then
                               return 0.9160493827160494 # (742.0 out of 810.0)
                            else  # if message_length_avg_diff > 5.9335997104644775
                              case when commit_hours_diff <= 3.5 then
                                case when refactor_mle_diff <= 0.04310998134315014 then
                                   return 0.8885191347753744 # (1068.0 out of 1202.0)
                                else  # if refactor_mle_diff > 0.04310998134315014
                                   return 0.8610837438423645 # (874.0 out of 1015.0)
                                end                               else  # if commit_hours_diff > 3.5
                                 return 0.8925739005046863 # (1238.0 out of 1387.0)
                              end                             end                           else  # if refactor_mle_diff > 0.07019663602113724
                            case when refactor_mle_diff <= 0.08749091625213623 then
                               return 0.9228070175438596 # (1052.0 out of 1140.0)
                            else  # if refactor_mle_diff > 0.08749091625213623
                               return 0.890057361376673 # (931.0 out of 1046.0)
                            end                           end                         end                       end                     end                   end                 end               end             else  # if message_length_avg_diff > 146.4415283203125
               return 0.8529411764705882 # (957.0 out of 1122.0)
            end           else  # if refactor_mle_diff > 0.10582087934017181
            case when refactor_mle_diff <= 0.22165577113628387 then
              case when commit_hours_diff <= 1.5 then
                 return 0.8213399503722084 # (993.0 out of 1209.0)
              else  # if commit_hours_diff > 1.5
                case when refactor_mle_diff <= 0.1768786758184433 then
                  case when commit_hours_diff <= 4.5 then
                     return 0.8655072463768116 # (1493.0 out of 1725.0)
                  else  # if commit_hours_diff > 4.5
                     return 0.877906976744186 # (1057.0 out of 1204.0)
                  end                 else  # if refactor_mle_diff > 0.1768786758184433
                   return 0.909952606635071 # (960.0 out of 1055.0)
                end               end             else  # if refactor_mle_diff > 0.22165577113628387
              case when commit_hours_diff <= 4.5 then
                case when message_length_avg_diff <= 33.89849662780762 then
                   return 0.8239795918367347 # (646.0 out of 784.0)
                else  # if message_length_avg_diff > 33.89849662780762
                   return 0.8558758314855875 # (772.0 out of 902.0)
                end               else  # if commit_hours_diff > 4.5
                 return 0.8648373983739838 # (851.0 out of 984.0)
              end             end           end         end       end     end   end )