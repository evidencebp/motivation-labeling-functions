create or replace function RandomForest_8 (message_length_avg_diff int64, refactor_mle_diff int64, commit_hours_diff int64) as (
  case when commit_hours_diff <= -3.5 then
    case when refactor_mle_diff <= 0.30499932169914246 then
      case when refactor_mle_diff <= -0.09558798000216484 then
        case when message_length_avg_diff <= -15.559959411621094 then
          case when commit_hours_diff <= -5.5 then
             return 0.6011029411764706 # (654.0 out of 1088.0)
          else  # if commit_hours_diff > -5.5
             return 0.7359307359307359 # (680.0 out of 924.0)
          end         else  # if message_length_avg_diff > -15.559959411621094
          case when message_length_avg_diff <= -4.83766770362854 then
             return 0.7339743589743589 # (687.0 out of 936.0)
          else  # if message_length_avg_diff > -4.83766770362854
            case when refactor_mle_diff <= -0.17831013351678848 then
               return 0.6622428666224287 # (998.0 out of 1507.0)
            else  # if refactor_mle_diff > -0.17831013351678848
              case when refactor_mle_diff <= -0.12406771630048752 then
                 return 0.6977964323189927 # (665.0 out of 953.0)
              else  # if refactor_mle_diff > -0.12406771630048752
                 return 0.6583427922814983 # (580.0 out of 881.0)
              end             end           end         end       else  # if refactor_mle_diff > -0.09558798000216484
        case when refactor_mle_diff <= -0.0012598311295732856 then
          case when commit_hours_diff <= -6.5 then
            case when message_length_avg_diff <= -2.5134633779525757 then
               return 0.6014344262295082 # (587.0 out of 976.0)
            else  # if message_length_avg_diff > -2.5134633779525757
               return 0.6772291820191599 # (919.0 out of 1357.0)
            end           else  # if commit_hours_diff > -6.5
            case when commit_hours_diff <= -4.5 then
              case when message_length_avg_diff <= -5.897368431091309 then
                 return 0.6987253765932793 # (603.0 out of 863.0)
              else  # if message_length_avg_diff > -5.897368431091309
                case when refactor_mle_diff <= -0.044500987976789474 then
                   return 0.754257907542579 # (620.0 out of 822.0)
                else  # if refactor_mle_diff > -0.044500987976789474
                   return 0.7775147928994083 # (657.0 out of 845.0)
                end               end             else  # if commit_hours_diff > -4.5
              case when refactor_mle_diff <= -0.05569418705999851 then
                 return 0.7357512953367875 # (568.0 out of 772.0)
              else  # if refactor_mle_diff > -0.05569418705999851
                 return 0.8078078078078078 # (1076.0 out of 1332.0)
              end             end           end         else  # if refactor_mle_diff > -0.0012598311295732856
          case when commit_hours_diff <= -9.5 then
             return 0.5375609756097561 # (551.0 out of 1025.0)
          else  # if commit_hours_diff > -9.5
            case when commit_hours_diff <= -5.5 then
              case when refactor_mle_diff <= 0.0016066364478319883 then
                 return 0.6347381864623244 # (497.0 out of 783.0)
              else  # if refactor_mle_diff > 0.0016066364478319883
                case when refactor_mle_diff <= 0.08300073072314262 then
                   return 0.7189655172413794 # (1251.0 out of 1740.0)
                else  # if refactor_mle_diff > 0.08300073072314262
                   return 0.6600719424460432 # (1101.0 out of 1668.0)
                end               end             else  # if commit_hours_diff > -5.5
              case when message_length_avg_diff <= -4.7219626903533936 then
                 return 0.6986842105263158 # (1062.0 out of 1520.0)
              else  # if message_length_avg_diff > -4.7219626903533936
                case when commit_hours_diff <= -4.5 then
                  case when message_length_avg_diff <= 10.241846084594727 then
                     return 0.7800687285223368 # (681.0 out of 873.0)
                  else  # if message_length_avg_diff > 10.241846084594727
                     return 0.6934865900383141 # (543.0 out of 783.0)
                  end                 else  # if commit_hours_diff > -4.5
                  case when message_length_avg_diff <= 13.141912937164307 then
                     return 0.7569230769230769 # (984.0 out of 1300.0)
                  else  # if message_length_avg_diff > 13.141912937164307
                     return 0.7935606060606061 # (838.0 out of 1056.0)
                  end                 end               end             end           end         end       end     else  # if refactor_mle_diff > 0.30499932169914246
       return 0.5949227373068433 # (539.0 out of 906.0)
    end   else  # if commit_hours_diff > -3.5
    case when refactor_mle_diff <= 0.2373770996928215 then
      case when commit_hours_diff <= -0.5 then
        case when refactor_mle_diff <= -0.16367073357105255 then
          case when refactor_mle_diff <= -0.20581363886594772 then
            case when commit_hours_diff <= -1.5 then
               return 0.7680272108843538 # (1129.0 out of 1470.0)
            else  # if commit_hours_diff > -1.5
               return 0.7908045977011494 # (688.0 out of 870.0)
            end           else  # if refactor_mle_diff > -0.20581363886594772
             return 0.7517482517482518 # (860.0 out of 1144.0)
          end         else  # if refactor_mle_diff > -0.16367073357105255
          case when commit_hours_diff <= -1.5 then
            case when commit_hours_diff <= -2.5 then
              case when refactor_mle_diff <= -0.005199335981160402 then
                case when message_length_avg_diff <= -4.851673364639282 then
                   return 0.7899034892353378 # (1064.0 out of 1347.0)
                else  # if message_length_avg_diff > -4.851673364639282
                  case when message_length_avg_diff <= 5.368852138519287 then
                     return 0.836676217765043 # (876.0 out of 1047.0)
                  else  # if message_length_avg_diff > 5.368852138519287
                     return 0.8024691358024691 # (910.0 out of 1134.0)
                  end                 end               else  # if refactor_mle_diff > -0.005199335981160402
                case when refactor_mle_diff <= 1.1136375178466551e-05 then
                   return 0.6842105263157895 # (598.0 out of 874.0)
                else  # if refactor_mle_diff > 1.1136375178466551e-05
                  case when message_length_avg_diff <= 5.664021730422974 then
                    case when refactor_mle_diff <= 0.07810086384415627 then
                       return 0.8449675324675324 # (1041.0 out of 1232.0)
                    else  # if refactor_mle_diff > 0.07810086384415627
                       return 0.7745454545454545 # (639.0 out of 825.0)
                    end                   else  # if message_length_avg_diff > 5.664021730422974
                     return 0.7918523233609166 # (1244.0 out of 1571.0)
                  end                 end               end             else  # if commit_hours_diff > -2.5
              case when message_length_avg_diff <= -12.889827728271484 then
                case when message_length_avg_diff <= -25.388392448425293 then
                   return 0.8020750199521149 # (1005.0 out of 1253.0)
                else  # if message_length_avg_diff > -25.388392448425293
                   return 0.7688888888888888 # (692.0 out of 900.0)
                end               else  # if message_length_avg_diff > -12.889827728271484
                case when refactor_mle_diff <= -0.0885394811630249 then
                   return 0.7864838393731636 # (803.0 out of 1021.0)
                else  # if refactor_mle_diff > -0.0885394811630249
                  case when refactor_mle_diff <= -0.005916316760703921 then
                    case when message_length_avg_diff <= 3.762500047683716 then
                       return 0.8740801308258381 # (1069.0 out of 1223.0)
                    else  # if message_length_avg_diff > 3.762500047683716
                       return 0.833469387755102 # (1021.0 out of 1225.0)
                    end                   else  # if refactor_mle_diff > -0.005916316760703921
                    case when refactor_mle_diff <= 1.2872395927843172e-05 then
                       return 0.7556935817805382 # (730.0 out of 966.0)
                    else  # if refactor_mle_diff > 1.2872395927843172e-05
                      case when refactor_mle_diff <= 0.0599165428429842 then
                        case when refactor_mle_diff <= 0.028001006692647934 then
                           return 0.834319526627219 # (846.0 out of 1014.0)
                        else  # if refactor_mle_diff > 0.028001006692647934
                           return 0.8760724499523356 # (919.0 out of 1049.0)
                        end                       else  # if refactor_mle_diff > 0.0599165428429842
                        case when message_length_avg_diff <= 5.167203664779663 then
                           return 0.7980416156670747 # (652.0 out of 817.0)
                        else  # if message_length_avg_diff > 5.167203664779663
                           return 0.8229082047116165 # (1013.0 out of 1231.0)
                        end                       end                     end                   end                 end               end             end           else  # if commit_hours_diff > -1.5
            case when refactor_mle_diff <= 0.08500320091843605 then
              case when message_length_avg_diff <= -18.87992763519287 then
                case when message_length_avg_diff <= -40.49668312072754 then
                   return 0.8485221674876847 # (689.0 out of 812.0)
                else  # if message_length_avg_diff > -40.49668312072754
                   return 0.7738693467336684 # (616.0 out of 796.0)
                end               else  # if message_length_avg_diff > -18.87992763519287
                case when message_length_avg_diff <= 23.117597579956055 then
                  case when message_length_avg_diff <= -3.587170720100403 then
                    case when message_length_avg_diff <= -8.963898658752441 then
                       return 0.8610271903323263 # (855.0 out of 993.0)
                    else  # if message_length_avg_diff > -8.963898658752441
                       return 0.8257191201353637 # (976.0 out of 1182.0)
                    end                   else  # if message_length_avg_diff > -3.587170720100403
                    case when refactor_mle_diff <= 0.0014241955359466374 then
                      case when refactor_mle_diff <= -0.0031880270689725876 then
                        case when refactor_mle_diff <= -0.04603595659136772 then
                           return 0.8519553072625698 # (1220.0 out of 1432.0)
                        else  # if refactor_mle_diff > -0.04603595659136772
                           return 0.890295358649789 # (1055.0 out of 1185.0)
                        end                       else  # if refactor_mle_diff > -0.0031880270689725876
                         return 0.8105670103092784 # (629.0 out of 776.0)
                      end                     else  # if refactor_mle_diff > 0.0014241955359466374
                      case when refactor_mle_diff <= 0.03538953512907028 then
                         return 0.8881048387096774 # (881.0 out of 992.0)
                      else  # if refactor_mle_diff > 0.03538953512907028
                         return 0.9012485811577753 # (794.0 out of 881.0)
                      end                     end                   end                 else  # if message_length_avg_diff > 23.117597579956055
                  case when refactor_mle_diff <= -0.005450184224173427 then
                     return 0.8302122347066168 # (665.0 out of 801.0)
                  else  # if refactor_mle_diff > -0.005450184224173427
                     return 0.8465227817745803 # (706.0 out of 834.0)
                  end                 end               end             else  # if refactor_mle_diff > 0.08500320091843605
              case when message_length_avg_diff <= -0.6222203075885773 then
                 return 0.7990074441687345 # (644.0 out of 806.0)
              else  # if message_length_avg_diff > -0.6222203075885773
                 return 0.82899366643209 # (1178.0 out of 1421.0)
              end             end           end         end       else  # if commit_hours_diff > -0.5
        case when commit_hours_diff <= 2.5 then
          case when refactor_mle_diff <= -0.2117408588528633 then
            case when commit_hours_diff <= 0.5 then
               return 0.7679814385150812 # (662.0 out of 862.0)
            else  # if commit_hours_diff > 0.5
               return 0.8147668393782384 # (1258.0 out of 1544.0)
            end           else  # if refactor_mle_diff > -0.2117408588528633
            case when refactor_mle_diff <= 0.10643232241272926 then
              case when refactor_mle_diff <= 0.0016073727165348828 then
                case when message_length_avg_diff <= -6.549702882766724 then
                  case when message_length_avg_diff <= -8.598329544067383 then
                    case when refactor_mle_diff <= -0.006684450199827552 then
                      case when commit_hours_diff <= 0.5 then
                        case when message_length_avg_diff <= -21.55435276031494 then
                           return 0.8829493087557604 # (958.0 out of 1085.0)
                        else  # if message_length_avg_diff > -21.55435276031494
                           return 0.8416666666666667 # (707.0 out of 840.0)
                        end                       else  # if commit_hours_diff > 0.5
                        case when message_length_avg_diff <= -50.25179672241211 then
                           return 0.8382165605095542 # (658.0 out of 785.0)
                        else  # if message_length_avg_diff > -50.25179672241211
                          case when message_length_avg_diff <= -21.980297088623047 then
                             return 0.8872727272727273 # (732.0 out of 825.0)
                          else  # if message_length_avg_diff > -21.980297088623047
                             return 0.8548872180451128 # (1137.0 out of 1330.0)
                          end                         end                       end                     else  # if refactor_mle_diff > -0.006684450199827552
                       return 0.7561881188118812 # (611.0 out of 808.0)
                    end                   else  # if message_length_avg_diff > -8.598329544067383
                     return 0.8093434343434344 # (641.0 out of 792.0)
                  end                 else  # if message_length_avg_diff > -6.549702882766724
                  case when message_length_avg_diff <= 16.308429718017578 then
                    case when commit_hours_diff <= 1.5 then
                      case when commit_hours_diff <= 0.5 then
                        case when message_length_avg_diff <= 4.9024999141693115 then
                          case when refactor_mle_diff <= -0.008016261737793684 then
                            case when refactor_mle_diff <= -0.04159321077167988 then
                               return 0.8738077769625825 # (1191.0 out of 1363.0)
                            else  # if refactor_mle_diff > -0.04159321077167988
                               return 0.9291819291819292 # (761.0 out of 819.0)
                            end                           else  # if refactor_mle_diff > -0.008016261737793684
                             return 0.845984598459846 # (769.0 out of 909.0)
                          end                         else  # if message_length_avg_diff > 4.9024999141693115
                           return 0.9015334947538337 # (1117.0 out of 1239.0)
                        end                       else  # if commit_hours_diff > 0.5
                        case when refactor_mle_diff <= -0.009839525911957026 then
                          case when refactor_mle_diff <= -0.049043215811252594 then
                             return 0.8791581805838425 # (1295.0 out of 1473.0)
                          else  # if refactor_mle_diff > -0.049043215811252594
                             return 0.9193877551020408 # (901.0 out of 980.0)
                          end                         else  # if refactor_mle_diff > -0.009839525911957026
                           return 0.8597938144329897 # (834.0 out of 970.0)
                        end                       end                     else  # if commit_hours_diff > 1.5
                      case when message_length_avg_diff <= 5.359609365463257 then
                        case when message_length_avg_diff <= 0.2755626142024994 then
                           return 0.8808290155440415 # (1020.0 out of 1158.0)
                        else  # if message_length_avg_diff > 0.2755626142024994
                           return 0.8526048284625158 # (671.0 out of 787.0)
                        end                       else  # if message_length_avg_diff > 5.359609365463257
                         return 0.8963855421686747 # (744.0 out of 830.0)
                      end                     end                   else  # if message_length_avg_diff > 16.308429718017578
                    case when refactor_mle_diff <= -0.011123215779662132 then
                      case when commit_hours_diff <= 0.5 then
                         return 0.8635670731707317 # (1133.0 out of 1312.0)
                      else  # if commit_hours_diff > 0.5
                        case when refactor_mle_diff <= -0.0765819400548935 then
                           return 0.8920454545454546 # (785.0 out of 880.0)
                        else  # if refactor_mle_diff > -0.0765819400548935
                           return 0.8620689655172413 # (750.0 out of 870.0)
                        end                       end                     else  # if refactor_mle_diff > -0.011123215779662132
                       return 0.7979539641943734 # (624.0 out of 782.0)
                    end                   end                 end               else  # if refactor_mle_diff > 0.0016073727165348828
                case when message_length_avg_diff <= -30.155513763427734 then
                   return 0.8539741219963032 # (924.0 out of 1082.0)
                else  # if message_length_avg_diff > -30.155513763427734
                  case when commit_hours_diff <= 0.5 then
                    case when refactor_mle_diff <= 0.0788186676800251 then
                      case when refactor_mle_diff <= 0.04376475512981415 then
                        case when message_length_avg_diff <= -1.2429952025413513 then
                           return 0.9298669891172914 # (769.0 out of 827.0)
                        else  # if message_length_avg_diff > -1.2429952025413513
                          case when refactor_mle_diff <= 0.02097334712743759 then
                             return 0.8724747474747475 # (691.0 out of 792.0)
                          else  # if refactor_mle_diff > 0.02097334712743759
                             return 0.9023485784919654 # (730.0 out of 809.0)
                          end                         end                       else  # if refactor_mle_diff > 0.04376475512981415
                         return 0.8829135466303608 # (1297.0 out of 1469.0)
                      end                     else  # if refactor_mle_diff > 0.0788186676800251
                       return 0.8331226295828066 # (659.0 out of 791.0)
                    end                   else  # if commit_hours_diff > 0.5
                    case when message_length_avg_diff <= 42.13809585571289 then
                      case when message_length_avg_diff <= -2.7425636053085327 then
                        case when commit_hours_diff <= 1.5 then
                           return 0.8899082568807339 # (970.0 out of 1090.0)
                        else  # if commit_hours_diff > 1.5
                           return 0.8919567827130852 # (743.0 out of 833.0)
                        end                       else  # if message_length_avg_diff > -2.7425636053085327
                        case when refactor_mle_diff <= 0.01802815031260252 then
                           return 0.9382080329557158 # (911.0 out of 971.0)
                        else  # if refactor_mle_diff > 0.01802815031260252
                          case when message_length_avg_diff <= 5.796172142028809 then
                             return 0.909400544959128 # (1335.0 out of 1468.0)
                          else  # if message_length_avg_diff > 5.796172142028809
                            case when message_length_avg_diff <= 14.234140872955322 then
                               return 0.8781973203410475 # (721.0 out of 821.0)
                            else  # if message_length_avg_diff > 14.234140872955322
                               return 0.9069767441860465 # (741.0 out of 817.0)
                            end                           end                         end                       end                     else  # if message_length_avg_diff > 42.13809585571289
                       return 0.8665865384615384 # (721.0 out of 832.0)
                    end                   end                 end               end             else  # if refactor_mle_diff > 0.10643232241272926
              case when commit_hours_diff <= 0.5 then
                case when message_length_avg_diff <= 5.659996509552002 then
                   return 0.808284023668639 # (683.0 out of 845.0)
                else  # if message_length_avg_diff > 5.659996509552002
                   return 0.8411016949152542 # (794.0 out of 944.0)
                end               else  # if commit_hours_diff > 0.5
                case when refactor_mle_diff <= 0.13610218465328217 then
                   return 0.8586387434554974 # (984.0 out of 1146.0)
                else  # if refactor_mle_diff > 0.13610218465328217
                  case when commit_hours_diff <= 1.5 then
                     return 0.8379942140790743 # (869.0 out of 1037.0)
                  else  # if commit_hours_diff > 1.5
                     return 0.8197802197802198 # (746.0 out of 910.0)
                  end                 end               end             end           end         else  # if commit_hours_diff > 2.5
          case when commit_hours_diff <= 9.5 then
            case when message_length_avg_diff <= -6.6119043827056885 then
              case when commit_hours_diff <= 4.5 then
                case when commit_hours_diff <= 3.5 then
                  case when refactor_mle_diff <= -0.07480792328715324 then
                     return 0.8478802992518704 # (680.0 out of 802.0)
                  else  # if refactor_mle_diff > -0.07480792328715324
                    case when message_length_avg_diff <= -21.96915054321289 then
                       return 0.863961813842482 # (724.0 out of 838.0)
                    else  # if message_length_avg_diff > -21.96915054321289
                       return 0.8822143698468787 # (749.0 out of 849.0)
                    end                   end                 else  # if commit_hours_diff > 3.5
                  case when refactor_mle_diff <= -0.035699253901839256 then
                     return 0.8376259798432251 # (748.0 out of 893.0)
                  else  # if refactor_mle_diff > -0.035699253901839256
                     return 0.8882051282051282 # (866.0 out of 975.0)
                  end                 end               else  # if commit_hours_diff > 4.5
                case when commit_hours_diff <= 7.5 then
                  case when refactor_mle_diff <= -0.008292348124086857 then
                     return 0.8862314156431803 # (1371.0 out of 1547.0)
                  else  # if refactor_mle_diff > -0.008292348124086857
                     return 0.8654371584699454 # (1267.0 out of 1464.0)
                  end                 else  # if commit_hours_diff > 7.5
                   return 0.8635394456289979 # (810.0 out of 938.0)
                end               end             else  # if message_length_avg_diff > -6.6119043827056885
              case when commit_hours_diff <= 7.5 then
                case when message_length_avg_diff <= -4.891378164291382 then
                   return 0.9148387096774193 # (709.0 out of 775.0)
                else  # if message_length_avg_diff > -4.891378164291382
                  case when message_length_avg_diff <= -2.1278467178344727 then
                     return 0.8566621803499327 # (1273.0 out of 1486.0)
                  else  # if message_length_avg_diff > -2.1278467178344727
                    case when refactor_mle_diff <= -0.20371384918689728 then
                       return 0.8187134502923976 # (700.0 out of 855.0)
                    else  # if refactor_mle_diff > -0.20371384918689728
                      case when message_length_avg_diff <= -0.046765197068452835 then
                         return 0.9171548117154812 # (1096.0 out of 1195.0)
                      else  # if message_length_avg_diff > -0.046765197068452835
                        case when refactor_mle_diff <= -0.03725690022110939 then
                          case when message_length_avg_diff <= 23.959649085998535 then
                            case when message_length_avg_diff <= 9.058775424957275 then
                               return 0.9035812672176309 # (984.0 out of 1089.0)
                            else  # if message_length_avg_diff > 9.058775424957275
                               return 0.8740831295843521 # (715.0 out of 818.0)
                            end                           else  # if message_length_avg_diff > 23.959649085998535
                             return 0.92 # (943.0 out of 1025.0)
                          end                         else  # if refactor_mle_diff > -0.03725690022110939
                          case when commit_hours_diff <= 6.5 then
                            case when message_length_avg_diff <= 1.5557413697242737 then
                               return 0.9058402860548271 # (760.0 out of 839.0)
                            else  # if message_length_avg_diff > 1.5557413697242737
                              case when commit_hours_diff <= 5.5 then
                                case when message_length_avg_diff <= 84.4926986694336 then
                                  case when message_length_avg_diff <= 20.15798568725586 then
                                    case when commit_hours_diff <= 4.5 then
                                      case when message_length_avg_diff <= 7.638348579406738 then
                                         return 0.8878437047756874 # (1227.0 out of 1382.0)
                                      else  # if message_length_avg_diff > 7.638348579406738
                                         return 0.8562367864693446 # (1215.0 out of 1419.0)
                                      end                                     else  # if commit_hours_diff > 4.5
                                       return 0.8585365853658536 # (704.0 out of 820.0)
                                    end                                   else  # if message_length_avg_diff > 20.15798568725586
                                    case when refactor_mle_diff <= 0.0713522732257843 then
                                       return 0.9045801526717557 # (948.0 out of 1048.0)
                                    else  # if refactor_mle_diff > 0.0713522732257843
                                       return 0.8875154511742892 # (718.0 out of 809.0)
                                    end                                   end                                 else  # if message_length_avg_diff > 84.4926986694336
                                   return 0.8541666666666666 # (656.0 out of 768.0)
                                end                               else  # if commit_hours_diff > 5.5
                                 return 0.8925619834710744 # (972.0 out of 1089.0)
                              end                             end                           else  # if commit_hours_diff > 6.5
                             return 0.9036796536796536 # (835.0 out of 924.0)
                          end                         end                       end                     end                   end                 end               else  # if commit_hours_diff > 7.5
                case when message_length_avg_diff <= 8.845042705535889 then
                   return 0.8841607565011821 # (748.0 out of 846.0)
                else  # if message_length_avg_diff > 8.845042705535889
                   return 0.870600414078675 # (841.0 out of 966.0)
                end               end             end           else  # if commit_hours_diff > 9.5
            case when commit_hours_diff <= 11.5 then
               return 0.9046529366895499 # (1186.0 out of 1311.0)
            else  # if commit_hours_diff > 11.5
               return 0.8988636363636363 # (791.0 out of 880.0)
            end           end         end       end     else  # if refactor_mle_diff > 0.2373770996928215
      case when commit_hours_diff <= 1.5 then
        case when message_length_avg_diff <= -7.711171627044678 then
           return 0.7938021454112039 # (666.0 out of 839.0)
        else  # if message_length_avg_diff > -7.711171627044678
          case when commit_hours_diff <= -0.5 then
             return 0.7204563977180114 # (884.0 out of 1227.0)
          else  # if commit_hours_diff > -0.5
             return 0.7766636280765725 # (852.0 out of 1097.0)
          end         end       else  # if commit_hours_diff > 1.5
        case when message_length_avg_diff <= 0.009712273953482509 then
           return 0.7746305418719212 # (629.0 out of 812.0)
        else  # if message_length_avg_diff > 0.009712273953482509
          case when refactor_mle_diff <= 0.32183200120925903 then
             return 0.877892030848329 # (683.0 out of 778.0)
          else  # if refactor_mle_diff > 0.32183200120925903
             return 0.8650990099009901 # (699.0 out of 808.0)
          end         end       end     end   end )