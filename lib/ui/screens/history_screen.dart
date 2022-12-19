import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../styles/app_colors.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light.copyWith(statusBarColor: Theme.of(context)
        .primaryColor.withOpacity(.5)),
    child: Container(
      padding: EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 20),
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    decoration: BoxDecoration(
   // color: AppColors.primaryColor.withOpacity(.15),
    border: Border(
    top: BorderSide(color: AppColors.primaryColor, width: 2.5,),
    right: BorderSide(color: AppColors.primaryColor,width: 1.5),
    left: BorderSide(color: AppColors.primaryColor,width: 2.5),
    bottom: BorderSide(color: AppColors.primaryColor,width: 1.5)
    )
    ,
    )
    ,
      child: ListView.separated(
          itemBuilder: (context, index){
            return getHistory();
          },
          separatorBuilder: (context, index){
            return SizedBox(height: 5,);
          },
          itemCount: 2),
    )
        ),
    );
  }
  
  Widget getHistory(){
    return  Slidable(
      endActionPane: ActionPane(
        motion: ScrollMotion(),
        children: [
          SlidableAction(onPressed: (val){},
            icon: Icons.delete_outline,
          backgroundColor: AppColors.primaryColor.withOpacity(.15),
          foregroundColor: AppColors.accentColor,
          )
        ],

      ),
      child: Container(
        padding: EdgeInsets.only(left: 10,top: 0, right: 10, bottom: 0),
        width: MediaQuery.of(context).size.width,
        height: 180,
        decoration: BoxDecoration(
          color: AppColors.accentColor.withOpacity(.2),
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: AppColors.accentColor)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'Ticket Number-'+'125321',textAlign: TextAlign.center,),
            ),
            SizedBox(height: 5,),
            Text('Booking For-'+'Abhishek kumar Patel',
              textAlign: TextAlign.start,),
            SizedBox(height: 5,),
            Text('Mobile No='+'7412589630'),
            SizedBox(height: 5,),
            Text('Status'+'Single Person'),
            SizedBox(height: 5,),
            Text('Table No.-'+'21'),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Date-'+'12/13/2022'),
                Text('Time-'+'12:46')
              ],
            )
          ],
        ),
      ),
    );
  }
}
