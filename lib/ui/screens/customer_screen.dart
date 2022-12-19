import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sweet_time_ui/ui/screens/history_screen.dart';
import 'package:sweet_time_ui/ui/screens/ticket_book_screen.dart';
import 'package:sweet_time_ui/utils/ui_helper.dart';

import '../../styles/app_colors.dart';
import '../widgets/app_circle_table.dart';

class CustomerScreen extends StatefulWidget {
  const CustomerScreen({Key? key}) : super(key: key);

  @override
  _CustomerScreenState createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
   int numberOFbooking=5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light.copyWith(statusBarColor: Theme.of(context).primaryColor.withOpacity(.5)),
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
           //   color: AppColors.primaryColor.withOpacity(.15),
              border: Border(
                  top: BorderSide(color: AppColors.primaryColor, width: 2.5,),
                  right: BorderSide(color: AppColors.primaryColor,width: 1.5),
                  left: BorderSide(color: AppColors.primaryColor,width: 2.5),
                  bottom: BorderSide(color: AppColors.primaryColor,width: 1.5)
              ),

            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 30, 10, 20),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(20),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.accentColor),
                                  shape: BoxShape.circle
                              ),
                              child: Icon(Icons.camera_alt,color: AppColors.accentColor,),
                            ),
                            Text('Picture', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,
                                color: AppColors.textColor,
                                shadows: [
                                  Shadow(
                                      color: AppColors.primaryColor.withOpacity(.5),
                                      offset: Offset(5, 5),
                                      blurRadius: 4.0
                                  )
                                ]
                            ),
                            )
                          ],
                        ),
                        const SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('Bhism Pratap Yadav',
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                          color: AppColors.primaryColor.withOpacity(.5),
                                          offset: Offset(5, 5),
                                          blurRadius: 4.0
                                      )
                                    ]
                                ),),
                                Icon(Icons.edit, color: AppColors.accentColor,)
                              ],
                            ),
                            const SizedBox(height: 5,),
                            Row(
                              children: [
                                Text('Bhismydv2912@gmail.com',
                                  style: TextStyle(
                                      shadows: [
                                        Shadow(
                                            color: AppColors.primaryColor.withOpacity(.5),
                                            offset: Offset(5, 5),
                                            blurRadius: 4.0
                                        )
                                      ]
                                  ),),
                                Icon(Icons.edit, color: AppColors.accentColor,)
                              ],
                            ),
                            const SizedBox(height: 5,),
                            Row(
                              children: [
                                Text('7000521856',
                                  style: TextStyle(
                                      shadows: [
                                        Shadow(
                                            color: AppColors.primaryColor.withOpacity(.5),
                                            offset: Offset(5, 5),
                                            blurRadius: 4.0
                                        )
                                      ]
                                  ),),
                                Icon(Icons.edit, color: AppColors.accentColor,)
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: ()=>UIHelper.gotoScreen(context, TicketBookScreen()),
                          child: Container(
                            width: 75,
                            height: 40,
                            alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: AppColors.primaryColor, width: 2)
                          )
                          ,child: Icon(Icons.airplane_ticket, color: AppColors.accentColor,)),
                        ),
                      GestureDetector(
                        onTap: ()=>UIHelper.gotoScreen(context, HistoryScreen()),
                        child: Container(
                          width: 75,
                          height: 40,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: AppColors.primaryColor, width: 2)
                          ),
                            child: Icon(Icons.refresh, color: AppColors.accentColor,)),
                      ),
                        Container(
                          width: 75,
                          height: 40,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: AppColors.primaryColor, width: 2)
                          ),
                            child: Icon(FontAwesomeIcons.heart, color: AppColors.accentColor,)),
                      ],
                    ),
                  ),
                  Divider(color: AppColors.accentColor,thickness: 5,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment:  CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppCircleTable(
                              onTapSub: () {
                                setState(() {
                                  numberOFbooking--;
                                });
                              },
                              increment_decrement: numberOFbooking,
                              onTapAdd: () {
                               setState(() {
                                 numberOFbooking++;
                               });
                              }, add: '+', sub: '-', bookfor: 'For Single Person',),
                            AppCircleTable(
                              onTapSub: () {
                                setState(() {
                                  numberOFbooking--;
                                });
                              },
                              increment_decrement: numberOFbooking,
                              onTapAdd: () {
                                setState(() {
                                  numberOFbooking++;
                                });
                              }, sub: '-', add: '+', bookfor: 'For Couples',),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          crossAxisAlignment:  CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppCircleTable(
                              onTapSub: () {
                                setState(() {
                                  numberOFbooking--;
                                });
                              },
                              increment_decrement: numberOFbooking,
                              onTapAdd: () {
                                setState(() {
                                  numberOFbooking++;
                                });
                              }, add: '+', sub: '-', bookfor: 'For Family',),
                            AppCircleTable(
                              onTapSub: () {
                                setState(() {
                                  numberOFbooking--;
                                });
                              },
                              increment_decrement: numberOFbooking,
                              onTapAdd: () {
                                setState(() {
                                  numberOFbooking++;
                                });
                              }, sub: '-', add: '+', bookfor: 'For Friends',),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          crossAxisAlignment:  CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppCircleTable(
                              onTapSub: () {
                                setState(() {
                                  numberOFbooking--;
                                });
                              },
                              increment_decrement: numberOFbooking,
                              onTapAdd: () {
                                setState(() {
                                  numberOFbooking++;
                                });
                              }, add: '+', sub: '-', bookfor: 'For Meetings',),
                            AppCircleTable(
                              onTapSub: () {
                                setState(() {
                                  numberOFbooking--;
                                });
                              },
                              increment_decrement: numberOFbooking,
                              onTapAdd: () {
                                setState(() {
                                  numberOFbooking++;
                                });
                              }, sub: '-', add: '+', bookfor: 'Birthday Party',),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          crossAxisAlignment:  CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppCircleTable(
                              onTapSub: () {
                                setState(() {
                                  numberOFbooking--;
                                });
                              },
                              increment_decrement: numberOFbooking,
                              onTapAdd: () {
                                setState(() {
                                  numberOFbooking++;
                                });
                              }, add: '+', sub: '-', bookfor: 'For Staff',),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
        ),
      ),
    );
  }
}