create or replace function RandomForest_7 (message_length_avg_diff int64, refactor_mle_diff int64, commit_hours_diff int64) as (
  case when refactor_mle_diff <= -0.14069108664989471 then
    case when refactor_mle_diff <= -0.21697423607110977 then
      case when refactor_mle_diff <= -0.37300409376621246 then
        case when commit_hours_diff <= 0.5 then
           return 0.7145299145299145 # (836.0 out of 1170.0)
        else  # if commit_hours_diff > 0.5
           return 0.7777777777777778 # (791.0 out of 1017.0)
        end       else  # if refactor_mle_diff > -0.37300409376621246
        case when message_length_avg_diff <= 13.98552942276001 then
          case when refactor_mle_diff <= -0.31827233731746674 then
             return 0.7917133258678611 # (707.0 out of 893.0)
          else  # if refactor_mle_diff > -0.31827233731746674
            case when message_length_avg_diff <= -0.05669197998940945 then
              case when commit_hours_diff <= -2.5 then
                 return 0.6756152125279642 # (604.0 out of 894.0)
              else  # if commit_hours_diff > -2.5
                case when message_length_avg_diff <= -20.95988941192627 then
                   return 0.7836700336700336 # (931.0 out of 1188.0)
                else  # if message_length_avg_diff > -20.95988941192627
                   return 0.8416184971098266 # (728.0 out of 865.0)
                end               end             else  # if message_length_avg_diff > -0.05669197998940945
               return 0.7111959287531806 # (559.0 out of 786.0)
            end           end         else  # if message_length_avg_diff > 13.98552942276001
           return 0.7998700454840806 # (1231.0 out of 1539.0)
        end       end     else  # if refactor_mle_diff > -0.21697423607110977
      case when message_length_avg_diff <= -13.67851209640503 then
        case when commit_hours_diff <= -0.5 then
           return 0.7174061433447099 # (1051.0 out of 1465.0)
        else  # if commit_hours_diff > -0.5
           return 0.8351648351648352 # (1292.0 out of 1547.0)
        end       else  # if message_length_avg_diff > -13.67851209640503
        case when refactor_mle_diff <= -0.14830607175827026 then
          case when commit_hours_diff <= -2.5 then
             return 0.7113594040968343 # (1146.0 out of 1611.0)
          else  # if commit_hours_diff > -2.5
            case when message_length_avg_diff <= 18.99100112915039 then
              case when refactor_mle_diff <= -0.16679733246564865 then
                 return 0.8592931937172775 # (1313.0 out of 1528.0)
              else  # if refactor_mle_diff > -0.16679733246564865
                 return 0.8940316686967114 # (734.0 out of 821.0)
              end             else  # if message_length_avg_diff > 18.99100112915039
               return 0.826625386996904 # (801.0 out of 969.0)
            end           end         else  # if refactor_mle_diff > -0.14830607175827026
           return 0.7664319248826291 # (653.0 out of 852.0)
        end       end     end   else  # if refactor_mle_diff > -0.14069108664989471
    case when commit_hours_diff <= -3.5 then
      case when commit_hours_diff <= -6.5 then
        case when refactor_mle_diff <= 0.000745538913179189 then
          case when commit_hours_diff <= -9.5 then
             return 0.50187617260788 # (535.0 out of 1066.0)
          else  # if commit_hours_diff > -9.5
            case when message_length_avg_diff <= -4.687122344970703 then
               return 0.5907172995780591 # (560.0 out of 948.0)
            else  # if message_length_avg_diff > -4.687122344970703
              case when message_length_avg_diff <= 9.337025165557861 then
                 return 0.6622807017543859 # (604.0 out of 912.0)
              else  # if message_length_avg_diff > 9.337025165557861
                 return 0.6308243727598566 # (528.0 out of 837.0)
              end             end           end         else  # if refactor_mle_diff > 0.000745538913179189
          case when commit_hours_diff <= -9.5 then
             return 0.5203969128996693 # (472.0 out of 907.0)
          else  # if commit_hours_diff > -9.5
            case when refactor_mle_diff <= 0.06819568574428558 then
               return 0.7339449541284404 # (640.0 out of 872.0)
            else  # if refactor_mle_diff > 0.06819568574428558
               return 0.6310611384399156 # (898.0 out of 1423.0)
            end           end         end       else  # if commit_hours_diff > -6.5
        case when refactor_mle_diff <= 0.21675175428390503 then
          case when commit_hours_diff <= -5.5 then
            case when refactor_mle_diff <= -0.050748564302921295 then
               return 0.6993788819875777 # (563.0 out of 805.0)
            else  # if refactor_mle_diff > -0.050748564302921295
              case when message_length_avg_diff <= -0.7205308377742767 then
                 return 0.7064846416382252 # (621.0 out of 879.0)
              else  # if message_length_avg_diff > -0.7205308377742767
                 return 0.740650406504065 # (911.0 out of 1230.0)
              end             end           else  # if commit_hours_diff > -5.5
            case when refactor_mle_diff <= 0.0010276483371853828 then
              case when message_length_avg_diff <= -4.298065900802612 then
                case when refactor_mle_diff <= -0.047922756522893906 then
                   return 0.7609523809523809 # (799.0 out of 1050.0)
                else  # if refactor_mle_diff > -0.047922756522893906
                   return 0.6777546777546778 # (652.0 out of 962.0)
                end               else  # if message_length_avg_diff > -4.298065900802612
                case when commit_hours_diff <= -4.5 then
                   return 0.7488021902806297 # (1094.0 out of 1461.0)
                else  # if commit_hours_diff > -4.5
                  case when message_length_avg_diff <= 6.094206809997559 then
                     return 0.8052325581395349 # (831.0 out of 1032.0)
                  else  # if message_length_avg_diff > 6.094206809997559
                     return 0.7431539187913125 # (787.0 out of 1059.0)
                  end                 end               end             else  # if refactor_mle_diff > 0.0010276483371853828
              case when refactor_mle_diff <= 0.05004242807626724 then
                 return 0.7972350230414746 # (1384.0 out of 1736.0)
              else  # if refactor_mle_diff > 0.05004242807626724
                case when refactor_mle_diff <= 0.113786481320858 then
                   return 0.7410387710314558 # (1013.0 out of 1367.0)
                else  # if refactor_mle_diff > 0.113786481320858
                   return 0.7741644083107497 # (857.0 out of 1107.0)
                end               end             end           end         else  # if refactor_mle_diff > 0.21675175428390503
           return 0.6942615239887112 # (738.0 out of 1063.0)
        end       end     else  # if commit_hours_diff > -3.5
      case when message_length_avg_diff <= -6.551029443740845 then
        case when message_length_avg_diff <= -98.25160217285156 then
          case when commit_hours_diff <= 1.5 then
            case when message_length_avg_diff <= -155.31937408447266 then
               return 0.8257575757575758 # (654.0 out of 792.0)
            else  # if message_length_avg_diff > -155.31937408447266
               return 0.8138364779874214 # (647.0 out of 795.0)
            end           else  # if commit_hours_diff > 1.5
             return 0.9085545722713865 # (1232.0 out of 1356.0)
          end         else  # if message_length_avg_diff > -98.25160217285156
          case when message_length_avg_diff <= -7.11922812461853 then
            case when refactor_mle_diff <= 0.13582481443881989 then
              case when message_length_avg_diff <= -16.174846649169922 then
                case when refactor_mle_diff <= 0.002245074021629989 then
                  case when refactor_mle_diff <= -8.24880407890305e-06 then
                    case when message_length_avg_diff <= -21.667397499084473 then
                      case when refactor_mle_diff <= -0.07517950236797333 then
                        case when refactor_mle_diff <= -0.10815753042697906 then
                           return 0.8454545454545455 # (744.0 out of 880.0)
                        else  # if refactor_mle_diff > -0.10815753042697906
                           return 0.8199626865671642 # (879.0 out of 1072.0)
                        end                       else  # if refactor_mle_diff > -0.07517950236797333
                        case when refactor_mle_diff <= -0.04395836777985096 then
                           return 0.8764510779436152 # (1057.0 out of 1206.0)
                        else  # if refactor_mle_diff > -0.04395836777985096
                          case when commit_hours_diff <= 0.5 then
                             return 0.8226779252110977 # (682.0 out of 829.0)
                          else  # if commit_hours_diff > 0.5
                             return 0.890818858560794 # (718.0 out of 806.0)
                          end                         end                       end                     else  # if message_length_avg_diff > -21.667397499084473
                       return 0.8158871566443949 # (1099.0 out of 1347.0)
                    end                   else  # if refactor_mle_diff > -8.24880407890305e-06
                     return 0.6743902439024391 # (553.0 out of 820.0)
                  end                 else  # if refactor_mle_diff > 0.002245074021629989
                  case when refactor_mle_diff <= 0.05552421510219574 then
                    case when refactor_mle_diff <= 0.02647128701210022 then
                       return 0.8894927536231884 # (982.0 out of 1104.0)
                    else  # if refactor_mle_diff > 0.02647128701210022
                       return 0.8749016522423289 # (1112.0 out of 1271.0)
                    end                   else  # if refactor_mle_diff > 0.05552421510219574
                    case when refactor_mle_diff <= 0.0810004398226738 then
                       return 0.8089519650655022 # (741.0 out of 916.0)
                    else  # if refactor_mle_diff > 0.0810004398226738
                       return 0.8380041011619959 # (1226.0 out of 1463.0)
                    end                   end                 end               else  # if message_length_avg_diff > -16.174846649169922
                case when commit_hours_diff <= -0.5 then
                  case when message_length_avg_diff <= -10.757646083831787 then
                     return 0.8314457028647568 # (1248.0 out of 1501.0)
                  else  # if message_length_avg_diff > -10.757646083831787
                     return 0.8115284974093264 # (1253.0 out of 1544.0)
                  end                 else  # if commit_hours_diff > -0.5
                  case when refactor_mle_diff <= 7.249789632624015e-05 then
                    case when commit_hours_diff <= 3.5 then
                      case when message_length_avg_diff <= -12.010926246643066 then
                         return 0.8923766816143498 # (796.0 out of 892.0)
                      else  # if message_length_avg_diff > -12.010926246643066
                         return 0.8240205523442518 # (1283.0 out of 1557.0)
                      end                     else  # if commit_hours_diff > 3.5
                       return 0.881316098707403 # (750.0 out of 851.0)
                    end                   else  # if refactor_mle_diff > 7.249789632624015e-05
                    case when commit_hours_diff <= 1.5 then
                       return 0.875968992248062 # (904.0 out of 1032.0)
                    else  # if commit_hours_diff > 1.5
                       return 0.9044117647058824 # (1353.0 out of 1496.0)
                    end                   end                 end               end             else  # if refactor_mle_diff > 0.13582481443881989
              case when refactor_mle_diff <= 0.2199278399348259 then
                case when refactor_mle_diff <= 0.1684781014919281 then
                   return 0.7787709497206704 # (697.0 out of 895.0)
                else  # if refactor_mle_diff > 0.1684781014919281
                   return 0.8121353558926487 # (696.0 out of 857.0)
                end               else  # if refactor_mle_diff > 0.2199278399348259
                 return 0.7739575713240673 # (1058.0 out of 1367.0)
              end             end           else  # if message_length_avg_diff > -7.11922812461853
             return 0.8028455284552846 # (790.0 out of 984.0)
          end         end       else  # if message_length_avg_diff > -6.551029443740845
        case when commit_hours_diff <= -0.5 then
          case when refactor_mle_diff <= 0.13778048753738403 then
            case when message_length_avg_diff <= 4.433511972427368 then
              case when commit_hours_diff <= -2.5 then
                case when message_length_avg_diff <= -2.17472243309021 then
                   return 0.8040712468193384 # (632.0 out of 786.0)
                else  # if message_length_avg_diff > -2.17472243309021
                  case when message_length_avg_diff <= 0.7307197749614716 then
                     return 0.8280657395701644 # (655.0 out of 791.0)
                  else  # if message_length_avg_diff > 0.7307197749614716
                     return 0.824967824967825 # (641.0 out of 777.0)
                  end                 end               else  # if commit_hours_diff > -2.5
                case when message_length_avg_diff <= -2.7742732763290405 then
                  case when refactor_mle_diff <= -0.007378644775599241 then
                     return 0.8740970072239422 # (847.0 out of 969.0)
                  else  # if refactor_mle_diff > -0.007378644775599241
                     return 0.8107036669970268 # (818.0 out of 1009.0)
                  end                 else  # if message_length_avg_diff > -2.7742732763290405
                  case when commit_hours_diff <= -1.5 then
                    case when refactor_mle_diff <= -0.0012730483431369066 then
                       return 0.8815513626834381 # (841.0 out of 954.0)
                    else  # if refactor_mle_diff > -0.0012730483431369066
                       return 0.8237179487179487 # (1028.0 out of 1248.0)
                    end                   else  # if commit_hours_diff > -1.5
                    case when refactor_mle_diff <= -8.457116200588644e-05 then
                       return 0.8945736434108527 # (1154.0 out of 1290.0)
                    else  # if refactor_mle_diff > -8.457116200588644e-05
                       return 0.8533668974197609 # (1356.0 out of 1589.0)
                    end                   end                 end               end             else  # if message_length_avg_diff > 4.433511972427368
              case when message_length_avg_diff <= 40.84861183166504 then
                case when message_length_avg_diff <= 29.516087532043457 then
                  case when commit_hours_diff <= -1.5 then
                    case when message_length_avg_diff <= 7.2252442836761475 then
                       return 0.7933398628795298 # (810.0 out of 1021.0)
                    else  # if message_length_avg_diff > 7.2252442836761475
                      case when refactor_mle_diff <= 0.04222061112523079 then
                        case when message_length_avg_diff <= 15.433652400970459 then
                           return 0.8520667150108775 # (1175.0 out of 1379.0)
                        else  # if message_length_avg_diff > 15.433652400970459
                           return 0.8086763070077865 # (727.0 out of 899.0)
                        end                       else  # if refactor_mle_diff > 0.04222061112523079
                         return 0.8085889570552147 # (659.0 out of 815.0)
                      end                     end                   else  # if commit_hours_diff > -1.5
                    case when message_length_avg_diff <= 7.787142753601074 then
                       return 0.8679706601466992 # (710.0 out of 818.0)
                    else  # if message_length_avg_diff > 7.787142753601074
                      case when message_length_avg_diff <= 15.122783660888672 then
                         return 0.8305084745762712 # (931.0 out of 1121.0)
                      else  # if message_length_avg_diff > 15.122783660888672
                         return 0.8472361809045226 # (843.0 out of 995.0)
                      end                     end                   end                 else  # if message_length_avg_diff > 29.516087532043457
                   return 0.8733766233766234 # (807.0 out of 924.0)
                end               else  # if message_length_avg_diff > 40.84861183166504
                case when refactor_mle_diff <= -0.019086177460849285 then
                   return 0.8409542743538767 # (846.0 out of 1006.0)
                else  # if refactor_mle_diff > -0.019086177460849285
                  case when message_length_avg_diff <= 80.96646499633789 then
                     return 0.8011173184357542 # (717.0 out of 895.0)
                  else  # if message_length_avg_diff > 80.96646499633789
                     return 0.8165938864628821 # (748.0 out of 916.0)
                  end                 end               end             end           else  # if refactor_mle_diff > 0.13778048753738403
            case when refactor_mle_diff <= 0.2740399092435837 then
              case when message_length_avg_diff <= 21.87178134918213 then
                 return 0.760268231349539 # (907.0 out of 1193.0)
              else  # if message_length_avg_diff > 21.87178134918213
                 return 0.8092835519677094 # (802.0 out of 991.0)
              end             else  # if refactor_mle_diff > 0.2740399092435837
               return 0.7063829787234043 # (664.0 out of 940.0)
            end           end         else  # if commit_hours_diff > -0.5
          case when refactor_mle_diff <= 0.10586041584610939 then
            case when refactor_mle_diff <= -2.9055852792225778e-05 then
              case when commit_hours_diff <= 4.5 then
                case when message_length_avg_diff <= 11.696815967559814 then
                  case when refactor_mle_diff <= -0.03362375870347023 then
                    case when message_length_avg_diff <= -2.098541259765625 then
                       return 0.8733905579399142 # (1221.0 out of 1398.0)
                    else  # if message_length_avg_diff > -2.098541259765625
                      case when refactor_mle_diff <= -0.10105155035853386 then
                         return 0.8832035595105673 # (794.0 out of 899.0)
                      else  # if refactor_mle_diff > -0.10105155035853386
                        case when refactor_mle_diff <= -0.07497948780655861 then
                           return 0.9293544457978076 # (763.0 out of 821.0)
                        else  # if refactor_mle_diff > -0.07497948780655861
                          case when refactor_mle_diff <= -0.050510579720139503 then
                             return 0.8862847222222222 # (1021.0 out of 1152.0)
                          else  # if refactor_mle_diff > -0.050510579720139503
                             return 0.904296875 # (926.0 out of 1024.0)
                          end                         end                       end                     end                   else  # if refactor_mle_diff > -0.03362375870347023
                    case when message_length_avg_diff <= 0.7292799055576324 then
                       return 0.9362416107382551 # (1395.0 out of 1490.0)
                    else  # if message_length_avg_diff > 0.7292799055576324
                       return 0.9148471615720524 # (1676.0 out of 1832.0)
                    end                   end                 else  # if message_length_avg_diff > 11.696815967559814
                  case when message_length_avg_diff <= 18.780268669128418 then
                     return 0.8544600938967136 # (1092.0 out of 1278.0)
                  else  # if message_length_avg_diff > 18.780268669128418
                    case when commit_hours_diff <= 0.5 then
                       return 0.8742802303262955 # (911.0 out of 1042.0)
                    else  # if commit_hours_diff > 0.5
                      case when message_length_avg_diff <= 54.76525115966797 then
                         return 0.9107391910739191 # (1306.0 out of 1434.0)
                      else  # if message_length_avg_diff > 54.76525115966797
                         return 0.8613053613053613 # (739.0 out of 858.0)
                      end                     end                   end                 end               else  # if commit_hours_diff > 4.5
                case when message_length_avg_diff <= 3.1166971921920776 then
                   return 0.9087912087912088 # (827.0 out of 910.0)
                else  # if message_length_avg_diff > 3.1166971921920776
                  case when message_length_avg_diff <= 15.023611545562744 then
                     return 0.8443037974683544 # (667.0 out of 790.0)
                  else  # if message_length_avg_diff > 15.023611545562744
                     return 0.898876404494382 # (880.0 out of 979.0)
                  end                 end               end             else  # if refactor_mle_diff > -2.9055852792225778e-05
              case when refactor_mle_diff <= 0.0026457334170117974 then
                case when commit_hours_diff <= 2.5 then
                  case when message_length_avg_diff <= 0.9171191155910492 then
                     return 0.8591885441527446 # (1080.0 out of 1257.0)
                  else  # if message_length_avg_diff > 0.9171191155910492
                     return 0.7973400886637112 # (1259.0 out of 1579.0)
                  end                 else  # if commit_hours_diff > 2.5
                  case when commit_hours_diff <= 4.5 then
                     return 0.869615832363213 # (747.0 out of 859.0)
                  else  # if commit_hours_diff > 4.5
                     return 0.8746438746438746 # (921.0 out of 1053.0)
                  end                 end               else  # if refactor_mle_diff > 0.0026457334170117974
                case when message_length_avg_diff <= -4.10188889503479 then
                   return 0.9185938945420906 # (993.0 out of 1081.0)
                else  # if message_length_avg_diff > -4.10188889503479
                  case when refactor_mle_diff <= 0.019874087534844875 then
                    case when commit_hours_diff <= 1.5 then
                       return 0.906100068540096 # (1322.0 out of 1459.0)
                    else  # if commit_hours_diff > 1.5
                       return 0.9235145385587863 # (1461.0 out of 1582.0)
                    end                   else  # if refactor_mle_diff > 0.019874087534844875
                    case when message_length_avg_diff <= -2.222900390625 then
                       return 0.8494208494208494 # (660.0 out of 777.0)
                    else  # if message_length_avg_diff > -2.222900390625
                      case when refactor_mle_diff <= 0.08622484654188156 then
                        case when message_length_avg_diff <= 1.250774323940277 then
                           return 0.9106296547054841 # (1345.0 out of 1477.0)
                        else  # if message_length_avg_diff > 1.250774323940277
                          case when commit_hours_diff <= 5.5 then
                            case when message_length_avg_diff <= 4.470623731613159 then
                               return 0.8913857677902621 # (952.0 out of 1068.0)
                            else  # if message_length_avg_diff > 4.470623731613159
                              case when message_length_avg_diff <= 8.724438667297363 then
                                 return 0.8445065176908753 # (907.0 out of 1074.0)
                              else  # if message_length_avg_diff > 8.724438667297363
                                case when message_length_avg_diff <= 12.695229530334473 then
                                   return 0.8962962962962963 # (726.0 out of 810.0)
                                else  # if message_length_avg_diff > 12.695229530334473
                                  case when message_length_avg_diff <= 42.2478141784668 then
                                    case when refactor_mle_diff <= 0.047610361129045486 then
                                       return 0.861904761904762 # (724.0 out of 840.0)
                                    else  # if refactor_mle_diff > 0.047610361129045486
                                       return 0.8821811100292113 # (906.0 out of 1027.0)
                                    end                                   else  # if message_length_avg_diff > 42.2478141784668
                                     return 0.8598999285203717 # (1203.0 out of 1399.0)
                                  end                                 end                               end                             end                           else  # if commit_hours_diff > 5.5
                             return 0.9155290102389079 # (1073.0 out of 1172.0)
                          end                         end                       else  # if refactor_mle_diff > 0.08622484654188156
                        case when commit_hours_diff <= 2.5 then
                           return 0.9112903225806451 # (791.0 out of 868.0)
                        else  # if commit_hours_diff > 2.5
                           return 0.9054209919261822 # (785.0 out of 867.0)
                        end                       end                     end                   end                 end               end             end           else  # if refactor_mle_diff > 0.10586041584610939
            case when commit_hours_diff <= 3.5 then
              case when commit_hours_diff <= 2.5 then
                case when commit_hours_diff <= 1.5 then
                  case when refactor_mle_diff <= 0.2683427333831787 then
                    case when refactor_mle_diff <= 0.16610164940357208 then
                      case when commit_hours_diff <= 0.5 then
                         return 0.8287671232876712 # (726.0 out of 876.0)
                      else  # if commit_hours_diff > 0.5
                         return 0.8168674698795181 # (678.0 out of 830.0)
                      end                     else  # if refactor_mle_diff > 0.16610164940357208
                       return 0.8551068883610451 # (1080.0 out of 1263.0)
                    end                   else  # if refactor_mle_diff > 0.2683427333831787
                     return 0.8060075093867334 # (644.0 out of 799.0)
                  end                 else  # if commit_hours_diff > 1.5
                   return 0.8357689631176062 # (1201.0 out of 1437.0)
                end               else  # if commit_hours_diff > 2.5
                 return 0.8562770562770563 # (989.0 out of 1155.0)
              end             else  # if commit_hours_diff > 3.5
              case when commit_hours_diff <= 5.5 then
                 return 0.8948670377241806 # (1447.0 out of 1617.0)
              else  # if commit_hours_diff > 5.5
                case when commit_hours_diff <= 7.5 then
                   return 0.8811563169164882 # (823.0 out of 934.0)
                else  # if commit_hours_diff > 7.5
                   return 0.8755760368663594 # (950.0 out of 1085.0)
                end               end             end           end         end       end     end   end )