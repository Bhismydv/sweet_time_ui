import 'package:flutter/material.dart';

import '../../styles/app_colors.dart';

class AppCircleTable extends StatelessWidget {
  String sub;
  String add;
 int increment_decrement;
  final Function() onTapAdd;
  final Function() onTapSub;
  String bookfor;

   AppCircleTable({required this.increment_decrement, required this.sub, required this.add, required this.bookfor,
     required this.onTapAdd, required this.onTapSub});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: GestureDetector(
              onTap: ()=>onTapAdd,
              child: Text(add, style: TextStyle(fontSize: 25, color: AppColors.primaryColor),)),
            ),
            Container(
              padding: EdgeInsets.only(right: 2, bottom: 2),
              height: 85,
              width: 85,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.accentColor.withOpacity(.3),
                  border: Border.all(color: AppColors.primaryColor)
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                child: Container(
                  alignment: Alignment.center,
                  width: 85,
                  height: 85,
                  decoration: BoxDecoration(
                    color: Colors.red[100],
                    borderRadius: BorderRadius.circular(50),

                  ),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: '$increment_decrement'+'\n',
        style: TextStyle(
        color: AppColors.primaryColor, fontSize: 14, fontWeight: FontWeight.bold
        ),
                      children: [
                        TextSpan(
                          text: 'Book \nTable',
                          style: TextStyle(
                            shadows: [
                              Shadow(
                                  color: AppColors.primaryColor.withOpacity(.5),
                                  offset: Offset(5, 5),
                                  blurRadius: 4.0
                              )
                            ],
                            color: AppColors.textColor, fontSize: 14, fontWeight: FontWeight.normal
                          )
                        ),
                      ]
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: GestureDetector(
                  onTap: ()=>onTapSub,
                  child: Text(sub, style: TextStyle(fontSize: 30, color: AppColors.primaryColor),)),
            ),
          ],
        ),
        Text(bookfor, style:  TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: AppColors.textColor,
        shadows: [
          Shadow(
              color: AppColors.primaryColor.withOpacity(.5),
              offset: Offset(5, 5),
              blurRadius: 4.0
          )
        ]),)
      ],
    );
  }
}
