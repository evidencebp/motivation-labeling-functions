create or replace function Tree_ms (message_length_avg_diff int64, refactor_mle_diff int64, commit_hours_diff int64) as (
  case when commit_hours_diff <= -2.5 then
    case when commit_hours_diff <= -6.5 then
      case when commit_hours_diff <= -9.5 then
        case when commit_hours_diff <= -12.5 then
           return 0.15977249224405377 # (309.0 out of 1934.0)
        else  # if commit_hours_diff > -12.5
          case when refactor_mle_diff <= -0.03516045957803726 then
             return 0.22734970364098223 # (537.0 out of 2362.0)
          else  # if refactor_mle_diff > -0.03516045957803726
            case when refactor_mle_diff <= 0.04656093567609787 then
               return 0.17315175097276264 # (267.0 out of 1542.0)
            else  # if refactor_mle_diff > 0.04656093567609787
               return 0.1978798586572438 # (280.0 out of 1415.0)
            end           end         end       else  # if commit_hours_diff > -9.5
        case when message_length_avg_diff <= -10.99773359298706 then
          case when refactor_mle_diff <= -0.06600923463702202 then
             return 0.23260754115772703 # (438.0 out of 1883.0)
          else  # if refactor_mle_diff > -0.06600923463702202
             return 0.25943852855759925 # (536.0 out of 2066.0)
          end         else  # if message_length_avg_diff > -10.99773359298706
          case when commit_hours_diff <= -7.5 then
            case when refactor_mle_diff <= 0.06733661890029907 then
              case when refactor_mle_diff <= -0.061954986304044724 then
                 return 0.25720060636685194 # (509.0 out of 1979.0)
              else  # if refactor_mle_diff > -0.061954986304044724
                case when message_length_avg_diff <= 4.899423360824585 then
                   return 0.3 # (360.0 out of 1200.0)
                else  # if message_length_avg_diff > 4.899423360824585
                   return 0.28685897435897434 # (358.0 out of 1248.0)
                end               end             else  # if refactor_mle_diff > 0.06733661890029907
               return 0.24621461487820934 # (374.0 out of 1519.0)
            end           else  # if commit_hours_diff > -7.5
            case when message_length_avg_diff <= 18.403846740722656 then
              case when message_length_avg_diff <= 2.5867650508880615 then
                 return 0.29298642533936653 # (518.0 out of 1768.0)
              else  # if message_length_avg_diff > 2.5867650508880615
                 return 0.35308848080133554 # (423.0 out of 1198.0)
              end             else  # if message_length_avg_diff > 18.403846740722656
               return 0.2884990253411306 # (444.0 out of 1539.0)
            end           end         end       end     else  # if commit_hours_diff > -6.5
      case when commit_hours_diff <= -3.5 then
        case when refactor_mle_diff <= 0.30556559562683105 then
          case when commit_hours_diff <= -5.5 then
            case when refactor_mle_diff <= -0.10253221541643143 then
               return 0.3 # (570.0 out of 1900.0)
            else  # if refactor_mle_diff > -0.10253221541643143
              case when refactor_mle_diff <= -0.03842644393444061 then
                 return 0.37452615617892343 # (494.0 out of 1319.0)
              else  # if refactor_mle_diff > -0.03842644393444061
                case when refactor_mle_diff <= 0.0007891721033956856 then
                   return 0.3103448275862069 # (477.0 out of 1537.0)
                else  # if refactor_mle_diff > 0.0007891721033956856
                  case when message_length_avg_diff <= 6.068881988525391 then
                     return 0.3654990085922009 # (553.0 out of 1513.0)
                  else  # if message_length_avg_diff > 6.068881988525391
                     return 0.3088235294117647 # (420.0 out of 1360.0)
                  end                 end               end             end           else  # if commit_hours_diff > -5.5
            case when message_length_avg_diff <= -8.921179294586182 then
              case when refactor_mle_diff <= -0.002161288051865995 then
                case when refactor_mle_diff <= -0.18303817510604858 then
                   return 0.30794430794430794 # (376.0 out of 1221.0)
                else  # if refactor_mle_diff > -0.18303817510604858
                  case when commit_hours_diff <= -4.5 then
                     return 0.34698608964451316 # (449.0 out of 1294.0)
                  else  # if commit_hours_diff > -4.5
                     return 0.3971631205673759 # (672.0 out of 1692.0)
                  end                 end               else  # if refactor_mle_diff > -0.002161288051865995
                case when refactor_mle_diff <= 0.04004690796136856 then
                   return 0.28879310344827586 # (335.0 out of 1160.0)
                else  # if refactor_mle_diff > 0.04004690796136856
                   return 0.337467362924282 # (517.0 out of 1532.0)
                end               end             else  # if message_length_avg_diff > -8.921179294586182
              case when message_length_avg_diff <= 17.744940757751465 then
                case when refactor_mle_diff <= -0.10329221934080124 then
                   return 0.3661257606490872 # (722.0 out of 1972.0)
                else  # if refactor_mle_diff > -0.10329221934080124
                  case when refactor_mle_diff <= 0.05608325079083443 then
                    case when refactor_mle_diff <= 0.001943679351825267 then
                      case when refactor_mle_diff <= -0.000379187025828287 then
                        case when refactor_mle_diff <= -0.022650611586868763 then
                          case when refactor_mle_diff <= -0.048516763374209404 then
                             return 0.43194925028835063 # (749.0 out of 1734.0)
                          else  # if refactor_mle_diff > -0.048516763374209404
                             return 0.375542064180399 # (433.0 out of 1153.0)
                          end                         else  # if refactor_mle_diff > -0.022650611586868763
                           return 0.4779582366589327 # (412.0 out of 862.0)
                        end                       else  # if refactor_mle_diff > -0.000379187025828287
                         return 0.33722527472527475 # (491.0 out of 1456.0)
                      end                     else  # if refactor_mle_diff > 0.001943679351825267
                      case when message_length_avg_diff <= 1.729174554347992 then
                         return 0.42702702702702705 # (395.0 out of 925.0)
                      else  # if message_length_avg_diff > 1.729174554347992
                         return 0.48471121177802945 # (428.0 out of 883.0)
                      end                     end                   else  # if refactor_mle_diff > 0.05608325079083443
                    case when message_length_avg_diff <= 0.9293085932731628 then
                       return 0.3545369504209542 # (379.0 out of 1069.0)
                    else  # if message_length_avg_diff > 0.9293085932731628
                       return 0.3836615609044493 # (526.0 out of 1371.0)
                    end                   end                 end               else  # if message_length_avg_diff > 17.744940757751465
                case when refactor_mle_diff <= 0.073974609375 then
                  case when refactor_mle_diff <= -0.0018336318898946047 then
                    case when refactor_mle_diff <= -0.11487258598208427 then
                       return 0.3294216261525566 # (393.0 out of 1193.0)
                    else  # if refactor_mle_diff > -0.11487258598208427
                       return 0.38648293963254593 # (589.0 out of 1524.0)
                    end                   else  # if refactor_mle_diff > -0.0018336318898946047
                     return 0.3089430894308943 # (456.0 out of 1476.0)
                  end                 else  # if refactor_mle_diff > 0.073974609375
                   return 0.38919582565991406 # (634.0 out of 1629.0)
                end               end             end           end         else  # if refactor_mle_diff > 0.30556559562683105
           return 0.2601246105919003 # (334.0 out of 1284.0)
        end       else  # if commit_hours_diff > -3.5
        case when refactor_mle_diff <= 0.137669175863266 then
          case when message_length_avg_diff <= -3.7613911628723145 then
            case when refactor_mle_diff <= 0.0010858862660825253 then
              case when refactor_mle_diff <= -0.025629950687289238 then
                case when refactor_mle_diff <= -0.09731197357177734 then
                   return 0.375 # (720.0 out of 1920.0)
                else  # if refactor_mle_diff > -0.09731197357177734
                   return 0.4419306184012066 # (586.0 out of 1326.0)
                end               else  # if refactor_mle_diff > -0.025629950687289238
                 return 0.3352059925093633 # (358.0 out of 1068.0)
              end             else  # if refactor_mle_diff > 0.0010858862660825253
               return 0.4334689134224288 # (746.0 out of 1721.0)
            end           else  # if message_length_avg_diff > -3.7613911628723145
            case when message_length_avg_diff <= 40.645803451538086 then
              case when refactor_mle_diff <= 1.1136375178466551e-05 then
                case when refactor_mle_diff <= -0.003052498563192785 then
                  case when refactor_mle_diff <= -0.11491631716489792 then
                     return 0.4027898866608544 # (462.0 out of 1147.0)
                  else  # if refactor_mle_diff > -0.11491631716489792
                    case when message_length_avg_diff <= 2.4530588388442993 then
                       return 0.45224719101123595 # (483.0 out of 1068.0)
                    else  # if message_length_avg_diff > 2.4530588388442993
                       return 0.5027967681789932 # (809.0 out of 1609.0)
                    end                   end                 else  # if refactor_mle_diff > -0.003052498563192785
                   return 0.3701923076923077 # (385.0 out of 1040.0)
                end               else  # if refactor_mle_diff > 1.1136375178466551e-05
                case when message_length_avg_diff <= 5.664021730422974 then
                   return 0.5514950166112956 # (664.0 out of 1204.0)
                else  # if message_length_avg_diff > 5.664021730422974
                   return 0.47386519944979366 # (689.0 out of 1454.0)
                end               end             else  # if message_length_avg_diff > 40.645803451538086
               return 0.3976575571667596 # (713.0 out of 1793.0)
            end           end         else  # if refactor_mle_diff > 0.137669175863266
          case when message_length_avg_diff <= 2.503384590148926 then
             return 0.3877551020408163 # (380.0 out of 980.0)
          else  # if message_length_avg_diff > 2.503384590148926
             return 0.33098591549295775 # (470.0 out of 1420.0)
          end         end       end     end   else  # if commit_hours_diff > -2.5
    case when commit_hours_diff <= -0.5 then
      case when message_length_avg_diff <= -12.563869953155518 then
        case when refactor_mle_diff <= -0.18440136313438416 then
           return 0.3646080760095012 # (614.0 out of 1684.0)
        else  # if refactor_mle_diff > -0.18440136313438416
          case when refactor_mle_diff <= 0.12589460611343384 then
            case when message_length_avg_diff <= -50.988487243652344 then
              case when refactor_mle_diff <= -0.06891506910324097 then
                 return 0.5806451612903226 # (450.0 out of 775.0)
              else  # if refactor_mle_diff > -0.06891506910324097
                 return 0.45964912280701753 # (655.0 out of 1425.0)
              end             else  # if message_length_avg_diff > -50.988487243652344
              case when refactor_mle_diff <= 0.00020963672432117164 then
                case when refactor_mle_diff <= -0.023631430231034756 then
                  case when refactor_mle_diff <= -0.09126850590109825 then
                     return 0.4028662420382166 # (506.0 out of 1256.0)
                  else  # if refactor_mle_diff > -0.09126850590109825
                     return 0.48043184885290147 # (712.0 out of 1482.0)
                  end                 else  # if refactor_mle_diff > -0.023631430231034756
                   return 0.3515981735159817 # (385.0 out of 1095.0)
                end               else  # if refactor_mle_diff > 0.00020963672432117164
                case when refactor_mle_diff <= 0.044685421511530876 then
                   return 0.5170789163722026 # (439.0 out of 849.0)
                else  # if refactor_mle_diff > 0.044685421511530876
                   return 0.44011684518013633 # (452.0 out of 1027.0)
                end               end             end           else  # if refactor_mle_diff > 0.12589460611343384
             return 0.36109117013639624 # (503.0 out of 1393.0)
          end         end       else  # if message_length_avg_diff > -12.563869953155518
        case when refactor_mle_diff <= 0.16311274468898773 then
          case when refactor_mle_diff <= -0.16322875022888184 then
            case when message_length_avg_diff <= 11.651721000671387 then
               return 0.3983152827918171 # (662.0 out of 1662.0)
            else  # if message_length_avg_diff > 11.651721000671387
               return 0.4372852233676976 # (509.0 out of 1164.0)
            end           else  # if refactor_mle_diff > -0.16322875022888184
            case when commit_hours_diff <= -1.5 then
              case when message_length_avg_diff <= 60.7607364654541 then
                case when refactor_mle_diff <= 0.022689171135425568 then
                  case when refactor_mle_diff <= -0.00035713796387426555 then
                    case when refactor_mle_diff <= -0.0848199650645256 then
                      case when refactor_mle_diff <= -0.11634964123368263 then
                         return 0.5041816009557945 # (422.0 out of 837.0)
                      else  # if refactor_mle_diff > -0.11634964123368263
                         return 0.43231441048034935 # (396.0 out of 916.0)
                      end                     else  # if refactor_mle_diff > -0.0848199650645256
                      case when refactor_mle_diff <= -0.017422848381102085 then
                        case when message_length_avg_diff <= 4.672200679779053 then
                          case when message_length_avg_diff <= -1.8691288828849792 then
                             return 0.5053763440860215 # (470.0 out of 930.0)
                          else  # if message_length_avg_diff > -1.8691288828849792
                             return 0.6020539152759948 # (469.0 out of 779.0)
                          end                         else  # if message_length_avg_diff > 4.672200679779053
                           return 0.5003756574004508 # (666.0 out of 1331.0)
                        end                       else  # if refactor_mle_diff > -0.017422848381102085
                         return 0.5897740784780023 # (496.0 out of 841.0)
                      end                     end                   else  # if refactor_mle_diff > -0.00035713796387426555
                    case when refactor_mle_diff <= 3.390363781363703e-05 then
                       return 0.3699186991869919 # (546.0 out of 1476.0)
                    else  # if refactor_mle_diff > 3.390363781363703e-05
                       return 0.4959677419354839 # (615.0 out of 1240.0)
                    end                   end                 else  # if refactor_mle_diff > 0.022689171135425568
                  case when refactor_mle_diff <= 0.04189066030085087 then
                     return 0.5873205741626795 # (491.0 out of 836.0)
                  else  # if refactor_mle_diff > 0.04189066030085087
                    case when message_length_avg_diff <= 1.2199721932411194 then
                       return 0.4699140401146132 # (492.0 out of 1047.0)
                    else  # if message_length_avg_diff > 1.2199721932411194
                      case when refactor_mle_diff <= 0.08504895865917206 then
                         return 0.5521601685985248 # (524.0 out of 949.0)
                      else  # if refactor_mle_diff > 0.08504895865917206
                         return 0.5108695652173914 # (470.0 out of 920.0)
                      end                     end                   end                 end               else  # if message_length_avg_diff > 60.7607364654541
                 return 0.4206896551724138 # (610.0 out of 1450.0)
              end             else  # if commit_hours_diff > -1.5
              case when message_length_avg_diff <= 22.46691608428955 then
                case when message_length_avg_diff <= -4.493403196334839 then
                  case when refactor_mle_diff <= -0.0018011369975283742 then
                     return 0.5512820512820513 # (731.0 out of 1326.0)
                  else  # if refactor_mle_diff > -0.0018011369975283742
                     return 0.453781512605042 # (594.0 out of 1309.0)
                  end                 else  # if message_length_avg_diff > -4.493403196334839
                  case when refactor_mle_diff <= -0.10095182061195374 then
                     return 0.4926719278466742 # (437.0 out of 887.0)
                  else  # if refactor_mle_diff > -0.10095182061195374
                    case when refactor_mle_diff <= -1.8606324374559335e-05 then
                      case when message_length_avg_diff <= 3.785244584083557 then
                        case when refactor_mle_diff <= -0.045461319386959076 then
                           return 0.5869297163995068 # (476.0 out of 811.0)
                        else  # if refactor_mle_diff > -0.045461319386959076
                           return 0.6414342629482072 # (644.0 out of 1004.0)
                        end                       else  # if message_length_avg_diff > 3.785244584083557
                        case when message_length_avg_diff <= 8.392653465270996 then
                           return 0.5252403846153846 # (437.0 out of 832.0)
                        else  # if message_length_avg_diff > 8.392653465270996
                           return 0.5814977973568282 # (528.0 out of 908.0)
                        end                       end                     else  # if refactor_mle_diff > -1.8606324374559335e-05
                      case when refactor_mle_diff <= 5.195901030674577e-05 then
                         return 0.4374475230898405 # (521.0 out of 1191.0)
                      else  # if refactor_mle_diff > 5.195901030674577e-05
                        case when refactor_mle_diff <= 0.02002448122948408 then
                           return 0.6501128668171557 # (576.0 out of 886.0)
                        else  # if refactor_mle_diff > 0.02002448122948408
                          case when message_length_avg_diff <= 3.4661474227905273 then
                             return 0.5142857142857142 # (810.0 out of 1575.0)
                          else  # if message_length_avg_diff > 3.4661474227905273
                            case when message_length_avg_diff <= 10.040638446807861 then
                               return 0.6632124352331606 # (512.0 out of 772.0)
                            else  # if message_length_avg_diff > 10.040638446807861
                               return 0.5375722543352601 # (465.0 out of 865.0)
                            end                           end                         end                       end                     end                   end                 end               else  # if message_length_avg_diff > 22.46691608428955
                case when message_length_avg_diff <= 34.393672943115234 then
                   return 0.4577777777777778 # (515.0 out of 1125.0)
                else  # if message_length_avg_diff > 34.393672943115234
                  case when message_length_avg_diff <= 68.87728500366211 then
                     return 0.5574817518248175 # (611.0 out of 1096.0)
                  else  # if message_length_avg_diff > 68.87728500366211
                     return 0.500780031201248 # (642.0 out of 1282.0)
                  end                 end               end             end           end         else  # if refactor_mle_diff > 0.16311274468898773
          case when refactor_mle_diff <= 0.3038738965988159 then
            case when message_length_avg_diff <= 21.174875259399414 then
               return 0.40460081190798375 # (598.0 out of 1478.0)
            else  # if message_length_avg_diff > 21.174875259399414
               return 0.477124183006536 # (511.0 out of 1071.0)
            end           else  # if refactor_mle_diff > 0.3038738965988159
             return 0.344106463878327 # (362.0 out of 1052.0)
          end         end       end     else  # if commit_hours_diff > -0.5
      case when refactor_mle_diff <= -0.1965874284505844 then
        case when commit_hours_diff <= 3.5 then
          case when message_length_avg_diff <= -1.7635582089424133 then
            case when refactor_mle_diff <= -0.34458431601524353 then
               return 0.36846689895470386 # (423.0 out of 1148.0)
            else  # if refactor_mle_diff > -0.34458431601524353
              case when refactor_mle_diff <= -0.2589478939771652 then
                 return 0.46465696465696466 # (447.0 out of 962.0)
              else  # if refactor_mle_diff > -0.2589478939771652
                 return 0.4197612732095491 # (633.0 out of 1508.0)
              end             end           else  # if message_length_avg_diff > -1.7635582089424133
            case when refactor_mle_diff <= -0.29539376497268677 then
               return 0.446064139941691 # (459.0 out of 1029.0)
            else  # if refactor_mle_diff > -0.29539376497268677
               return 0.5065562456866805 # (734.0 out of 1449.0)
            end           end         else  # if commit_hours_diff > 3.5
          case when commit_hours_diff <= 6.5 then
            case when message_length_avg_diff <= -1.2191097140312195 then
               return 0.5604395604395604 # (612.0 out of 1092.0)
            else  # if message_length_avg_diff > -1.2191097140312195
               return 0.5111896348645465 # (434.0 out of 849.0)
            end           else  # if commit_hours_diff > 6.5
             return 0.6049046321525886 # (666.0 out of 1101.0)
          end         end       else  # if refactor_mle_diff > -0.1965874284505844
        case when refactor_mle_diff <= 0.12752456963062286 then
          case when message_length_avg_diff <= -6.590948820114136 then
            case when commit_hours_diff <= 1.5 then
              case when refactor_mle_diff <= -2.2792173695052043e-05 then
                case when refactor_mle_diff <= -0.08523242175579071 then
                  case when refactor_mle_diff <= -0.10786840692162514 then
                    case when message_length_avg_diff <= -27.43381118774414 then
                       return 0.5636363636363636 # (465.0 out of 825.0)
                    else  # if message_length_avg_diff > -27.43381118774414
                       return 0.49054621848739494 # (467.0 out of 952.0)
                    end                   else  # if refactor_mle_diff > -0.10786840692162514
                     return 0.48554913294797686 # (420.0 out of 865.0)
                  end                 else  # if refactor_mle_diff > -0.08523242175579071
                  case when refactor_mle_diff <= -0.054059138521552086 then
                     return 0.6500920810313076 # (706.0 out of 1086.0)
                  else  # if refactor_mle_diff > -0.054059138521552086
                    case when commit_hours_diff <= 0.5 then
                       return 0.555010511562719 # (792.0 out of 1427.0)
                    else  # if commit_hours_diff > 0.5
                       return 0.5979899497487438 # (714.0 out of 1194.0)
                    end                   end                 end               else  # if refactor_mle_diff > -2.2792173695052043e-05
                case when refactor_mle_diff <= 0.0015887824120000005 then
                   return 0.3001760563380282 # (341.0 out of 1136.0)
                else  # if refactor_mle_diff > 0.0015887824120000005
                  case when refactor_mle_diff <= 0.0504123754799366 then
                    case when refactor_mle_diff <= 0.027674967423081398 then
                       return 0.6056210335448776 # (668.0 out of 1103.0)
                    else  # if refactor_mle_diff > 0.027674967423081398
                       return 0.6795727636849133 # (509.0 out of 749.0)
                    end                   else  # if refactor_mle_diff > 0.0504123754799366
                    case when refactor_mle_diff <= 0.08565601333975792 then
                       return 0.53125 # (595.0 out of 1120.0)
                    else  # if refactor_mle_diff > 0.08565601333975792
                       return 0.49222797927461137 # (475.0 out of 965.0)
                    end                   end                 end               end             else  # if commit_hours_diff > 1.5
              case when commit_hours_diff <= 8.5 then
                case when refactor_mle_diff <= 5.0686503527686e-05 then
                  case when refactor_mle_diff <= -0.00019588177383411676 then
                    case when refactor_mle_diff <= -0.07101089879870415 then
                      case when message_length_avg_diff <= -21.983257293701172 then
                        case when commit_hours_diff <= 3.5 then
                           return 0.5541958041958042 # (634.0 out of 1144.0)
                        else  # if commit_hours_diff > 3.5
                           return 0.6122448979591837 # (600.0 out of 980.0)
                        end                       else  # if message_length_avg_diff > -21.983257293701172
                        case when message_length_avg_diff <= -12.225129127502441 then
                           return 0.4797687861271676 # (415.0 out of 865.0)
                        else  # if message_length_avg_diff > -12.225129127502441
                           return 0.5822281167108754 # (439.0 out of 754.0)
                        end                       end                     else  # if refactor_mle_diff > -0.07101089879870415
                      case when refactor_mle_diff <= -0.025624621659517288 then
                        case when message_length_avg_diff <= -15.868657112121582 then
                           return 0.6378931967812729 # (872.0 out of 1367.0)
                        else  # if message_length_avg_diff > -15.868657112121582
                           return 0.5641931684334511 # (479.0 out of 849.0)
                        end                       else  # if refactor_mle_diff > -0.025624621659517288
                         return 0.6704637917005696 # (824.0 out of 1229.0)
                      end                     end                   else  # if refactor_mle_diff > -0.00019588177383411676
                     return 0.40335305719921105 # (409.0 out of 1014.0)
                  end                 else  # if refactor_mle_diff > 5.0686503527686e-05
                  case when message_length_avg_diff <= -21.15760326385498 then
                    case when refactor_mle_diff <= 0.031555838882923126 then
                       return 0.6227709190672154 # (454.0 out of 729.0)
                    else  # if refactor_mle_diff > 0.031555838882923126
                      case when refactor_mle_diff <= 0.07026418671011925 then
                         return 0.5195195195195195 # (519.0 out of 999.0)
                      else  # if refactor_mle_diff > 0.07026418671011925
                         return 0.6044303797468354 # (573.0 out of 948.0)
                      end                     end                   else  # if message_length_avg_diff > -21.15760326385498
                    case when commit_hours_diff <= 3.5 then
                       return 0.6779141104294478 # (884.0 out of 1304.0)
                    else  # if commit_hours_diff > 3.5
                       return 0.5936254980079682 # (745.0 out of 1255.0)
                    end                   end                 end               else  # if commit_hours_diff > 8.5
                 return 0.6869328493647913 # (757.0 out of 1102.0)
              end             end           else  # if message_length_avg_diff > -6.590948820114136
            case when refactor_mle_diff <= -3.908428425347665e-06 then
              case when refactor_mle_diff <= -0.052364282310009 then
                case when commit_hours_diff <= 7.5 then
                  case when message_length_avg_diff <= -4.736276865005493 then
                     return 0.6477132262051916 # (524.0 out of 809.0)
                  else  # if message_length_avg_diff > -4.736276865005493
                    case when message_length_avg_diff <= 11.417007446289062 then
                      case when refactor_mle_diff <= -0.1500784233212471 then
                         return 0.6414141414141414 # (635.0 out of 990.0)
                      else  # if refactor_mle_diff > -0.1500784233212471
                        case when refactor_mle_diff <= -0.100861556828022 then
                          case when refactor_mle_diff <= -0.12344919145107269 then
                             return 0.5815677966101694 # (549.0 out of 944.0)
                          else  # if refactor_mle_diff > -0.12344919145107269
                             return 0.53125 # (680.0 out of 1280.0)
                          end                         else  # if refactor_mle_diff > -0.100861556828022
                          case when refactor_mle_diff <= -0.07559861987829208 then
                            case when message_length_avg_diff <= 1.3441558480262756 then
                               return 0.6666666666666666 # (480.0 out of 720.0)
                            else  # if message_length_avg_diff > 1.3441558480262756
                               return 0.6248600223964166 # (558.0 out of 893.0)
                            end                           else  # if refactor_mle_diff > -0.07559861987829208
                            case when message_length_avg_diff <= -0.04059308022260666 then
                               return 0.5414572864321608 # (431.0 out of 796.0)
                            else  # if message_length_avg_diff > -0.04059308022260666
                               return 0.593108504398827 # (809.0 out of 1364.0)
                            end                           end                         end                       end                     else  # if message_length_avg_diff > 11.417007446289062
                      case when message_length_avg_diff <= 38.457359313964844 then
                        case when refactor_mle_diff <= -0.11489246040582657 then
                           return 0.5051698670605613 # (684.0 out of 1354.0)
                        else  # if refactor_mle_diff > -0.11489246040582657
                          case when refactor_mle_diff <= -0.08433114364743233 then
                             return 0.6253229974160207 # (484.0 out of 774.0)
                          else  # if refactor_mle_diff > -0.08433114364743233
                             return 0.5316565481352992 # (613.0 out of 1153.0)
                          end                         end                       else  # if message_length_avg_diff > 38.457359313964844
                        case when message_length_avg_diff <= 99.0348014831543 then
                           return 0.6360153256704981 # (830.0 out of 1305.0)
                        else  # if message_length_avg_diff > 99.0348014831543
                           return 0.5565927654609102 # (477.0 out of 857.0)
                        end                       end                     end                   end                 else  # if commit_hours_diff > 7.5
                   return 0.6747448979591837 # (529.0 out of 784.0)
                end               else  # if refactor_mle_diff > -0.052364282310009
                case when message_length_avg_diff <= 17.92664337158203 then
                  case when refactor_mle_diff <= -0.030437308363616467 then
                    case when message_length_avg_diff <= 6.411895036697388 then
                      case when message_length_avg_diff <= 1.593654751777649 then
                        case when refactor_mle_diff <= -0.040679700672626495 then
                           return 0.6961690885072656 # (527.0 out of 757.0)
                        else  # if refactor_mle_diff > -0.040679700672626495
                           return 0.6238030095759234 # (456.0 out of 731.0)
                        end                       else  # if message_length_avg_diff > 1.593654751777649
                         return 0.5581896551724138 # (518.0 out of 928.0)
                      end                     else  # if message_length_avg_diff > 6.411895036697388
                       return 0.7040498442367601 # (678.0 out of 963.0)
                    end                   else  # if refactor_mle_diff > -0.030437308363616467
                    case when refactor_mle_diff <= -0.012064386624842882 then
                      case when message_length_avg_diff <= 7.746823787689209 then
                        case when refactor_mle_diff <= -0.017662587575614452 then
                          case when refactor_mle_diff <= -0.025136389769613743 then
                             return 0.7393364928909952 # (468.0 out of 633.0)
                          else  # if refactor_mle_diff > -0.025136389769613743
                             return 0.6854304635761589 # (621.0 out of 906.0)
                          end                         else  # if refactor_mle_diff > -0.017662587575614452
                           return 0.763271162123386 # (532.0 out of 697.0)
                        end                       else  # if message_length_avg_diff > 7.746823787689209
                         return 0.6424010217113666 # (503.0 out of 783.0)
                      end                     else  # if refactor_mle_diff > -0.012064386624842882
                      case when refactor_mle_diff <= -0.00760147231630981 then
                         return 0.6119733924611973 # (552.0 out of 902.0)
                      else  # if refactor_mle_diff > -0.00760147231630981
                        case when message_length_avg_diff <= 2.1252965927124023 then
                           return 0.7085889570552147 # (462.0 out of 652.0)
                        else  # if message_length_avg_diff > 2.1252965927124023
                           return 0.6309192200557103 # (453.0 out of 718.0)
                        end                       end                     end                   end                 else  # if message_length_avg_diff > 17.92664337158203
                  case when refactor_mle_diff <= -0.028205365873873234 then
                     return 0.581297976273552 # (833.0 out of 1433.0)
                  else  # if refactor_mle_diff > -0.028205365873873234
                    case when commit_hours_diff <= 1.5 then
                       return 0.667590027700831 # (482.0 out of 722.0)
                    else  # if commit_hours_diff > 1.5
                       return 0.6165966386554622 # (587.0 out of 952.0)
                    end                   end                 end               end             else  # if refactor_mle_diff > -3.908428425347665e-06
              case when refactor_mle_diff <= 5.2896416491421405e-06 then
                case when commit_hours_diff <= 1.5 then
                  case when message_length_avg_diff <= 0.8661155104637146 then
                     return 0.49573863636363635 # (698.0 out of 1408.0)
                  else  # if message_length_avg_diff > 0.8661155104637146
                     return 0.4336479733481399 # (781.0 out of 1801.0)
                  end                 else  # if commit_hours_diff > 1.5
                  case when message_length_avg_diff <= 1.279609501361847 then
                    case when message_length_avg_diff <= -0.4682072848081589 then
                       return 0.48614318706697457 # (421.0 out of 866.0)
                    else  # if message_length_avg_diff > -0.4682072848081589
                       return 0.6800947867298578 # (574.0 out of 844.0)
                    end                   else  # if message_length_avg_diff > 1.279609501361847
                    case when commit_hours_diff <= 3.5 then
                       return 0.46836555360281196 # (533.0 out of 1138.0)
                    else  # if commit_hours_diff > 3.5
                       return 0.5617696160267112 # (673.0 out of 1198.0)
                    end                   end                 end               else  # if refactor_mle_diff > 5.2896416491421405e-06
                case when refactor_mle_diff <= 0.030018712393939495 then
                  case when message_length_avg_diff <= 18.23333168029785 then
                    case when refactor_mle_diff <= 0.011450257617980242 then
                      case when commit_hours_diff <= 1.5 then
                         return 0.6554934823091247 # (704.0 out of 1074.0)
                      else  # if commit_hours_diff > 1.5
                         return 0.7309644670050761 # (720.0 out of 985.0)
                      end                     else  # if refactor_mle_diff > 0.011450257617980242
                      case when refactor_mle_diff <= 0.025258254259824753 then
                        case when refactor_mle_diff <= 0.0214120764285326 then
                          case when refactor_mle_diff <= 0.01483981590718031 then
                             return 0.6097883597883598 # (461.0 out of 756.0)
                          else  # if refactor_mle_diff > 0.01483981590718031
                             return 0.6826086956521739 # (785.0 out of 1150.0)
                          end                         else  # if refactor_mle_diff > 0.0214120764285326
                           return 0.5984943538268507 # (477.0 out of 797.0)
                        end                       else  # if refactor_mle_diff > 0.025258254259824753
                         return 0.7043363994743759 # (536.0 out of 761.0)
                      end                     end                   else  # if message_length_avg_diff > 18.23333168029785
                    case when message_length_avg_diff <= 46.54180908203125 then
                       return 0.5754716981132075 # (732.0 out of 1272.0)
                    else  # if message_length_avg_diff > 46.54180908203125
                       return 0.6581196581196581 # (539.0 out of 819.0)
                    end                   end                 else  # if refactor_mle_diff > 0.030018712393939495
                  case when commit_hours_diff <= 7.5 then
                    case when message_length_avg_diff <= 42.245370864868164 then
                      case when message_length_avg_diff <= 26.870095252990723 then
                        case when refactor_mle_diff <= 0.08152759075164795 then
                          case when refactor_mle_diff <= 0.07441959157586098 then
                            case when commit_hours_diff <= 3.5 then
                              case when refactor_mle_diff <= 0.04924698546528816 then
                                case when refactor_mle_diff <= 0.04214698262512684 then
                                  case when refactor_mle_diff <= 0.035452015697956085 then
                                     return 0.6442953020134228 # (480.0 out of 745.0)
                                  else  # if refactor_mle_diff > 0.035452015697956085
                                     return 0.5785036880927292 # (549.0 out of 949.0)
                                  end                                 else  # if refactor_mle_diff > 0.04214698262512684
                                   return 0.647887323943662 # (552.0 out of 852.0)
                                end                               else  # if refactor_mle_diff > 0.04924698546528816
                                case when message_length_avg_diff <= 3.453497886657715 then
                                   return 0.6096654275092936 # (820.0 out of 1345.0)
                                else  # if message_length_avg_diff > 3.453497886657715
                                  case when message_length_avg_diff <= 9.980236053466797 then
                                     return 0.5197044334975369 # (422.0 out of 812.0)
                                  else  # if message_length_avg_diff > 9.980236053466797
                                     return 0.5855263157894737 # (445.0 out of 760.0)
                                  end                                 end                               end                             else  # if commit_hours_diff > 3.5
                              case when refactor_mle_diff <= 0.05052131228148937 then
                                 return 0.6111111111111112 # (495.0 out of 810.0)
                              else  # if refactor_mle_diff > 0.05052131228148937
                                 return 0.6547756041426928 # (569.0 out of 869.0)
                              end                             end                           else  # if refactor_mle_diff > 0.07441959157586098
                             return 0.6694214876033058 # (567.0 out of 847.0)
                          end                         else  # if refactor_mle_diff > 0.08152759075164795
                          case when commit_hours_diff <= 0.5 then
                             return 0.5335276967930029 # (549.0 out of 1029.0)
                          else  # if commit_hours_diff > 0.5
                            case when message_length_avg_diff <= 1.862521469593048 then
                               return 0.6076051779935275 # (751.0 out of 1236.0)
                            else  # if message_length_avg_diff > 1.862521469593048
                              case when message_length_avg_diff <= 9.129759311676025 then
                                 return 0.5364238410596026 # (567.0 out of 1057.0)
                              else  # if message_length_avg_diff > 9.129759311676025
                                 return 0.6059544658493871 # (692.0 out of 1142.0)
                              end                             end                           end                         end                       else  # if message_length_avg_diff > 26.870095252990723
                         return 0.6819787985865724 # (772.0 out of 1132.0)
                      end                     else  # if message_length_avg_diff > 42.245370864868164
                      case when message_length_avg_diff <= 78.95684814453125 then
                         return 0.5286195286195287 # (785.0 out of 1485.0)
                      else  # if message_length_avg_diff > 78.95684814453125
                        case when message_length_avg_diff <= 137.88538360595703 then
                           return 0.6311970979443773 # (522.0 out of 827.0)
                        else  # if message_length_avg_diff > 137.88538360595703
                           return 0.5523329129886507 # (438.0 out of 793.0)
                        end                       end                     end                   else  # if commit_hours_diff > 7.5
                     return 0.6539657853810265 # (841.0 out of 1286.0)
                  end                 end               end             end           end         else  # if refactor_mle_diff > 0.12752456963062286
          case when commit_hours_diff <= 2.5 then
            case when refactor_mle_diff <= 0.24335778504610062 then
              case when message_length_avg_diff <= 0.8507325947284698 then
                case when message_length_avg_diff <= -14.52962064743042 then
                   return 0.5171202809482002 # (589.0 out of 1139.0)
                else  # if message_length_avg_diff > -14.52962064743042
                   return 0.42867811799850636 # (574.0 out of 1339.0)
                end               else  # if message_length_avg_diff > 0.8507325947284698
                case when commit_hours_diff <= 1.5 then
                  case when refactor_mle_diff <= 0.15850389748811722 then
                     return 0.4685767097966728 # (507.0 out of 1082.0)
                  else  # if refactor_mle_diff > 0.15850389748811722
                     return 0.5466155810983397 # (856.0 out of 1566.0)
                  end                 else  # if commit_hours_diff > 1.5
                   return 0.5944558521560575 # (579.0 out of 974.0)
                end               end             else  # if refactor_mle_diff > 0.24335778504610062
              case when message_length_avg_diff <= -0.12402597814798355 then
                 return 0.42162615255658004 # (503.0 out of 1193.0)
              else  # if message_length_avg_diff > -0.12402597814798355
                case when message_length_avg_diff <= 47.66434860229492 then
                   return 0.4947569113441373 # (519.0 out of 1049.0)
                else  # if message_length_avg_diff > 47.66434860229492
                   return 0.4314079422382672 # (478.0 out of 1108.0)
                end               end             end           else  # if commit_hours_diff > 2.5
            case when message_length_avg_diff <= -5.693174839019775 then
              case when refactor_mle_diff <= 0.23875559121370316 then
                case when refactor_mle_diff <= 0.16774052381515503 then
                   return 0.5201421800947867 # (439.0 out of 844.0)
                else  # if refactor_mle_diff > 0.16774052381515503
                   return 0.6388101983002833 # (451.0 out of 706.0)
                end               else  # if refactor_mle_diff > 0.23875559121370316
                 return 0.4256410256410256 # (415.0 out of 975.0)
              end             else  # if message_length_avg_diff > -5.693174839019775
              case when commit_hours_diff <= 8.5 then
                case when refactor_mle_diff <= 0.2215597927570343 then
                  case when refactor_mle_diff <= 0.17189786583185196 then
                    case when message_length_avg_diff <= 17.362048149108887 then
                       return 0.5783132530120482 # (528.0 out of 913.0)
                    else  # if message_length_avg_diff > 17.362048149108887
                       return 0.5252774352651048 # (426.0 out of 811.0)
                    end                   else  # if refactor_mle_diff > 0.17189786583185196
                     return 0.6567299006323396 # (727.0 out of 1107.0)
                  end                 else  # if refactor_mle_diff > 0.2215597927570343
                  case when message_length_avg_diff <= 59.81038856506348 then
                     return 0.5072992700729927 # (695.0 out of 1370.0)
                  else  # if message_length_avg_diff > 59.81038856506348
                     return 0.5827900912646675 # (447.0 out of 767.0)
                  end                 end               else  # if commit_hours_diff > 8.5
                 return 0.6499416569428238 # (557.0 out of 857.0)
              end             end           end         end       end     end   end )