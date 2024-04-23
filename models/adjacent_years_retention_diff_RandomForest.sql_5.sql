create or replace function RandomForest_5 (message_length_avg_diff int64, refactor_mle_diff int64, commit_hours_diff int64) as (
  case when message_length_avg_diff <= -9.404975891113281 then
    case when refactor_mle_diff <= 0.16639339178800583 then
      case when commit_hours_diff <= -1.5 then
        case when commit_hours_diff <= -6.5 then
          case when refactor_mle_diff <= -0.11229539290070534 then
             return 0.6479902557856273 # (532.0 out of 821.0)
          else  # if refactor_mle_diff > -0.11229539290070534
             return 0.6078028747433265 # (888.0 out of 1461.0)
          end         else  # if commit_hours_diff > -6.5
          case when commit_hours_diff <= -3.5 then
            case when commit_hours_diff <= -5.5 then
               return 0.7001034126163392 # (677.0 out of 967.0)
            else  # if commit_hours_diff > -5.5
              case when refactor_mle_diff <= 0.0017569665797054768 then
                case when refactor_mle_diff <= -0.07693837210536003 then
                   return 0.7264890282131662 # (927.0 out of 1276.0)
                else  # if refactor_mle_diff > -0.07693837210536003
                   return 0.7016042780748664 # (656.0 out of 935.0)
                end               else  # if refactor_mle_diff > 0.0017569665797054768
                 return 0.7546239210850801 # (612.0 out of 811.0)
              end             end           else  # if commit_hours_diff > -3.5
            case when commit_hours_diff <= -2.5 then
              case when refactor_mle_diff <= -0.002108060638420284 then
                 return 0.7964788732394367 # (1131.0 out of 1420.0)
              else  # if refactor_mle_diff > -0.002108060638420284
                 return 0.7255125284738041 # (637.0 out of 878.0)
              end             else  # if commit_hours_diff > -2.5
              case when message_length_avg_diff <= -41.93575096130371 then
                 return 0.7911330049261084 # (803.0 out of 1015.0)
              else  # if message_length_avg_diff > -41.93575096130371
                case when refactor_mle_diff <= -0.049171335995197296 then
                   return 0.7394766780432309 # (650.0 out of 879.0)
                else  # if refactor_mle_diff > -0.049171335995197296
                   return 0.7959542656112577 # (905.0 out of 1137.0)
                end               end             end           end         end       else  # if commit_hours_diff > -1.5
        case when commit_hours_diff <= 1.5 then
          case when refactor_mle_diff <= -0.2122279778122902 then
             return 0.758563074352548 # (908.0 out of 1197.0)
          else  # if refactor_mle_diff > -0.2122279778122902
            case when message_length_avg_diff <= -21.760682106018066 then
              case when message_length_avg_diff <= -66.7976188659668 then
                case when message_length_avg_diff <= -121.99909591674805 then
                   return 0.8414634146341463 # (690.0 out of 820.0)
                else  # if message_length_avg_diff > -121.99909591674805
                   return 0.8264705882352941 # (843.0 out of 1020.0)
                end               else  # if message_length_avg_diff > -66.7976188659668
                case when message_length_avg_diff <= -47.989051818847656 then
                   return 0.89281210592686 # (708.0 out of 793.0)
                else  # if message_length_avg_diff > -47.989051818847656
                  case when message_length_avg_diff <= -32.507429122924805 then
                     return 0.8273322422258592 # (1011.0 out of 1222.0)
                  else  # if message_length_avg_diff > -32.507429122924805
                     return 0.8702084734364492 # (1294.0 out of 1487.0)
                  end                 end               end             else  # if message_length_avg_diff > -21.760682106018066
              case when refactor_mle_diff <= 7.814931450411677e-05 then
                case when commit_hours_diff <= -0.5 then
                   return 0.7982646420824295 # (736.0 out of 922.0)
                else  # if commit_hours_diff > -0.5
                  case when commit_hours_diff <= 0.5 then
                     return 0.8208791208791208 # (747.0 out of 910.0)
                  else  # if commit_hours_diff > 0.5
                     return 0.809801633605601 # (694.0 out of 857.0)
                  end                 end               else  # if refactor_mle_diff > 7.814931450411677e-05
                case when refactor_mle_diff <= 0.05562656931579113 then
                   return 0.8578371810449574 # (706.0 out of 823.0)
                else  # if refactor_mle_diff > 0.05562656931579113
                   return 0.8278061224489796 # (649.0 out of 784.0)
                end               end             end           end         else  # if commit_hours_diff > 1.5
          case when commit_hours_diff <= 8.5 then
            case when commit_hours_diff <= 5.5 then
              case when message_length_avg_diff <= -21.960853576660156 then
                case when message_length_avg_diff <= -29.346586227416992 then
                  case when message_length_avg_diff <= -46.425363540649414 then
                    case when commit_hours_diff <= 2.5 then
                       return 0.8289054197662061 # (780.0 out of 941.0)
                    else  # if commit_hours_diff > 2.5
                       return 0.8603651987110634 # (1602.0 out of 1862.0)
                    end                   else  # if message_length_avg_diff > -46.425363540649414
                     return 0.8772845953002611 # (1008.0 out of 1149.0)
                  end                 else  # if message_length_avg_diff > -29.346586227416992
                   return 0.8381430363864492 # (668.0 out of 797.0)
                end               else  # if message_length_avg_diff > -21.960853576660156
                case when refactor_mle_diff <= -0.07943262904882431 then
                   return 0.8307493540051679 # (643.0 out of 774.0)
                else  # if refactor_mle_diff > -0.07943262904882431
                  case when message_length_avg_diff <= -14.310115814208984 then
                     return 0.9233644859813084 # (988.0 out of 1070.0)
                  else  # if message_length_avg_diff > -14.310115814208984
                     return 0.8670668953687821 # (1011.0 out of 1166.0)
                  end                 end               end             else  # if commit_hours_diff > 5.5
              case when commit_hours_diff <= 6.5 then
                 return 0.8847087378640777 # (729.0 out of 824.0)
              else  # if commit_hours_diff > 6.5
                 return 0.8851351351351351 # (917.0 out of 1036.0)
              end             end           else  # if commit_hours_diff > 8.5
             return 0.9188921859545005 # (929.0 out of 1011.0)
          end         end       end     else  # if refactor_mle_diff > 0.16639339178800583
      case when refactor_mle_diff <= 0.2950725257396698 then
        case when commit_hours_diff <= -0.5 then
           return 0.716824644549763 # (605.0 out of 844.0)
        else  # if commit_hours_diff > -0.5
           return 0.8120748299319728 # (955.0 out of 1176.0)
        end       else  # if refactor_mle_diff > 0.2950725257396698
         return 0.7176901924839597 # (783.0 out of 1091.0)
      end     end   else  # if message_length_avg_diff > -9.404975891113281
    case when commit_hours_diff <= -2.5 then
      case when refactor_mle_diff <= 0.1903771460056305 then
        case when message_length_avg_diff <= 77.98416519165039 then
          case when commit_hours_diff <= -6.5 then
            case when commit_hours_diff <= -9.5 then
               return 0.5379357484620643 # (787.0 out of 1463.0)
            else  # if commit_hours_diff > -9.5
              case when commit_hours_diff <= -7.5 then
                case when message_length_avg_diff <= 7.178684711456299 then
                   return 0.604982206405694 # (680.0 out of 1124.0)
                else  # if message_length_avg_diff > 7.178684711456299
                   return 0.6854636591478697 # (547.0 out of 798.0)
                end               else  # if commit_hours_diff > -7.5
                case when message_length_avg_diff <= 4.681591987609863 then
                   return 0.6750629722921915 # (536.0 out of 794.0)
                else  # if message_length_avg_diff > 4.681591987609863
                   return 0.6894409937888198 # (555.0 out of 805.0)
                end               end             end           else  # if commit_hours_diff > -6.5
            case when commit_hours_diff <= -4.5 then
              case when refactor_mle_diff <= -0.10196087881922722 then
                 return 0.6866537717601547 # (710.0 out of 1034.0)
              else  # if refactor_mle_diff > -0.10196087881922722
                case when message_length_avg_diff <= 0.49849170446395874 then
                   return 0.7134104833219878 # (1048.0 out of 1469.0)
                else  # if message_length_avg_diff > 0.49849170446395874
                  case when commit_hours_diff <= -5.5 then
                     return 0.7477876106194691 # (845.0 out of 1130.0)
                  else  # if commit_hours_diff > -5.5
                    case when refactor_mle_diff <= 0.0025067151291295886 then
                       return 0.7441588785046729 # (637.0 out of 856.0)
                    else  # if refactor_mle_diff > 0.0025067151291295886
                       return 0.7598522167487685 # (617.0 out of 812.0)
                    end                   end                 end               end             else  # if commit_hours_diff > -4.5
              case when commit_hours_diff <= -3.5 then
                case when message_length_avg_diff <= 13.00275468826294 then
                  case when message_length_avg_diff <= 3.995331645011902 then
                    case when message_length_avg_diff <= -1.4309009313583374 then
                       return 0.7560521415270018 # (812.0 out of 1074.0)
                    else  # if message_length_avg_diff > -1.4309009313583374
                       return 0.7874632713026445 # (804.0 out of 1021.0)
                    end                   else  # if message_length_avg_diff > 3.995331645011902
                     return 0.7508055853920516 # (699.0 out of 931.0)
                  end                 else  # if message_length_avg_diff > 13.00275468826294
                   return 0.7853363567649282 # (1039.0 out of 1323.0)
                end               else  # if commit_hours_diff > -3.5
                case when message_length_avg_diff <= -2.4267594814300537 then
                   return 0.7681962025316456 # (971.0 out of 1264.0)
                else  # if message_length_avg_diff > -2.4267594814300537
                  case when message_length_avg_diff <= 1.1164090633392334 then
                     return 0.8211856171039844 # (845.0 out of 1029.0)
                  else  # if message_length_avg_diff > 1.1164090633392334
                    case when message_length_avg_diff <= 9.654599666595459 then
                      case when message_length_avg_diff <= 4.529350996017456 then
                         return 0.7938271604938272 # (643.0 out of 810.0)
                      else  # if message_length_avg_diff > 4.529350996017456
                         return 0.7791878172588832 # (614.0 out of 788.0)
                      end                     else  # if message_length_avg_diff > 9.654599666595459
                      case when refactor_mle_diff <= 0.013762174639850855 then
                         return 0.7840189873417721 # (991.0 out of 1264.0)
                      else  # if refactor_mle_diff > 0.013762174639850855
                         return 0.8275449101796407 # (691.0 out of 835.0)
                      end                     end                   end                 end               end             end           end         else  # if message_length_avg_diff > 77.98416519165039
          case when commit_hours_diff <= -4.5 then
             return 0.6444644464446445 # (716.0 out of 1111.0)
          else  # if commit_hours_diff > -4.5
             return 0.7357142857142858 # (721.0 out of 980.0)
          end         end       else  # if refactor_mle_diff > 0.1903771460056305
        case when refactor_mle_diff <= 0.3055603802204132 then
           return 0.6710730948678072 # (863.0 out of 1286.0)
        else  # if refactor_mle_diff > 0.3055603802204132
           return 0.6365795724465558 # (536.0 out of 842.0)
        end       end     else  # if commit_hours_diff > -2.5
      case when refactor_mle_diff <= 0.1284506916999817 then
        case when refactor_mle_diff <= -0.16379056125879288 then
          case when message_length_avg_diff <= 52.595062255859375 then
            case when message_length_avg_diff <= 6.6155335903167725 then
              case when commit_hours_diff <= 0.5 then
                 return 0.7582781456953642 # (687.0 out of 906.0)
              else  # if commit_hours_diff > 0.5
                 return 0.8428465530022239 # (1137.0 out of 1349.0)
              end             else  # if message_length_avg_diff > 6.6155335903167725
              case when commit_hours_diff <= 1.5 then
                 return 0.7894179894179895 # (746.0 out of 945.0)
              else  # if commit_hours_diff > 1.5
                 return 0.8759604829857299 # (798.0 out of 911.0)
              end             end           else  # if message_length_avg_diff > 52.595062255859375
             return 0.8623518687329079 # (946.0 out of 1097.0)
          end         else  # if refactor_mle_diff > -0.16379056125879288
          case when message_length_avg_diff <= -6.875172853469849 then
            case when message_length_avg_diff <= -8.570926189422607 then
               return 0.8940397350993378 # (810.0 out of 906.0)
            else  # if message_length_avg_diff > -8.570926189422607
              case when commit_hours_diff <= 0.5 then
                 return 0.7954779033915724 # (774.0 out of 973.0)
              else  # if commit_hours_diff > 0.5
                 return 0.8620142743854085 # (1087.0 out of 1261.0)
              end             end           else  # if message_length_avg_diff > -6.875172853469849
            case when commit_hours_diff <= -0.5 then
              case when refactor_mle_diff <= -0.09375419095158577 then
                case when refactor_mle_diff <= -0.12341751530766487 then
                   return 0.8628930817610063 # (686.0 out of 795.0)
                else  # if refactor_mle_diff > -0.12341751530766487
                   return 0.7887323943661971 # (728.0 out of 923.0)
                end               else  # if refactor_mle_diff > -0.09375419095158577
                case when commit_hours_diff <= -1.5 then
                  case when message_length_avg_diff <= 0.5558312237262726 then
                     return 0.8267629094947252 # (1489.0 out of 1801.0)
                  else  # if message_length_avg_diff > 0.5558312237262726
                    case when message_length_avg_diff <= 3.7700014114379883 then
                       return 0.887627695800227 # (782.0 out of 881.0)
                    else  # if message_length_avg_diff > 3.7700014114379883
                      case when refactor_mle_diff <= 0.02692248485982418 then
                        case when refactor_mle_diff <= -0.0029961291002109647 then
                           return 0.8363774733637748 # (1099.0 out of 1314.0)
                        else  # if refactor_mle_diff > -0.0029961291002109647
                           return 0.7957658779576587 # (639.0 out of 803.0)
                        end                       else  # if refactor_mle_diff > 0.02692248485982418
                         return 0.8740399385560675 # (1138.0 out of 1302.0)
                      end                     end                   end                 else  # if commit_hours_diff > -1.5
                  case when message_length_avg_diff <= 21.752408027648926 then
                    case when message_length_avg_diff <= -1.8794670701026917 then
                       return 0.8522388059701492 # (1142.0 out of 1340.0)
                    else  # if message_length_avg_diff > -1.8794670701026917
                      case when refactor_mle_diff <= 6.389918416971341e-05 then
                        case when refactor_mle_diff <= -0.034617938101291656 then
                           return 0.8796116504854369 # (906.0 out of 1030.0)
                        else  # if refactor_mle_diff > -0.034617938101291656
                           return 0.8460508701472557 # (1264.0 out of 1494.0)
                        end                       else  # if refactor_mle_diff > 6.389918416971341e-05
                        case when message_length_avg_diff <= 5.661741256713867 then
                           return 0.9042357274401474 # (982.0 out of 1086.0)
                        else  # if message_length_avg_diff > 5.661741256713867
                           return 0.8870967741935484 # (880.0 out of 992.0)
                        end                       end                     end                   else  # if message_length_avg_diff > 21.752408027648926
                    case when refactor_mle_diff <= 0.021598397754132748 then
                       return 0.8235942668136714 # (747.0 out of 907.0)
                    else  # if refactor_mle_diff > 0.021598397754132748
                       return 0.8412903225806452 # (652.0 out of 775.0)
                    end                   end                 end               end             else  # if commit_hours_diff > -0.5
              case when refactor_mle_diff <= 0.0042309623677283525 then
                case when commit_hours_diff <= 7.5 then
                  case when commit_hours_diff <= 2.5 then
                    case when message_length_avg_diff <= 1.5897737741470337 then
                      case when refactor_mle_diff <= -2.19271478272276e-05 then
                        case when commit_hours_diff <= 1.5 then
                          case when refactor_mle_diff <= -0.05379600450396538 then
                             return 0.8878923766816144 # (1188.0 out of 1338.0)
                          else  # if refactor_mle_diff > -0.05379600450396538
                             return 0.916354556803995 # (1468.0 out of 1602.0)
                          end                         else  # if commit_hours_diff > 1.5
                           return 0.884453781512605 # (842.0 out of 952.0)
                        end                       else  # if refactor_mle_diff > -2.19271478272276e-05
                         return 0.8563685636856369 # (1264.0 out of 1476.0)
                      end                     else  # if message_length_avg_diff > 1.5897737741470337
                      case when message_length_avg_diff <= 3.671823501586914 then
                         return 0.8505392912172574 # (1104.0 out of 1298.0)
                      else  # if message_length_avg_diff > 3.671823501586914
                        case when message_length_avg_diff <= 5.602568864822388 then
                           return 0.9065217391304348 # (834.0 out of 920.0)
                        else  # if message_length_avg_diff > 5.602568864822388
                          case when message_length_avg_diff <= 67.92182922363281 then
                            case when message_length_avg_diff <= 13.064076900482178 then
                              case when message_length_avg_diff <= 9.643880367279053 then
                                 return 0.8666180758017493 # (1189.0 out of 1372.0)
                              else  # if message_length_avg_diff > 9.643880367279053
                                 return 0.8901515151515151 # (705.0 out of 792.0)
                              end                             else  # if message_length_avg_diff > 13.064076900482178
                              case when commit_hours_diff <= 0.5 then
                                 return 0.8543307086614174 # (1085.0 out of 1270.0)
                              else  # if commit_hours_diff > 0.5
                                case when refactor_mle_diff <= -0.03303038887679577 then
                                   return 0.880708294501398 # (945.0 out of 1073.0)
                                else  # if refactor_mle_diff > -0.03303038887679577
                                   return 0.82953181272509 # (691.0 out of 833.0)
                                end                               end                             end                           else  # if message_length_avg_diff > 67.92182922363281
                             return 0.8924302788844621 # (896.0 out of 1004.0)
                          end                         end                       end                     end                   else  # if commit_hours_diff > 2.5
                    case when message_length_avg_diff <= 55.575971603393555 then
                      case when message_length_avg_diff <= 19.405339241027832 then
                        case when commit_hours_diff <= 5.5 then
                          case when commit_hours_diff <= 4.5 then
                            case when refactor_mle_diff <= -0.002039827173575759 then
                              case when message_length_avg_diff <= 5.474118709564209 then
                                 return 0.8995433789954338 # (1379.0 out of 1533.0)
                              else  # if message_length_avg_diff > 5.474118709564209
                                 return 0.872960372960373 # (749.0 out of 858.0)
                              end                             else  # if refactor_mle_diff > -0.002039827173575759
                               return 0.8426527958387516 # (648.0 out of 769.0)
                            end                           else  # if commit_hours_diff > 4.5
                             return 0.8993212669683258 # (795.0 out of 884.0)
                          end                         else  # if commit_hours_diff > 5.5
                           return 0.8690355329949239 # (856.0 out of 985.0)
                        end                       else  # if message_length_avg_diff > 19.405339241027832
                         return 0.9167437557816837 # (991.0 out of 1081.0)
                      end                     else  # if message_length_avg_diff > 55.575971603393555
                       return 0.8582183186951067 # (684.0 out of 797.0)
                    end                   end                 else  # if commit_hours_diff > 7.5
                   return 0.9055319148936171 # (1064.0 out of 1175.0)
                end               else  # if refactor_mle_diff > 0.0042309623677283525
                case when message_length_avg_diff <= -4.58364200592041 then
                   return 0.91600790513834 # (927.0 out of 1012.0)
                else  # if message_length_avg_diff > -4.58364200592041
                  case when commit_hours_diff <= 8.5 then
                    case when message_length_avg_diff <= -2.8018981218338013 then
                       return 0.8532778355879292 # (820.0 out of 961.0)
                    else  # if message_length_avg_diff > -2.8018981218338013
                      case when refactor_mle_diff <= 0.01565495692193508 then
                        case when refactor_mle_diff <= 0.010283348616212606 then
                           return 0.90020366598778 # (884.0 out of 982.0)
                        else  # if refactor_mle_diff > 0.010283348616212606
                           return 0.9149377593360996 # (882.0 out of 964.0)
                        end                       else  # if refactor_mle_diff > 0.01565495692193508
                        case when refactor_mle_diff <= 0.08152759075164795 then
                          case when refactor_mle_diff <= 0.07402541860938072 then
                            case when commit_hours_diff <= 1.5 then
                              case when commit_hours_diff <= 0.5 then
                                case when refactor_mle_diff <= 0.044617628678679466 then
                                   return 0.9066293183940243 # (971.0 out of 1071.0)
                                else  # if refactor_mle_diff > 0.044617628678679466
                                   return 0.8736263736263736 # (795.0 out of 910.0)
                                end                               else  # if commit_hours_diff > 0.5
                                case when refactor_mle_diff <= 0.04051057994365692 then
                                   return 0.8857142857142857 # (713.0 out of 805.0)
                                else  # if refactor_mle_diff > 0.04051057994365692
                                   return 0.9051428571428571 # (792.0 out of 875.0)
                                end                               end                             else  # if commit_hours_diff > 1.5
                              case when message_length_avg_diff <= 2.7326455116271973 then
                                 return 0.8665511265164645 # (1000.0 out of 1154.0)
                              else  # if message_length_avg_diff > 2.7326455116271973
                                case when commit_hours_diff <= 3.5 then
                                   return 0.8780193236714976 # (1454.0 out of 1656.0)
                                else  # if commit_hours_diff > 3.5
                                   return 0.9075797872340425 # (1365.0 out of 1504.0)
                                end                               end                             end                           else  # if refactor_mle_diff > 0.07402541860938072
                             return 0.9313953488372093 # (801.0 out of 860.0)
                          end                         else  # if refactor_mle_diff > 0.08152759075164795
                          case when message_length_avg_diff <= 18.157443046569824 then
                            case when commit_hours_diff <= 2.5 then
                               return 0.8640856672158155 # (1049.0 out of 1214.0)
                            else  # if commit_hours_diff > 2.5
                               return 0.8862876254180602 # (795.0 out of 897.0)
                            end                           else  # if message_length_avg_diff > 18.157443046569824
                            case when message_length_avg_diff <= 48.916526794433594 then
                               return 0.9060975609756098 # (743.0 out of 820.0)
                            else  # if message_length_avg_diff > 48.916526794433594
                               return 0.8827238335435057 # (700.0 out of 793.0)
                            end                           end                         end                       end                     end                   else  # if commit_hours_diff > 8.5
                     return 0.9349489795918368 # (733.0 out of 784.0)
                  end                 end               end             end           end         end       else  # if refactor_mle_diff > 0.1284506916999817
        case when commit_hours_diff <= 2.5 then
          case when message_length_avg_diff <= 23.44778537750244 then
            case when commit_hours_diff <= 0.5 then
              case when message_length_avg_diff <= 7.164705276489258 then
                 return 0.8046289993192648 # (1182.0 out of 1469.0)
              else  # if message_length_avg_diff > 7.164705276489258
                 return 0.7569444444444444 # (654.0 out of 864.0)
              end             else  # if commit_hours_diff > 0.5
               return 0.8074277854195323 # (1174.0 out of 1454.0)
            end           else  # if message_length_avg_diff > 23.44778537750244
            case when message_length_avg_diff <= 96.03221130371094 then
              case when refactor_mle_diff <= 0.1985638588666916 then
                 return 0.8187066974595842 # (709.0 out of 866.0)
              else  # if refactor_mle_diff > 0.1985638588666916
                 return 0.8405951115834219 # (791.0 out of 941.0)
              end             else  # if message_length_avg_diff > 96.03221130371094
               return 0.7984251968503937 # (1014.0 out of 1270.0)
            end           end         else  # if commit_hours_diff > 2.5
          case when message_length_avg_diff <= 4.766890287399292 then
             return 0.8458646616541353 # (900.0 out of 1064.0)
          else  # if message_length_avg_diff > 4.766890287399292
            case when refactor_mle_diff <= 0.16902051120996475 then
               return 0.8613396004700352 # (733.0 out of 851.0)
            else  # if refactor_mle_diff > 0.16902051120996475
              case when message_length_avg_diff <= 47.4741153717041 then
                 return 0.8771769019248395 # (957.0 out of 1091.0)
              else  # if message_length_avg_diff > 47.4741153717041
                 return 0.912573673870334 # (929.0 out of 1018.0)
              end             end           end         end       end     end   end )