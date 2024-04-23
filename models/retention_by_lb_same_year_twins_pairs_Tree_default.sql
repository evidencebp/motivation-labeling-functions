create or replace function Tree_default (popularity_group_code int64, high_refactor_y int64, high_message_length_x int64, high_hours_x int64, dev_group_code int64, year int64, language_group int64, License Type_code int64, high_refactor_x int64, age_group_code int64, employee_code int64, high_hours_y int64, high_message_length_y int64) as (
  case when high_hours_x <= 0.5 then
    case when high_hours_y <= 0.5 then
      case when high_message_length_x <= 0.5 then
        case when popularity_group_code <= 1.5 then
          case when dev_group_code <= 2.5 then
            case when License Type_code <= 6.0 then
              case when language_group <= 0.5 then
                case when age_group_code <= 1.5 then
                  case when high_message_length_y <= 0.5 then
                    case when dev_group_code <= 1.5 then
                       return 0.6 # (6.0 out of 10.0)
                    else  # if dev_group_code > 1.5
                      case when year <= 2020.5 then
                        case when high_refactor_y <= 0.5 then
                          case when year <= 2019.0 then
                             return 0.5 # (1.0 out of 2.0)
                          else  # if year > 2019.0
                             return 0.5076923076923077 # (33.0 out of 65.0)
                          end                         else  # if high_refactor_y > 0.5
                           return 0.5 # (1.0 out of 2.0)
                        end                       else  # if year > 2020.5
                         return 0.5714285714285714 # (4.0 out of 7.0)
                      end                     end                   else  # if high_message_length_y > 0.5
                    case when year <= 2018.0 then
                       return 0.0 # (0.0 out of 1.0)
                    else  # if year > 2018.0
                       return 1.0 # (469.0 out of 469.0)
                    end                   end                 else  # if age_group_code > 1.5
                  case when high_message_length_y <= 0.5 then
                    case when License Type_code <= 3.5 then
                      case when language_group <= -0.5 then
                        case when popularity_group_code <= 0.5 then
                           return 0.5038759689922481 # (325.0 out of 645.0)
                        else  # if popularity_group_code > 0.5
                          case when year <= 2019.0 then
                             return 0.4962962962962963 # (268.0 out of 540.0)
                          else  # if year > 2019.0
                            case when year <= 2020.5 then
                              case when License Type_code <= 1.5 then
                                 return 0.5 # (1.0 out of 2.0)
                              else  # if License Type_code > 1.5
                                 return 0.5 # (1.0 out of 2.0)
                              end                             else  # if year > 2020.5
                               return 0.49899396378269617 # (248.0 out of 497.0)
                            end                           end                         end                       else  # if language_group > -0.5
                         return 0.0 # (0.0 out of 1.0)
                      end                     else  # if License Type_code > 3.5
                       return 1.0 # (1.0 out of 1.0)
                    end                   else  # if high_message_length_y > 0.5
                    case when age_group_code <= 2.5 then
                      case when year <= 2019.0 then
                         return 0.0 # (0.0 out of 2.0)
                      else  # if year > 2019.0
                         return 0.30097087378640774 # (155.0 out of 515.0)
                      end                     else  # if age_group_code > 2.5
                       return 0.0 # (0.0 out of 115.0)
                    end                   end                 end               else  # if language_group > 0.5
                case when year <= 2020.5 then
                  case when high_message_length_y <= 0.5 then
                    case when language_group <= 1.5 then
                      case when year <= 2017.0 then
                         return 0.5 # (4.0 out of 8.0)
                      else  # if year > 2017.0
                         return 0.5 # (5.0 out of 10.0)
                      end                     else  # if language_group > 1.5
                       return 0.5 # (17.0 out of 34.0)
                    end                   else  # if high_message_length_y > 0.5
                     return 0.0 # (0.0 out of 1.0)
                  end                 else  # if year > 2020.5
                   return 1.0 # (444.0 out of 444.0)
                end               end             else  # if License Type_code > 6.0
              case when high_message_length_y <= 0.5 then
                case when year <= 2016.5 then
                  case when dev_group_code <= 1.5 then
                     return 0.48717948717948717 # (19.0 out of 39.0)
                  else  # if dev_group_code > 1.5
                    case when popularity_group_code <= 0.5 then
                       return 1.0 # (1.0 out of 1.0)
                    else  # if popularity_group_code > 0.5
                       return 0.631578947368421 # (12.0 out of 19.0)
                    end                   end                 else  # if year > 2016.5
                  case when age_group_code <= 0.5 then
                     return 0.6666666666666666 # (2.0 out of 3.0)
                  else  # if age_group_code > 0.5
                    case when popularity_group_code <= 0.5 then
                      case when year <= 2018.5 then
                         return 0.5217391304347826 # (24.0 out of 46.0)
                      else  # if year > 2018.5
                        case when dev_group_code <= 1.5 then
                           return 0.4578313253012048 # (38.0 out of 83.0)
                        else  # if dev_group_code > 1.5
                          case when year <= 2019.5 then
                             return 0.47058823529411764 # (8.0 out of 17.0)
                          else  # if year > 2019.5
                             return 0.5 # (3.0 out of 6.0)
                          end                         end                       end                     else  # if popularity_group_code > 0.5
                      case when language_group <= 0.5 then
                        case when language_group <= -0.5 then
                          case when age_group_code <= 1.5 then
                            case when year <= 2017.5 then
                               return 0.5 # (18.0 out of 36.0)
                            else  # if year > 2017.5
                               return 0.5333333333333333 # (8.0 out of 15.0)
                            end                           else  # if age_group_code > 1.5
                            case when dev_group_code <= 1.5 then
                               return 0.48148148148148145 # (26.0 out of 54.0)
                            else  # if dev_group_code > 1.5
                              case when year <= 2019.5 then
                                 return 0.4925373134328358 # (198.0 out of 402.0)
                              else  # if year > 2019.5
                                 return 0.5 # (2.0 out of 4.0)
                              end                             end                           end                         else  # if language_group > -0.5
                           return 0.42857142857142855 # (3.0 out of 7.0)
                        end                       else  # if language_group > 0.5
                        case when year <= 2017.5 then
                           return 0.5161290322580645 # (32.0 out of 62.0)
                        else  # if year > 2017.5
                          case when dev_group_code <= 1.5 then
                            case when year <= 2019.0 then
                               return 0.5294117647058824 # (9.0 out of 17.0)
                            else  # if year > 2019.0
                               return 0.4975124378109453 # (100.0 out of 201.0)
                            end                           else  # if dev_group_code > 1.5
                            case when year <= 2019.5 then
                              case when year <= 2018.5 then
                                 return 0.5028248587570622 # (178.0 out of 354.0)
                              else  # if year > 2018.5
                                 return 0.42857142857142855 # (3.0 out of 7.0)
                              end                             else  # if year > 2019.5
                              case when License Type_code <= 9.0 then
                                 return 0.5277777777777778 # (38.0 out of 72.0)
                              else  # if License Type_code > 9.0
                                 return 0.5 # (1.0 out of 2.0)
                              end                             end                           end                         end                       end                     end                   end                 end               else  # if high_message_length_y > 0.5
                 return 0.0 # (0.0 out of 592.0)
              end             end           else  # if dev_group_code > 2.5
            case when high_message_length_y <= 0.5 then
              case when high_refactor_x <= 0.5 then
                 return 0.0 # (0.0 out of 1.0)
              else  # if high_refactor_x > 0.5
                case when language_group <= 1.5 then
                  case when year <= 2017.0 then
                     return 0.5 # (1.0 out of 2.0)
                  else  # if year > 2017.0
                     return 1.0 # (1.0 out of 1.0)
                  end                 else  # if language_group > 1.5
                   return 0.0 # (0.0 out of 1.0)
                end               end             else  # if high_message_length_y > 0.5
               return 1.0 # (17285.0 out of 17285.0)
            end           end         else  # if popularity_group_code > 1.5
          case when License Type_code <= 4.0 then
            case when high_message_length_y <= 0.5 then
              case when dev_group_code <= 2.5 then
                 return 0.49050632911392406 # (310.0 out of 632.0)
              else  # if dev_group_code > 2.5
                 return 0.5555555555555556 # (5.0 out of 9.0)
              end             else  # if high_message_length_y > 0.5
              case when dev_group_code <= 2.5 then
                 return 1.0 # (440.0 out of 440.0)
              else  # if dev_group_code > 2.5
                case when year <= 2019.5 then
                   return 1.0 # (2.0 out of 2.0)
                else  # if year > 2019.5
                   return 0.0 # (0.0 out of 1.0)
                end               end             end           else  # if License Type_code > 4.0
            case when high_message_length_y <= 0.5 then
              case when high_refactor_x <= 0.5 then
                case when License Type_code <= 8.5 then
                  case when dev_group_code <= 2.5 then
                    case when year <= 2017.5 then
                       return 0.5714285714285714 # (4.0 out of 7.0)
                    else  # if year > 2017.5
                      case when language_group <= 0.0 then
                         return 0.5 # (9.0 out of 18.0)
                      else  # if language_group > 0.0
                         return 0.49387755102040815 # (121.0 out of 245.0)
                      end                     end                   else  # if dev_group_code > 2.5
                    case when year <= 2019.5 then
                      case when language_group <= 0.0 then
                        case when age_group_code <= 2.0 then
                           return 0.47368421052631576 # (9.0 out of 19.0)
                        else  # if age_group_code > 2.0
                           return 0.5 # (5.0 out of 10.0)
                        end                       else  # if language_group > 0.0
                        case when age_group_code <= 1.5 then
                           return 0.5833333333333334 # (7.0 out of 12.0)
                        else  # if age_group_code > 1.5
                           return 0.5169491525423728 # (61.0 out of 118.0)
                        end                       end                     else  # if year > 2019.5
                       return 0.5328467153284672 # (73.0 out of 137.0)
                    end                   end                 else  # if License Type_code > 8.5
                   return 0.0 # (0.0 out of 1.0)
                end               else  # if high_refactor_x > 0.5
                 return 0.0 # (0.0 out of 1.0)
              end             else  # if high_message_length_y > 0.5
              case when age_group_code <= 2.5 then
                case when year <= 2017.0 then
                  case when language_group <= 0.0 then
                     return 0.0 # (0.0 out of 36.0)
                  else  # if language_group > 0.0
                    case when popularity_group_code <= 2.5 then
                       return 0.0 # (0.0 out of 2.0)
                    else  # if popularity_group_code > 2.5
                       return 1.0 # (8.0 out of 8.0)
                    end                   end                 else  # if year > 2017.0
                  case when year <= 2018.5 then
                    case when language_group <= 0.5 then
                       return 1.0 # (4.0 out of 4.0)
                    else  # if language_group > 0.5
                       return 0.0 # (0.0 out of 93.0)
                    end                   else  # if year > 2018.5
                     return 0.0 # (0.0 out of 3485.0)
                  end                 end               else  # if age_group_code > 2.5
                 return 1.0 # (6.0 out of 6.0)
              end             end           end         end       else  # if high_message_length_x > 0.5
        case when high_message_length_y <= 0.5 then
          case when popularity_group_code <= 1.5 then
            case when dev_group_code <= 2.5 then
              case when License Type_code <= 5.0 then
                case when age_group_code <= 2.5 then
                  case when age_group_code <= 1.5 then
                    case when year <= 2018.0 then
                       return 1.0 # (2.0 out of 2.0)
                    else  # if year > 2018.0
                       return 0.0 # (0.0 out of 472.0)
                    end                   else  # if age_group_code > 1.5
                    case when language_group <= 0.0 then
                      case when License Type_code <= -0.5 then
                         return 1.0 # (1.0 out of 1.0)
                      else  # if License Type_code > -0.5
                         return 0.6878727634194831 # (346.0 out of 503.0)
                      end                     else  # if language_group > 0.0
                       return 0.0 # (0.0 out of 442.0)
                    end                   end                 else  # if age_group_code > 2.5
                   return 1.0 # (124.0 out of 124.0)
                end               else  # if License Type_code > 5.0
                 return 1.0 # (589.0 out of 589.0)
              end             else  # if dev_group_code > 2.5
               return 0.0 # (0.0 out of 17212.0)
            end           else  # if popularity_group_code > 1.5
            case when License Type_code <= 4.0 then
              case when dev_group_code <= 2.5 then
                 return 0.0 # (0.0 out of 435.0)
              else  # if dev_group_code > 2.5
                case when year <= 2019.5 then
                   return 0.0 # (0.0 out of 2.0)
                else  # if year > 2019.5
                   return 1.0 # (1.0 out of 1.0)
                end               end             else  # if License Type_code > 4.0
              case when age_group_code <= 2.5 then
                case when language_group <= 2.5 then
                  case when year <= 2017.0 then
                    case when language_group <= 0.0 then
                       return 1.0 # (42.0 out of 42.0)
                    else  # if language_group > 0.0
                      case when popularity_group_code <= 2.5 then
                         return 1.0 # (3.0 out of 3.0)
                      else  # if popularity_group_code > 2.5
                         return 0.0 # (0.0 out of 6.0)
                      end                     end                   else  # if year > 2017.0
                    case when year <= 2018.5 then
                      case when language_group <= 0.5 then
                         return 0.0 # (0.0 out of 4.0)
                      else  # if language_group > 0.5
                         return 1.0 # (96.0 out of 96.0)
                      end                     else  # if year > 2018.5
                       return 1.0 # (3464.0 out of 3464.0)
                    end                   end                 else  # if language_group > 2.5
                   return 0.0 # (0.0 out of 1.0)
                end               else  # if age_group_code > 2.5
                 return 0.0 # (0.0 out of 7.0)
              end             end           end         else  # if high_message_length_y > 0.5
          case when high_refactor_x <= 0.5 then
            case when high_refactor_y <= 0.5 then
              case when year <= 2018.5 then
                case when dev_group_code <= 2.5 then
                  case when popularity_group_code <= 1.5 then
                    case when language_group <= 0.0 then
                       return 0.4528301886792453 # (24.0 out of 53.0)
                    else  # if language_group > 0.0
                       return 0.48 # (12.0 out of 25.0)
                    end                   else  # if popularity_group_code > 1.5
                     return 0.4909090909090909 # (54.0 out of 110.0)
                  end                 else  # if dev_group_code > 2.5
                  case when popularity_group_code <= 0.5 then
                    case when License Type_code <= 5.5 then
                      case when age_group_code <= 2.5 then
                        case when year <= 2015.0 then
                           return 0.5 # (1.0 out of 2.0)
                        else  # if year > 2015.0
                           return 0.5 # (4.0 out of 8.0)
                        end                       else  # if age_group_code > 2.5
                         return 0.5 # (1.0 out of 2.0)
                      end                     else  # if License Type_code > 5.5
                       return 0.5 # (1.0 out of 2.0)
                    end                   else  # if popularity_group_code > 0.5
                    case when popularity_group_code <= 1.5 then
                       return 0.0 # (0.0 out of 1.0)
                    else  # if popularity_group_code > 1.5
                      case when year <= 2015.5 then
                         return 0.5 # (1.0 out of 2.0)
                      else  # if year > 2015.5
                        case when popularity_group_code <= 2.5 then
                           return 0.4489795918367347 # (22.0 out of 49.0)
                        else  # if popularity_group_code > 2.5
                           return 0.45161290322580644 # (14.0 out of 31.0)
                        end                       end                     end                   end                 end               else  # if year > 2018.5
                case when language_group <= 3.0 then
                  case when age_group_code <= 0.5 then
                    case when dev_group_code <= 1.5 then
                       return 0.5072933549432739 # (626.0 out of 1234.0)
                    else  # if dev_group_code > 1.5
                      case when language_group <= 0.5 then
                        case when language_group <= -0.5 then
                          case when popularity_group_code <= 0.5 then
                             return 0.4961720743711265 # (1361.0 out of 2743.0)
                          else  # if popularity_group_code > 0.5
                            case when popularity_group_code <= 1.5 then
                               return 0.49784288150897965 # (4962.0 out of 9967.0)
                            else  # if popularity_group_code > 1.5
                              case when year <= 2020.5 then
                                case when License Type_code <= 3.5 then
                                   return 0.4971342383107089 # (1648.0 out of 3315.0)
                                else  # if License Type_code > 3.5
                                   return 0.4727272727272727 # (52.0 out of 110.0)
                                end                               else  # if year > 2020.5
                                 return 0.4980967917346384 # (916.0 out of 1839.0)
                              end                             end                           end                         else  # if language_group > -0.5
                           return 0.5043478260869565 # (638.0 out of 1265.0)
                        end                       else  # if language_group > 0.5
                         return 0.49276672694394213 # (545.0 out of 1106.0)
                      end                     end                   else  # if age_group_code > 0.5
                    case when age_group_code <= 1.5 then
                      case when popularity_group_code <= 1.5 then
                        case when language_group <= 1.5 then
                          case when dev_group_code <= 2.5 then
                            case when year <= 2020.5 then
                              case when License Type_code <= 5.0 then
                                case when License Type_code <= -0.5 then
                                   return 0.5019954389965793 # (3522.0 out of 7016.0)
                                else  # if License Type_code > -0.5
                                  case when License Type_code <= 1.0 then
                                    case when dev_group_code <= 1.5 then
                                       return 0.4966580976863753 # (966.0 out of 1945.0)
                                    else  # if dev_group_code > 1.5
                                       return 0.5 # (1.0 out of 2.0)
                                    end                                   else  # if License Type_code > 1.0
                                     return 0.4923469387755102 # (579.0 out of 1176.0)
                                  end                                 end                               else  # if License Type_code > 5.0
                                case when language_group <= 0.0 then
                                  case when popularity_group_code <= 0.5 then
                                     return 0.5051342812006319 # (1279.0 out of 2532.0)
                                  else  # if popularity_group_code > 0.5
                                    case when dev_group_code <= 1.5 then
                                       return 0.5 # (2529.0 out of 5058.0)
                                    else  # if dev_group_code > 1.5
                                       return 0.5030261505081649 # (8810.0 out of 17514.0)
                                    end                                   end                                 else  # if language_group > 0.0
                                   return 0.5058179329226558 # (2217.0 out of 4383.0)
                                end                               end                             else  # if year > 2020.5
                              case when popularity_group_code <= 0.5 then
                                 return 0.5028557441253264 # (6163.0 out of 12256.0)
                              else  # if popularity_group_code > 0.5
                                case when dev_group_code <= 1.5 then
                                   return 0.5006864988558353 # (9846.0 out of 19665.0)
                                else  # if dev_group_code > 1.5
                                  case when License Type_code <= 1.5 then
                                    case when language_group <= 0.0 then
                                       return 0.5009181405238233 # (5183.0 out of 10347.0)
                                    else  # if language_group > 0.0
                                       return 0.5022123893805309 # (4086.0 out of 8136.0)
                                    end                                   else  # if License Type_code > 1.5
                                    case when License Type_code <= 5.5 then
                                       return 0.501133052767886 # (1548.0 out of 3089.0)
                                    else  # if License Type_code > 5.5
                                       return 0.5011580651733345 # (93475.0 out of 186518.0)
                                    end                                   end                                 end                               end                             end                           else  # if dev_group_code > 2.5
                             return 0.49645390070921985 # (770.0 out of 1551.0)
                          end                         else  # if language_group > 1.5
                          case when dev_group_code <= 1.5 then
                             return 0.49531199482702876 # (1532.0 out of 3093.0)
                          else  # if dev_group_code > 1.5
                            case when License Type_code <= 3.5 then
                              case when License Type_code <= 1.5 then
                                 return 0.4965477560414269 # (1726.0 out of 3476.0)
                              else  # if License Type_code > 1.5
                                 return 0.4965986394557823 # (730.0 out of 1470.0)
                              end                             else  # if License Type_code > 3.5
                               return 0.5044534412955466 # (623.0 out of 1235.0)
                            end                           end                         end                       else  # if popularity_group_code > 1.5
                        case when popularity_group_code <= 2.5 then
                          case when language_group <= 0.0 then
                            case when dev_group_code <= 2.5 then
                              case when year <= 2020.5 then
                                case when License Type_code <= 6.0 then
                                   return 0.498220640569395 # (840.0 out of 1686.0)
                                else  # if License Type_code > 6.0
                                   return 0.5005141765829293 # (6814.0 out of 13614.0)
                                end                               else  # if year > 2020.5
                                case when License Type_code <= 4.0 then
                                   return 0.4990534784666351 # (8436.0 out of 16904.0)
                                else  # if License Type_code > 4.0
                                   return 0.4992121848739496 # (13307.0 out of 26656.0)
                                end                               end                             else  # if dev_group_code > 2.5
                              case when year <= 2020.5 then
                                 return 0.49265274555297756 # (637.0 out of 1293.0)
                              else  # if year > 2020.5
                                 return 0.5 # (1.0 out of 2.0)
                              end                             end                           else  # if language_group > 0.0
                            case when dev_group_code <= 2.5 then
                              case when License Type_code <= 4.0 then
                                 return 0.4968332160450387 # (2118.0 out of 4263.0)
                              else  # if License Type_code > 4.0
                                 return 0.49739765400450553 # (12806.0 out of 25746.0)
                              end                             else  # if dev_group_code > 2.5
                              case when language_group <= 1.5 then
                                 return 0.5035192203573362 # (930.0 out of 1847.0)
                              else  # if language_group > 1.5
                                 return 0.49783116449783116 # (1492.0 out of 2997.0)
                              end                             end                           end                         else  # if popularity_group_code > 2.5
                          case when year <= 2020.5 then
                            case when language_group <= 0.5 then
                              case when language_group <= -0.5 then
                                 return 0.4824561403508772 # (55.0 out of 114.0)
                              else  # if language_group > -0.5
                                 return 0.5027573529411765 # (547.0 out of 1088.0)
                              end                             else  # if language_group > 0.5
                              case when year <= 2019.5 then
                                 return 0.5055762081784386 # (136.0 out of 269.0)
                              else  # if year > 2019.5
                                 return 0.48541919805589306 # (799.0 out of 1646.0)
                              end                             end                           else  # if year > 2020.5
                             return 0.504857678540992 # (2962.0 out of 5867.0)
                          end                         end                       end                     else  # if age_group_code > 1.5
                      case when License Type_code <= -0.5 then
                        case when year <= 2020.5 then
                          case when age_group_code <= 2.5 then
                             return 0.5047830543218312 # (2955.0 out of 5854.0)
                          else  # if age_group_code > 2.5
                             return 0.5017367811655732 # (1300.0 out of 2591.0)
                          end                         else  # if year > 2020.5
                           return 0.4957569121270189 # (1811.0 out of 3653.0)
                        end                       else  # if License Type_code > -0.5
                        case when dev_group_code <= 2.5 then
                          case when year <= 2019.5 then
                            case when dev_group_code <= 1.5 then
                               return 0.5085714285714286 # (267.0 out of 525.0)
                            else  # if dev_group_code > 1.5
                               return 0.4926517571884984 # (771.0 out of 1565.0)
                            end                           else  # if year > 2019.5
                            case when popularity_group_code <= 1.5 then
                              case when License Type_code <= 1.0 then
                                case when popularity_group_code <= 0.5 then
                                  case when dev_group_code <= 1.5 then
                                    case when language_group <= 0.5 then
                                       return 0.4965034965034965 # (497.0 out of 1001.0)
                                    else  # if language_group > 0.5
                                       return 0.49460431654676257 # (1100.0 out of 2224.0)
                                    end                                   else  # if dev_group_code > 1.5
                                     return 0.479951397326853 # (395.0 out of 823.0)
                                  end                                 else  # if popularity_group_code > 0.5
                                  case when language_group <= 0.5 then
                                    case when language_group <= -0.5 then
                                      case when year <= 2020.5 then
                                        case when age_group_code <= 2.5 then
                                           return 0.5006903322799374 # (32638.0 out of 65186.0)
                                        else  # if age_group_code > 2.5
                                           return 0.5025217790004585 # (1096.0 out of 2181.0)
                                        end                                       else  # if year > 2020.5
                                         return 0.4999180981293613 # (45779.0 out of 91573.0)
                                      end                                     else  # if language_group > -0.5
                                       return 0.5037658092937332 # (3545.0 out of 7037.0)
                                    end                                   else  # if language_group > 0.5
                                    case when language_group <= 1.5 then
                                       return 0.49915479971314414 # (19489.0 out of 39044.0)
                                    else  # if language_group > 1.5
                                      case when age_group_code <= 2.5 then
                                        case when year <= 2020.5 then
                                           return 0.49990128331688055 # (5064.0 out of 10130.0)
                                        else  # if year > 2020.5
                                           return 0.5004718518899813 # (29168.0 out of 58281.0)
                                        end                                       else  # if age_group_code > 2.5
                                         return 0.4985234899328859 # (3714.0 out of 7450.0)
                                      end                                     end                                   end                                 end                               else  # if License Type_code > 1.0
                                case when License Type_code <= 3.0 then
                                  case when language_group <= 0.5 then
                                    case when year <= 2020.5 then
                                       return 0.49748743718592964 # (1287.0 out of 2587.0)
                                    else  # if year > 2020.5
                                       return 0.49682163779134986 # (3986.0 out of 8023.0)
                                    end                                   else  # if language_group > 0.5
                                    case when popularity_group_code <= 0.5 then
                                       return 0.4959824689554419 # (679.0 out of 1369.0)
                                    else  # if popularity_group_code > 0.5
                                       return 0.500343878954608 # (1455.0 out of 2908.0)
                                    end                                   end                                 else  # if License Type_code > 3.0
                                  case when language_group <= -0.5 then
                                    case when License Type_code <= 6.0 then
                                       return 0.4904610492845787 # (1234.0 out of 2516.0)
                                    else  # if License Type_code > 6.0
                                      case when dev_group_code <= 1.5 then
                                        case when age_group_code <= 2.5 then
                                          case when year <= 2020.5 then
                                            case when popularity_group_code <= 0.5 then
                                               return 0.5000979377116154 # (17872.0 out of 35737.0)
                                            else  # if popularity_group_code > 0.5
                                               return 0.4992023633677991 # (8449.0 out of 16925.0)
                                            end                                           else  # if year > 2020.5
                                             return 0.5002395727424651 # (42805.0 out of 85569.0)
                                          end                                         else  # if age_group_code > 2.5
                                          case when year <= 2020.5 then
                                            case when popularity_group_code <= 0.5 then
                                               return 0.5040387722132472 # (624.0 out of 1238.0)
                                            else  # if popularity_group_code > 0.5
                                               return 0.5026704366949418 # (1600.0 out of 3183.0)
                                            end                                           else  # if year > 2020.5
                                             return 0.5006273525721455 # (9177.0 out of 18331.0)
                                          end                                         end                                       else  # if dev_group_code > 1.5
                                        case when year <= 2020.5 then
                                          case when popularity_group_code <= 0.5 then
                                             return 0.49807220469681035 # (1421.0 out of 2853.0)
                                          else  # if popularity_group_code > 0.5
                                            case when age_group_code <= 2.5 then
                                               return 0.4989245036848972 # (28298.0 out of 56718.0)
                                            else  # if age_group_code > 2.5
                                               return 0.5 # (50.0 out of 100.0)
                                            end                                           end                                         else  # if year > 2020.5
                                           return 0.4996515907061821 # (137673.0 out of 275538.0)
                                        end                                       end                                     end                                   else  # if language_group > -0.5
                                    case when age_group_code <= 2.5 then
                                      case when License Type_code <= 6.0 then
                                        case when language_group <= 1.0 then
                                           return 0.5119887165021156 # (363.0 out of 709.0)
                                        else  # if language_group > 1.0
                                          case when dev_group_code <= 1.5 then
                                             return 0.5012674271229405 # (3164.0 out of 6312.0)
                                          else  # if dev_group_code > 1.5
                                             return 0.49510763209393344 # (253.0 out of 511.0)
                                          end                                         end                                       else  # if License Type_code > 6.0
                                        case when popularity_group_code <= 0.5 then
                                          case when year <= 2020.5 then
                                            case when language_group <= 0.5 then
                                               return 0.49867574725690506 # (1318.0 out of 2643.0)
                                            else  # if language_group > 0.5
                                               return 0.4978624174115818 # (1281.0 out of 2573.0)
                                            end                                           else  # if year > 2020.5
                                            case when language_group <= 1.5 then
                                               return 0.49997819355401457 # (11464.0 out of 22929.0)
                                            else  # if language_group > 1.5
                                               return 0.5012285012285013 # (1836.0 out of 3663.0)
                                            end                                           end                                         else  # if popularity_group_code > 0.5
                                          case when dev_group_code <= 1.5 then
                                            case when language_group <= 1.5 then
                                               return 0.49587534372135655 # (541.0 out of 1091.0)
                                            else  # if language_group > 1.5
                                               return 0.5049723756906077 # (1371.0 out of 2715.0)
                                            end                                           else  # if dev_group_code > 1.5
                                            case when language_group <= 1.5 then
                                              case when language_group <= 0.5 then
                                                 return 0.5012079947287503 # (4564.0 out of 9106.0)
                                              else  # if language_group > 0.5
                                                 return 0.5007011928527825 # (30348.0 out of 60611.0)
                                              end                                             else  # if language_group > 1.5
                                              case when year <= 2020.5 then
                                                 return 0.49560463121783876 # (4623.0 out of 9328.0)
                                              else  # if year > 2020.5
                                                 return 0.5010759166810123 # (11643.0 out of 23236.0)
                                              end                                             end                                           end                                         end                                       end                                     else  # if age_group_code > 2.5
                                      case when popularity_group_code <= 0.5 then
                                         return 0.5034110289937465 # (1771.0 out of 3518.0)
                                      else  # if popularity_group_code > 0.5
                                        case when language_group <= 1.0 then
                                           return 0.4969450101832994 # (488.0 out of 982.0)
                                        else  # if language_group > 1.0
                                           return 0.4957997899894995 # (2833.0 out of 5714.0)
                                        end                                       end                                     end                                   end                                 end                               end                             else  # if popularity_group_code > 1.5
                              case when License Type_code <= 4.0 then
                                 return 0.4928989139515455 # (590.0 out of 1197.0)
                              else  # if License Type_code > 4.0
                                case when language_group <= 0.0 then
                                  case when year <= 2020.5 then
                                    case when age_group_code <= 2.5 then
                                       return 0.49992304355734657 # (35729.0 out of 71469.0)
                                    else  # if age_group_code > 2.5
                                       return 0.49801113762927607 # (626.0 out of 1257.0)
                                    end                                   else  # if year > 2020.5
                                     return 0.5003664234735078 # (107195.0 out of 214233.0)
                                  end                                 else  # if language_group > 0.0
                                  case when year <= 2020.5 then
                                    case when age_group_code <= 2.5 then
                                      case when language_group <= 1.5 then
                                         return 0.5001981767736822 # (1262.0 out of 2523.0)
                                      else  # if language_group > 1.5
                                         return 0.5023961661341853 # (1258.0 out of 2504.0)
                                      end                                     else  # if age_group_code > 2.5
                                       return 0.5047584187408491 # (1379.0 out of 2732.0)
                                    end                                   else  # if year > 2020.5
                                     return 0.49762206721623337 # (12556.0 out of 25232.0)
                                  end                                 end                               end                             end                           end                         else  # if dev_group_code > 2.5
                          case when age_group_code <= 2.5 then
                            case when popularity_group_code <= 2.5 then
                              case when License Type_code <= 5.5 then
                                case when year <= 2020.5 then
                                   return 0.5057859209257474 # (1049.0 out of 2074.0)
                                else  # if year > 2020.5
                                  case when popularity_group_code <= 1.5 then
                                    case when popularity_group_code <= 0.5 then
                                       return 0.5 # (2.0 out of 4.0)
                                    else  # if popularity_group_code > 0.5
                                       return 0.5 # (2.0 out of 4.0)
                                    end                                   else  # if popularity_group_code > 1.5
                                     return 0.49851775667009496 # (8240.0 out of 16529.0)
                                  end                                 end                               else  # if License Type_code > 5.5
                                case when popularity_group_code <= 1.5 then
                                  case when year <= 2020.5 then
                                     return 0.5002227369921597 # (11229.0 out of 22448.0)
                                  else  # if year > 2020.5
                                     return 1.0 # (1.0 out of 1.0)
                                  end                                 else  # if popularity_group_code > 1.5
                                  case when year <= 2020.5 then
                                     return 0.5016707703130496 # (5705.0 out of 11372.0)
                                  else  # if year > 2020.5
                                     return 0.5010051463493085 # (12461.0 out of 24872.0)
                                  end                                 end                               end                             else  # if popularity_group_code > 2.5
                              case when License Type_code <= 4.0 then
                                case when year <= 2020.5 then
                                   return 0.5179760319573902 # (389.0 out of 751.0)
                                else  # if year > 2020.5
                                   return 0.5045461796139735 # (3163.0 out of 6269.0)
                                end                               else  # if License Type_code > 4.0
                                case when language_group <= 0.0 then
                                   return 0.5008046817849305 # (3423.0 out of 6835.0)
                                else  # if language_group > 0.0
                                   return 0.49564586357039186 # (683.0 out of 1378.0)
                                end                               end                             end                           else  # if age_group_code > 2.5
                            case when language_group <= 0.0 then
                              case when year <= 2020.5 then
                                 return 0.49662783568362967 # (810.0 out of 1631.0)
                              else  # if year > 2020.5
                                 return 0.4987463207238635 # (4575.0 out of 9173.0)
                              end                             else  # if language_group > 0.0
                               return 0.49372197309417043 # (1101.0 out of 2230.0)
                            end                           end                         end                       end                     end                   end                 else  # if language_group > 3.0
                  case when age_group_code <= 0.5 then
                     return 0.5059311981020166 # (853.0 out of 1686.0)
                  else  # if age_group_code > 0.5
                    case when popularity_group_code <= 0.5 then
                      case when age_group_code <= 1.5 then
                         return 0.5043304463690873 # (757.0 out of 1501.0)
                      else  # if age_group_code > 1.5
                         return 0.5014279885760914 # (1229.0 out of 2451.0)
                      end                     else  # if popularity_group_code > 0.5
                      case when popularity_group_code <= 2.5 then
                        case when dev_group_code <= 1.5 then
                          case when age_group_code <= 2.0 then
                             return 0.4578313253012048 # (38.0 out of 83.0)
                          else  # if age_group_code > 2.0
                             return 0.49351451513279804 # (799.0 out of 1619.0)
                          end                         else  # if dev_group_code > 1.5
                          case when dev_group_code <= 2.5 then
                            case when year <= 2020.5 then
                               return 0.4971650253655625 # (1666.0 out of 3351.0)
                            else  # if year > 2020.5
                               return 0.49559932942162616 # (4730.0 out of 9544.0)
                            end                           else  # if dev_group_code > 2.5
                             return 0.4936998854524628 # (431.0 out of 873.0)
                          end                         end                       else  # if popularity_group_code > 2.5
                         return 0.4900662251655629 # (666.0 out of 1359.0)
                      end                     end                   end                 end               end             else  # if high_refactor_y > 0.5
              case when License Type_code <= 4.0 then
                 return 0.0 # (0.0 out of 3.0)
              else  # if License Type_code > 4.0
                case when age_group_code <= 0.5 then
                   return 1.0 # (1518.0 out of 1518.0)
                else  # if age_group_code > 0.5
                  case when age_group_code <= 1.5 then
                     return 0.0 # (0.0 out of 4.0)
                  else  # if age_group_code > 1.5
                     return 1.0 # (12.0 out of 12.0)
                  end                 end               end             end           else  # if high_refactor_x > 0.5
            case when age_group_code <= 0.5 then
               return 0.0 # (0.0 out of 1524.0)
            else  # if age_group_code > 0.5
              case when age_group_code <= 1.5 then
                case when language_group <= 1.5 then
                   return 0.0 # (0.0 out of 1.0)
                else  # if language_group > 1.5
                   return 1.0 # (5.0 out of 5.0)
                end               else  # if age_group_code > 1.5
                case when popularity_group_code <= 2.5 then
                   return 0.0 # (0.0 out of 10.0)
                else  # if popularity_group_code > 2.5
                   return 1.0 # (1.0 out of 1.0)
                end               end             end           end         end       end     else  # if high_hours_y > 0.5
      case when language_group <= 0.5 then
        case when year <= 2020.5 then
          case when age_group_code <= 1.5 then
            case when dev_group_code <= 2.5 then
              case when popularity_group_code <= 1.5 then
                case when License Type_code <= 4.0 then
                  case when popularity_group_code <= 0.5 then
                     return 0.0 # (0.0 out of 34.0)
                  else  # if popularity_group_code > 0.5
                     return 1.0 # (1501.0 out of 1501.0)
                  end                 else  # if License Type_code > 4.0
                  case when age_group_code <= 0.5 then
                     return 1.0 # (1417.0 out of 1417.0)
                  else  # if age_group_code > 0.5
                    case when language_group <= -0.5 then
                      case when dev_group_code <= 1.5 then
                        case when popularity_group_code <= 0.5 then
                           return 0.34120734908136485 # (650.0 out of 1905.0)
                        else  # if popularity_group_code > 0.5
                           return 1.0 # (438.0 out of 438.0)
                        end                       else  # if dev_group_code > 1.5
                        case when year <= 2019.5 then
                          case when year <= 2016.5 then
                             return 0.0 # (0.0 out of 7.0)
                          else  # if year > 2016.5
                            case when year <= 2017.5 then
                               return 1.0 # (21.0 out of 21.0)
                            else  # if year > 2017.5
                              case when year <= 2018.5 then
                                 return 0.0 # (0.0 out of 6.0)
                              else  # if year > 2018.5
                                 return 1.0 # (8.0 out of 8.0)
                              end                             end                           end                         else  # if year > 2019.5
                           return 0.2720966484801247 # (3491.0 out of 12830.0)
                        end                       end                     else  # if language_group > -0.5
                      case when high_message_length_y <= 0.5 then
                         return 1.0 # (2.0 out of 2.0)
                      else  # if high_message_length_y > 0.5
                         return 0.0 # (0.0 out of 1546.0)
                      end                     end                   end                 end               else  # if popularity_group_code > 1.5
                case when age_group_code <= 0.5 then
                   return 0.0 # (0.0 out of 983.0)
                else  # if age_group_code > 0.5
                   return 1.0 # (4783.0 out of 4783.0)
                end               end             else  # if dev_group_code > 2.5
              case when popularity_group_code <= 2.5 then
                case when License Type_code <= 4.0 then
                   return 1.0 # (418.0 out of 418.0)
                else  # if License Type_code > 4.0
                  case when year <= 2019.0 then
                     return 1.0 # (3.0 out of 3.0)
                  else  # if year > 2019.0
                     return 0.0 # (0.0 out of 1789.0)
                  end                 end               else  # if popularity_group_code > 2.5
                case when License Type_code <= 3.5 then
                   return 0.0 # (0.0 out of 2915.0)
                else  # if License Type_code > 3.5
                  case when year <= 2019.0 then
                     return 0.0 # (0.0 out of 123.0)
                  else  # if year > 2019.0
                     return 0.009929078014184398 # (7.0 out of 705.0)
                  end                 end               end             end           else  # if age_group_code > 1.5
            case when License Type_code <= 4.0 then
              case when popularity_group_code <= 1.5 then
                case when language_group <= -0.5 then
                  case when popularity_group_code <= 0.5 then
                     return 1.0 # (75.0 out of 75.0)
                  else  # if popularity_group_code > 0.5
                    case when License Type_code <= -0.5 then
                       return 0.38849828736253833 # (2155.0 out of 5547.0)
                    else  # if License Type_code > -0.5
                      case when high_message_length_y <= 0.5 then
                         return 0.0 # (0.0 out of 2.0)
                      else  # if high_message_length_y > 0.5
                         return 0.36363636363636365 # (2948.0 out of 8107.0)
                      end                     end                   end                 else  # if language_group > -0.5
                   return 0.0 # (0.0 out of 456.0)
                end               else  # if popularity_group_code > 1.5
                 return 1.0 # (841.0 out of 841.0)
              end             else  # if License Type_code > 4.0
              case when language_group <= -0.5 then
                case when popularity_group_code <= 1.5 then
                  case when age_group_code <= 2.5 then
                    case when dev_group_code <= 1.5 then
                      case when popularity_group_code <= 0.5 then
                        case when high_message_length_y <= 0.5 then
                           return 1.0 # (1640.0 out of 1640.0)
                        else  # if high_message_length_y > 0.5
                           return 0.9909390444810544 # (1203.0 out of 1214.0)
                        end                       else  # if popularity_group_code > 0.5
                        case when year <= 2019.5 then
                           return 1.0 # (225.0 out of 225.0)
                        else  # if year > 2019.5
                           return 0.5776683775007856 # (5515.0 out of 9547.0)
                        end                       end                     else  # if dev_group_code > 1.5
                      case when high_message_length_y <= 0.5 then
                        case when year <= 2018.0 then
                           return 1.0 # (19.0 out of 19.0)
                        else  # if year > 2018.0
                           return 0.0 # (0.0 out of 83.0)
                        end                       else  # if high_message_length_y > 0.5
                         return 1.0 # (18562.0 out of 18562.0)
                      end                     end                   else  # if age_group_code > 2.5
                    case when dev_group_code <= 2.0 then
                       return 0.4542829643888354 # (944.0 out of 2078.0)
                    else  # if dev_group_code > 2.0
                       return 0.0 # (0.0 out of 966.0)
                    end                   end                 else  # if popularity_group_code > 1.5
                  case when high_message_length_y <= 0.5 then
                     return 1.0 # (3984.0 out of 3984.0)
                  else  # if high_message_length_y > 0.5
                    case when dev_group_code <= 2.5 then
                      case when age_group_code <= 2.5 then
                         return 0.4245131058720164 # (5798.0 out of 13658.0)
                      else  # if age_group_code > 2.5
                         return 1.0 # (891.0 out of 891.0)
                      end                     else  # if dev_group_code > 2.5
                       return 1.0 # (1331.0 out of 1331.0)
                    end                   end                 end               else  # if language_group > -0.5
                case when high_message_length_y <= 0.5 then
                   return 1.0 # (1.0 out of 1.0)
                else  # if high_message_length_y > 0.5
                   return 0.31881243063263043 # (1149.0 out of 3604.0)
                end               end             end           end         else  # if year > 2020.5
          case when high_message_length_x <= 0.5 then
            case when dev_group_code <= 2.5 then
              case when age_group_code <= 1.5 then
                 return 1.0 # (212.0 out of 212.0)
              else  # if age_group_code > 1.5
                case when License Type_code <= 4.0 then
                  case when high_message_length_y <= 0.5 then
                     return 1.0 # (197.0 out of 197.0)
                  else  # if high_message_length_y > 0.5
                     return 0.5941499085923218 # (325.0 out of 547.0)
                  end                 else  # if License Type_code > 4.0
                   return 0.0 # (0.0 out of 172.0)
                end               end             else  # if dev_group_code > 2.5
              case when age_group_code <= 1.0 then
                 return 0.0 # (0.0 out of 2.0)
              else  # if age_group_code > 1.0
                 return 1.0 # (1025.0 out of 1025.0)
              end             end           else  # if high_message_length_x > 0.5
            case when License Type_code <= 1.0 then
              case when popularity_group_code <= 1.5 then
                case when high_message_length_y <= 0.5 then
                   return 1.0 # (288.0 out of 288.0)
                else  # if high_message_length_y > 0.5
                   return 0.9238551650692226 # (1735.0 out of 1878.0)
                end               else  # if popularity_group_code > 1.5
                 return 1.0 # (1403.0 out of 1403.0)
              end             else  # if License Type_code > 1.0
               return 1.0 # (8734.0 out of 8734.0)
            end           end         end       else  # if language_group > 0.5
        case when age_group_code <= 0.5 then
          case when dev_group_code <= 1.5 then
             return 0.0 # (0.0 out of 1179.0)
          else  # if dev_group_code > 1.5
             return 0.5322391559202814 # (454.0 out of 853.0)
          end         else  # if age_group_code > 0.5
          case when language_group <= 3.5 then
            case when high_message_length_x <= 0.5 then
              case when high_message_length_y <= 0.5 then
                case when age_group_code <= 1.5 then
                  case when year <= 2017.0 then
                    case when License Type_code <= 4.0 then
                       return 1.0 # (1.0 out of 1.0)
                    else  # if License Type_code > 4.0
                       return 0.32142857142857145 # (9.0 out of 28.0)
                    end                   else  # if year > 2017.0
                     return 1.0 # (600.0 out of 600.0)
                  end                 else  # if age_group_code > 1.5
                  case when year <= 2020.5 then
                    case when year <= 2017.5 then
                      case when popularity_group_code <= 1.5 then
                         return 0.0 # (0.0 out of 109.0)
                      else  # if popularity_group_code > 1.5
                        case when License Type_code <= 4.0 then
                           return 0.0 # (0.0 out of 13.0)
                        else  # if License Type_code > 4.0
                           return 1.0 # (71.0 out of 71.0)
                        end                       end                     else  # if year > 2017.5
                      case when age_group_code <= 2.5 then
                        case when popularity_group_code <= 1.5 then
                           return 1.0 # (334.0 out of 334.0)
                        else  # if popularity_group_code > 1.5
                           return 0.926829268292683 # (152.0 out of 164.0)
                        end                       else  # if age_group_code > 2.5
                        case when year <= 2018.5 then
                           return 0.0 # (0.0 out of 4.0)
                        else  # if year > 2018.5
                           return 1.0 # (4.0 out of 4.0)
                        end                       end                     end                   else  # if year > 2020.5
                    case when License Type_code <= 4.0 then
                       return 1.0 # (255.0 out of 255.0)
                    else  # if License Type_code > 4.0
                       return 0.0 # (0.0 out of 544.0)
                    end                   end                 end               else  # if high_message_length_y > 0.5
                case when popularity_group_code <= 0.5 then
                   return 1.0 # (56.0 out of 56.0)
                else  # if popularity_group_code > 0.5
                  case when popularity_group_code <= 2.0 then
                     return 0.0 # (0.0 out of 404.0)
                  else  # if popularity_group_code > 2.0
                     return 1.0 # (22.0 out of 22.0)
                  end                 end               end             else  # if high_message_length_x > 0.5
              case when popularity_group_code <= 0.5 then
                case when year <= 2019.5 then
                   return 1.0 # (2.0 out of 2.0)
                else  # if year > 2019.5
                   return 0.0 # (0.0 out of 369.0)
                end               else  # if popularity_group_code > 0.5
                case when dev_group_code <= 1.5 then
                  case when year <= 2020.5 then
                     return 0.0 # (0.0 out of 219.0)
                  else  # if year > 2020.5
                     return 1.0 # (6.0 out of 6.0)
                  end                 else  # if dev_group_code > 1.5
                  case when year <= 2020.5 then
                    case when popularity_group_code <= 2.5 then
                      case when age_group_code <= 1.5 then
                        case when License Type_code <= 5.5 then
                           return 1.0 # (2107.0 out of 2107.0)
                        else  # if License Type_code > 5.5
                          case when high_message_length_y <= 0.5 then
                             return 1.0 # (5.0 out of 5.0)
                          else  # if high_message_length_y > 0.5
                             return 0.6056889352818372 # (2321.0 out of 3832.0)
                          end                         end                       else  # if age_group_code > 1.5
                        case when high_message_length_y <= 0.5 then
                           return 0.0 # (0.0 out of 8.0)
                        else  # if high_message_length_y > 0.5
                           return 1.0 # (27240.0 out of 27240.0)
                        end                       end                     else  # if popularity_group_code > 2.5
                      case when age_group_code <= 1.5 then
                        case when year <= 2017.5 then
                           return 0.0 # (0.0 out of 17.0)
                        else  # if year > 2017.5
                           return 1.0 # (1896.0 out of 1896.0)
                        end                       else  # if age_group_code > 1.5
                        case when year <= 2018.5 then
                           return 1.0 # (59.0 out of 59.0)
                        else  # if year > 2018.5
                          case when year <= 2019.5 then
                             return 0.0 # (0.0 out of 66.0)
                          else  # if year > 2019.5
                            case when age_group_code <= 2.5 then
                               return 0.3312451057165231 # (423.0 out of 1277.0)
                            else  # if age_group_code > 2.5
                               return 0.0 # (0.0 out of 4.0)
                            end                           end                         end                       end                     end                   else  # if year > 2020.5
                     return 1.0 # (20750.0 out of 20750.0)
                  end                 end               end             end           else  # if language_group > 3.5
            case when popularity_group_code <= 1.0 then
               return 0.6857610474631751 # (1257.0 out of 1833.0)
            else  # if popularity_group_code > 1.0
              case when high_refactor_y <= 0.5 then
                 return 0.0 # (0.0 out of 1083.0)
              else  # if high_refactor_y > 0.5
                 return 1.0 # (2.0 out of 2.0)
              end             end           end         end       end     end   else  # if high_hours_x > 0.5
    case when year <= 2020.5 then
      case when language_group <= 0.5 then
        case when high_message_length_x <= 0.5 then
          case when high_message_length_y <= 0.5 then
            case when License Type_code <= 4.0 then
              case when high_hours_y <= 0.5 then
                case when age_group_code <= 1.5 then
                  case when popularity_group_code <= 0.5 then
                     return 1.0 # (35.0 out of 35.0)
                  else  # if popularity_group_code > 0.5
                     return 0.0 # (0.0 out of 49.0)
                  end                 else  # if age_group_code > 1.5
                  case when year <= 2019.0 then
                     return 0.0 # (0.0 out of 80.0)
                  else  # if year > 2019.0
                     return 1.0 # (3.0 out of 3.0)
                  end                 end               else  # if high_hours_y > 0.5
                case when year <= 2017.0 then
                  case when popularity_group_code <= 1.5 then
                    case when age_group_code <= 1.5 then
                       return 0.5102040816326531 # (25.0 out of 49.0)
                    else  # if age_group_code > 1.5
                       return 0.5324675324675324 # (82.0 out of 154.0)
                    end                   else  # if popularity_group_code > 1.5
                     return 0.4528301886792453 # (24.0 out of 53.0)
                  end                 else  # if year > 2017.0
                   return 0.6666666666666666 # (4.0 out of 6.0)
                end               end             else  # if License Type_code > 4.0
              case when dev_group_code <= 1.5 then
                 return 0.0 # (0.0 out of 42.0)
              else  # if dev_group_code > 1.5
                case when high_hours_y <= 0.5 then
                  case when age_group_code <= 1.5 then
                    case when dev_group_code <= 2.5 then
                      case when year <= 2017.5 then
                         return 0.0 # (0.0 out of 23.0)
                      else  # if year > 2017.5
                         return 1.0 # (8.0 out of 8.0)
                      end                     else  # if dev_group_code > 2.5
                       return 1.0 # (91.0 out of 91.0)
                    end                   else  # if age_group_code > 1.5
                    case when popularity_group_code <= 2.0 then
                      case when year <= 2019.5 then
                         return 0.0 # (0.0 out of 19.0)
                      else  # if year > 2019.5
                         return 1.0 # (88.0 out of 88.0)
                      end                     else  # if popularity_group_code > 2.0
                       return 0.0 # (0.0 out of 31.0)
                    end                   end                 else  # if high_hours_y > 0.5
                  case when age_group_code <= 1.5 then
                    case when year <= 2018.0 then
                       return 0.5135135135135135 # (19.0 out of 37.0)
                    else  # if year > 2018.0
                      case when popularity_group_code <= 1.5 then
                         return 0.4583333333333333 # (11.0 out of 24.0)
                      else  # if popularity_group_code > 1.5
                        case when year <= 2019.5 then
                           return 0.4666666666666667 # (14.0 out of 30.0)
                        else  # if year > 2019.5
                           return 0.47058823529411764 # (16.0 out of 34.0)
                        end                       end                     end                   else  # if age_group_code > 1.5
                     return 0.5517241379310345 # (48.0 out of 87.0)
                  end                 end               end             end           else  # if high_message_length_y > 0.5
            case when year <= 2017.5 then
               return 1.0 # (18.0 out of 18.0)
            else  # if year > 2017.5
              case when License Type_code <= 6.0 then
                 return 1.0 # (2.0 out of 2.0)
              else  # if License Type_code > 6.0
                 return 0.0 # (0.0 out of 6506.0)
              end             end           end         else  # if high_message_length_x > 0.5
          case when age_group_code <= 1.5 then
            case when dev_group_code <= 2.5 then
              case when popularity_group_code <= 1.5 then
                case when License Type_code <= 3.5 then
                   return 0.0 # (0.0 out of 1494.0)
                else  # if License Type_code > 3.5
                  case when age_group_code <= 0.5 then
                    case when popularity_group_code <= 0.5 then
                       return 0.4973190348525469 # (742.0 out of 1492.0)
                    else  # if popularity_group_code > 0.5
                       return 0.0 # (0.0 out of 1423.0)
                    end                   else  # if age_group_code > 0.5
                    case when high_hours_y <= 0.5 then
                      case when language_group <= -0.5 then
                        case when dev_group_code <= 1.5 then
                          case when popularity_group_code <= 0.5 then
                             return 0.6568077511473738 # (1288.0 out of 1961.0)
                          else  # if popularity_group_code > 0.5
                             return 0.0 # (0.0 out of 473.0)
                          end                         else  # if dev_group_code > 1.5
                           return 0.7267332916926921 # (9308.0 out of 12808.0)
                        end                       else  # if language_group > -0.5
                         return 1.0 # (1515.0 out of 1515.0)
                      end                     else  # if high_hours_y > 0.5
                      case when year <= 2018.0 then
                         return 0.0 # (0.0 out of 9.0)
                      else  # if year > 2018.0
                        case when dev_group_code <= 1.5 then
                           return 0.49923312883435583 # (651.0 out of 1304.0)
                        else  # if dev_group_code > 1.5
                          case when language_group <= -0.5 then
                             return 0.49642384105960263 # (3748.0 out of 7550.0)
                          else  # if language_group > -0.5
                             return 0.496551724137931 # (432.0 out of 870.0)
                          end                         end                       end                     end                   end                 end               else  # if popularity_group_code > 1.5
                case when age_group_code <= 0.5 then
                   return 1.0 # (981.0 out of 981.0)
                else  # if age_group_code > 0.5
                   return 0.0 # (0.0 out of 4740.0)
                end               end             else  # if dev_group_code > 2.5
              case when high_hours_y <= 0.5 then
                case when popularity_group_code <= 2.5 then
                  case when License Type_code <= 5.5 then
                     return 0.0 # (0.0 out of 414.0)
                  else  # if License Type_code > 5.5
                    case when year <= 2019.0 then
                       return 0.0 # (0.0 out of 3.0)
                    else  # if year > 2019.0
                       return 1.0 # (1810.0 out of 1810.0)
                    end                   end                 else  # if popularity_group_code > 2.5
                  case when License Type_code <= 3.5 then
                     return 1.0 # (2884.0 out of 2884.0)
                  else  # if License Type_code > 3.5
                    case when high_message_length_y <= 0.5 then
                       return 1.0 # (41.0 out of 41.0)
                    else  # if high_message_length_y > 0.5
                       return 0.9942446043165467 # (691.0 out of 695.0)
                    end                   end                 end               else  # if high_hours_y > 0.5
                case when popularity_group_code <= 2.5 then
                   return 0.5085910652920962 # (444.0 out of 873.0)
                else  # if popularity_group_code > 2.5
                   return 0.49613686534216334 # (1798.0 out of 3624.0)
                end               end             end           else  # if age_group_code > 1.5
            case when License Type_code <= 4.0 then
              case when popularity_group_code <= 1.5 then
                case when high_hours_y <= 0.5 then
                  case when language_group <= -0.5 then
                    case when License Type_code <= -0.5 then
                       return 0.6106571936056838 # (3438.0 out of 5630.0)
                    else  # if License Type_code > -0.5
                       return 0.6296069548181706 # (5142.0 out of 8167.0)
                    end                   else  # if language_group > -0.5
                     return 1.0 # (442.0 out of 442.0)
                  end                 else  # if high_hours_y > 0.5
                  case when language_group <= -0.5 then
                    case when License Type_code <= -0.5 then
                       return 0.4984 # (2492.0 out of 5000.0)
                    else  # if License Type_code > -0.5
                       return 0.5031315240083507 # (482.0 out of 958.0)
                    end                   else  # if language_group > -0.5
                     return 0.49453551912568305 # (724.0 out of 1464.0)
                  end                 end               else  # if popularity_group_code > 1.5
                case when high_hours_y <= 0.5 then
                   return 0.0 # (0.0 out of 799.0)
                else  # if high_hours_y > 0.5
                   return 0.5021496130696474 # (584.0 out of 1163.0)
                end               end             else  # if License Type_code > 4.0
              case when popularity_group_code <= 1.5 then
                case when dev_group_code <= 1.5 then
                  case when popularity_group_code <= 0.5 then
                    case when high_hours_y <= 0.5 then
                       return 0.006628003314001657 # (8.0 out of 1207.0)
                    else  # if high_hours_y > 0.5
                       return 0.42857142857142855 # (3.0 out of 7.0)
                    end                   else  # if popularity_group_code > 0.5
                    case when year <= 2019.5 then
                       return 0.0 # (0.0 out of 187.0)
                    else  # if year > 2019.5
                      case when age_group_code <= 2.5 then
                        case when high_hours_y <= 0.5 then
                           return 0.42006302521008404 # (3999.0 out of 9520.0)
                        else  # if high_hours_y > 0.5
                           return 0.49819563152896484 # (2623.0 out of 5265.0)
                        end                       else  # if age_group_code > 2.5
                        case when high_hours_y <= 0.5 then
                           return 0.5476760900814567 # (1143.0 out of 2087.0)
                        else  # if high_hours_y > 0.5
                           return 0.4908116385911179 # (641.0 out of 1306.0)
                        end                       end                     end                   end                 else  # if dev_group_code > 1.5
                  case when language_group <= -0.5 then
                    case when age_group_code <= 2.5 then
                       return 0.0 # (0.0 out of 18585.0)
                    else  # if age_group_code > 2.5
                       return 1.0 # (959.0 out of 959.0)
                    end                   else  # if language_group > -0.5
                    case when high_hours_y <= 0.5 then
                       return 0.6827219266311958 # (2438.0 out of 3571.0)
                    else  # if high_hours_y > 0.5
                       return 0.4965143299767622 # (641.0 out of 1291.0)
                    end                   end                 end               else  # if popularity_group_code > 1.5
                case when dev_group_code <= 2.5 then
                  case when age_group_code <= 2.5 then
                    case when high_message_length_y <= 0.5 then
                       return 1.0 # (887.0 out of 887.0)
                    else  # if high_message_length_y > 0.5
                      case when high_hours_y <= 0.5 then
                         return 0.5796298994608772 # (7956.0 out of 13726.0)
                      else  # if high_hours_y > 0.5
                         return 0.50234375 # (1286.0 out of 2560.0)
                      end                     end                   else  # if age_group_code > 2.5
                     return 0.0 # (0.0 out of 882.0)
                  end                 else  # if dev_group_code > 2.5
                   return 0.0 # (0.0 out of 1357.0)
                end               end             end           end         end       else  # if language_group > 0.5
        case when age_group_code <= 1.5 then
          case when dev_group_code <= 2.5 then
            case when dev_group_code <= 1.5 then
              case when high_message_length_y <= 0.5 then
                 return 0.0 # (0.0 out of 37.0)
              else  # if high_message_length_y > 0.5
                 return 1.0 # (1156.0 out of 1156.0)
              end             else  # if dev_group_code > 1.5
              case when License Type_code <= 5.5 then
                case when high_message_length_y <= 0.5 then
                   return 0.5384615384615384 # (7.0 out of 13.0)
                else  # if high_message_length_y > 0.5
                   return 0.0 # (0.0 out of 977.0)
                end               else  # if License Type_code > 5.5
                case when language_group <= 2.5 then
                  case when year <= 2019.0 then
                     return 0.0 # (0.0 out of 229.0)
                  else  # if year > 2019.0
                    case when high_message_length_y <= 0.5 then
                       return 1.0 # (359.0 out of 359.0)
                    else  # if high_message_length_y > 0.5
                      case when popularity_group_code <= 0.5 then
                        case when high_hours_y <= 0.5 then
                           return 1.0 # (387.0 out of 387.0)
                        else  # if high_hours_y > 0.5
                           return 0.5 # (557.0 out of 1114.0)
                        end                       else  # if popularity_group_code > 0.5
                        case when high_hours_y <= 0.5 then
                          case when age_group_code <= 0.5 then
                             return 0.46551724137931033 # (405.0 out of 870.0)
                          else  # if age_group_code > 0.5
                             return 0.39723165317315223 # (1521.0 out of 3829.0)
                          end                         else  # if high_hours_y > 0.5
                          case when age_group_code <= 0.5 then
                             return 0.5062586926286509 # (364.0 out of 719.0)
                          else  # if age_group_code > 0.5
                             return 0.4995337270749145 # (1607.0 out of 3217.0)
                          end                         end                       end                     end                   end                 else  # if language_group > 2.5
                   return 1.0 # (391.0 out of 391.0)
                end               end             end           else  # if dev_group_code > 2.5
            case when year <= 2018.0 then
              case when year <= 2016.5 then
                case when high_message_length_y <= 0.5 then
                  case when high_hours_y <= 0.5 then
                     return 0.5714285714285714 # (16.0 out of 28.0)
                  else  # if high_hours_y > 0.5
                     return 0.47619047619047616 # (30.0 out of 63.0)
                  end                 else  # if high_message_length_y > 0.5
                  case when popularity_group_code <= 2.5 then
                     return 0.0 # (0.0 out of 3.0)
                  else  # if popularity_group_code > 2.5
                     return 1.0 # (18.0 out of 18.0)
                  end                 end               else  # if year > 2016.5
                case when high_hours_y <= 0.5 then
                   return 0.0 # (0.0 out of 26.0)
                else  # if high_hours_y > 0.5
                   return 0.4854368932038835 # (50.0 out of 103.0)
                end               end             else  # if year > 2018.0
               return 0.0 # (0.0 out of 3025.0)
            end           end         else  # if age_group_code > 1.5
          case when language_group <= 3.5 then
            case when popularity_group_code <= 2.5 then
              case when dev_group_code <= 1.5 then
                case when high_message_length_y <= 0.5 then
                   return 0.0 # (0.0 out of 66.0)
                else  # if high_message_length_y > 0.5
                   return 1.0 # (216.0 out of 216.0)
                end               else  # if dev_group_code > 1.5
                case when year <= 2017.5 then
                  case when popularity_group_code <= 1.5 then
                     return 1.0 # (125.0 out of 125.0)
                  else  # if popularity_group_code > 1.5
                     return 0.0 # (0.0 out of 24.0)
                  end                 else  # if year > 2017.5
                  case when year <= 2018.5 then
                    case when high_message_length_x <= 0.5 then
                      case when age_group_code <= 2.5 then
                        case when high_hours_y <= 0.5 then
                          case when dev_group_code <= 2.5 then
                             return 0.0 # (0.0 out of 111.0)
                          else  # if dev_group_code > 2.5
                             return 0.07482993197278912 # (11.0 out of 147.0)
                          end                         else  # if high_hours_y > 0.5
                          case when high_message_length_y <= 0.5 then
                             return 0.41818181818181815 # (23.0 out of 55.0)
                          else  # if high_message_length_y > 0.5
                             return 0.0 # (0.0 out of 14.0)
                          end                         end                       else  # if age_group_code > 2.5
                         return 1.0 # (6.0 out of 6.0)
                      end                     else  # if high_message_length_x > 0.5
                      case when popularity_group_code <= 0.5 then
                         return 0.0 # (0.0 out of 60.0)
                      else  # if popularity_group_code > 0.5
                        case when high_message_length_y <= 0.5 then
                           return 1.0 # (47.0 out of 47.0)
                        else  # if high_message_length_y > 0.5
                           return 0.0 # (0.0 out of 9.0)
                        end                       end                     end                   else  # if year > 2018.5
                     return 0.0 # (0.0 out of 27392.0)
                  end                 end               end             else  # if popularity_group_code > 2.5
              case when year <= 2018.5 then
                case when high_message_length_y <= 0.5 then
                  case when License Type_code <= 4.0 then
                    case when high_hours_y <= 0.5 then
                       return 1.0 # (12.0 out of 12.0)
                    else  # if high_hours_y > 0.5
                       return 0.5 # (9.0 out of 18.0)
                    end                   else  # if License Type_code > 4.0
                     return 0.0 # (0.0 out of 45.0)
                  end                 else  # if high_message_length_y > 0.5
                   return 0.0 # (0.0 out of 55.0)
                end               else  # if year > 2018.5
                case when high_hours_y <= 0.5 then
                  case when year <= 2019.5 then
                     return 1.0 # (66.0 out of 66.0)
                  else  # if year > 2019.5
                    case when age_group_code <= 2.5 then
                       return 0.6700626959247649 # (855.0 out of 1276.0)
                    else  # if age_group_code > 2.5
                       return 1.0 # (5.0 out of 5.0)
                    end                   end                 else  # if high_hours_y > 0.5
                  case when year <= 2019.5 then
                     return 0.5042016806722689 # (60.0 out of 119.0)
                  else  # if year > 2019.5
                     return 0.494716618635927 # (515.0 out of 1041.0)
                  end                 end               end             end           else  # if language_group > 3.5
            case when popularity_group_code <= 1.0 then
              case when high_hours_y <= 0.5 then
                 return 0.3106637649619151 # (571.0 out of 1838.0)
              else  # if high_hours_y > 0.5
                 return 0.5069161920260374 # (623.0 out of 1229.0)
              end             else  # if popularity_group_code > 1.0
               return 1.0 # (713.0 out of 713.0)
            end           end         end       end     else  # if year > 2020.5
      case when high_hours_y <= 0.5 then
        case when high_message_length_y <= 0.5 then
          case when dev_group_code <= 2.5 then
            case when age_group_code <= 1.5 then
               return 0.0 # (0.0 out of 545.0)
            else  # if age_group_code > 1.5
              case when License Type_code <= 4.0 then
                case when high_message_length_x <= 0.5 then
                   return 0.0 # (0.0 out of 443.0)
                else  # if high_message_length_x > 0.5
                   return 0.3996212121212121 # (211.0 out of 528.0)
                end               else  # if License Type_code > 4.0
                 return 1.0 # (727.0 out of 727.0)
              end             end           else  # if dev_group_code > 2.5
            case when age_group_code <= 1.0 then
               return 1.0 # (2.0 out of 2.0)
            else  # if age_group_code > 1.0
               return 0.0 # (0.0 out of 1018.0)
            end           end         else  # if high_message_length_y > 0.5
          case when License Type_code <= 1.0 then
            case when age_group_code <= 1.5 then
               return 0.0 # (0.0 out of 1400.0)
            else  # if age_group_code > 1.5
              case when high_message_length_x <= 0.5 then
                 return 0.0 # (0.0 out of 441.0)
              else  # if high_message_length_x > 0.5
                 return 0.0727470141150923 # (134.0 out of 1842.0)
              end             end           else  # if License Type_code > 1.0
             return 0.0 # (0.0 out of 29213.0)
          end         end       else  # if high_hours_y > 0.5
        case when high_message_length_y <= 0.5 then
          case when License Type_code <= 4.0 then
            case when dev_group_code <= 2.5 then
               return 1.0 # (168.0 out of 168.0)
            else  # if dev_group_code > 2.5
              case when high_message_length_x <= 0.5 then
                case when popularity_group_code <= 2.5 then
                   return 0.5 # (4.0 out of 8.0)
                else  # if popularity_group_code > 2.5
                  case when language_group <= 0.0 then
                     return 0.52 # (13.0 out of 25.0)
                  else  # if language_group > 0.0
                     return 0.5201342281879194 # (155.0 out of 298.0)
                  end                 end               else  # if high_message_length_x > 0.5
                 return 0.0 # (0.0 out of 5.0)
              end             end           else  # if License Type_code > 4.0
            case when high_message_length_x <= 0.5 then
              case when age_group_code <= 2.5 then
                case when age_group_code <= 1.5 then
                   return 0.4951737451737452 # (513.0 out of 1036.0)
                else  # if age_group_code > 1.5
                  case when language_group <= 0.5 then
                    case when popularity_group_code <= 1.5 then
                       return 0.47619047619047616 # (100.0 out of 210.0)
                    else  # if popularity_group_code > 1.5
                       return 0.5114235500878734 # (291.0 out of 569.0)
                    end                   else  # if language_group > 0.5
                     return 0.5117565698478561 # (740.0 out of 1446.0)
                  end                 end               else  # if age_group_code > 2.5
                 return 0.4853801169590643 # (166.0 out of 342.0)
              end             else  # if high_message_length_x > 0.5
               return 0.0 # (0.0 out of 94.0)
            end           end         else  # if high_message_length_y > 0.5
          case when age_group_code <= 2.5 then
            case when high_message_length_x <= 0.5 then
              case when age_group_code <= 1.5 then
                 return 1.0 # (5.0 out of 5.0)
              else  # if age_group_code > 1.5
                 return 0.0 # (0.0 out of 164.0)
              end             else  # if high_message_length_x > 0.5
               return 0.4855072463768116 # (268.0 out of 552.0)
            end           else  # if age_group_code > 2.5
             return 1.0 # (95.0 out of 95.0)
          end         end       end     end   end )