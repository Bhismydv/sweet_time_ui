import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

import '../../styles/app_colors.dart';
import '../../utils/ui_helper.dart';

class TicketBookScreen extends StatefulWidget {
  const TicketBookScreen({Key? key}) : super(key: key);

  @override
  _TicketBookScreenState createState() => _TicketBookScreenState();
}

class _TicketBookScreenState extends State<TicketBookScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light.copyWith(statusBarColor: Theme.of(context).primaryColor.withOpacity(.5)),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
          //  color: AppColors.primaryColor.withOpacity(.15),
            border: Border(
                top: BorderSide(color: AppColors.primaryColor, width: 2.5,),
                right: BorderSide(color: AppColors.primaryColor,width: 1.5),
                left: BorderSide(color: AppColors.primaryColor,width: 2.5),
                bottom: BorderSide(color: AppColors.primaryColor,width: 1.5)
            ),
          ),
          child: ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics()
          ,separatorBuilder: (context, index){
            return const SizedBox(height: 10,);
          }, itemCount: 2,
            itemBuilder: (context, index){
              return getTicket();
            },)
        ),
      ),
    );
  }

  Widget getTicket(){
    return Container(
      padding: EdgeInsets.only(left: 10,top: 10, right: 10, bottom: 20),
      width: MediaQuery.of(context).size.width/2,
      height: MediaQuery.of(context).size.height/2.5,

      decoration: BoxDecoration(
          color: AppColors.accentColor.withOpacity(.2),
        border: Border(
          top: BorderSide(color: AppColors.accentColor),
          bottom: BorderSide(color: AppColors.accentColor)
        ),
        image: DecorationImage(
          alignment: Alignment.bottomCenter,
            fit: BoxFit.scaleDown,
          image: AssetImage('assets/icon.png',
            )
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Align(
           alignment: Alignment.center,
           child: Text(
           'Ticket Number-'+'125321',textAlign: TextAlign.center,),
         ),
         SizedBox(height: 10,),
            Text('Booking For-'+'Abhishek kumar Patel',
              textAlign: TextAlign.start,),
         SizedBox(height: 10,),
          Text('Mobile No='+'7412589630'),
          SizedBox(height: 10,),
          Text('Status'+'Single Person'),
          SizedBox(height: 10,),
          Text('Table No.-'+'21'),
         SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
               // onTap: ()=>UIHelper.gotoScreen(context, CustomerScreen()),
                child: Container(
                  alignment: Alignment.center,
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColors.primaryColor.withOpacity(.25),
                  ),
                  child: Text('Schedule',
                    style: TextStyle(
                        fontWeight: FontWeight.w400, fontSize: 14, color: AppColors.textColor
                    ),),
                ),
              ),
              GestureDetector(
                //onTap: ()=>UIHelper.gotoScreen(context, CustomerScreen()),
                child: Container(
                  alignment: Alignment.center,
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColors.primaryColor.withOpacity(.25),
                  ),
                  child: Text('Cancel',
                    style: TextStyle(
                        fontWeight: FontWeight.w400, fontSize: 14, color: AppColors.textColor
                    ),),
                ),
              )
            ],
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Date-'+'12/13/2022'),
              Text('Time-'+'12:46')
            ],
          )
        ],
      ),
    );
  }
}
