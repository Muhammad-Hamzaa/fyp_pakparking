import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pak_parking/Components/reusable_components.dart';

import 'constant_colors.dart';
// Parking History Reusable Container
class ReusableHistoryContainer extends StatefulWidget {
  final String text;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final Widget wgt;
  final Widget icon;
  const ReusableHistoryContainer({Key? key,
    this.icon = const ImageIcon(AssetImage(""), size: 3,),
    this.wgt = const Text(""),
    required this.text,
    this.text1 = "",
    this.text2 = "",
    this.text3 = "",
    this.text4 = "",
 }) : super(key: key);

  @override
  State<ReusableHistoryContainer> createState() => _ReusableHistoryContainerState();
}

class _ReusableHistoryContainerState extends State<ReusableHistoryContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w,),
      height: 80.h,
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColors().white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: AppColors().grey, blurStyle: BlurStyle.solid, blurRadius: 10)
          ]
      ),
      child:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              widget.wgt,
              Text(widget.text, textAlign: TextAlign.right,),
            ],
          ),
          const SB(),
          const Divider(thickness: 2,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              Text(widget.text1, style: TextStyle(color: AppColors().grey),),
              Text(widget.text2, style: TextStyle(color: AppColors().grey),),
              Text(widget.text3, textAlign: TextAlign.right,),
            ],
          ),
        ],
      ),
    );
  }
}

class Card1 {
  Card card = Card(
        color: AppColors().green,
        shape:  RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
          child: Text("60PKR/Hr", style: TextStyle(color: AppColors().white),),
        ),
      );
  Image verifyIcon = Image(
    height: 30.h,
    width: 30.w,
    image: const AssetImage("assets/parking_history/verify.jpg"),
    fit: BoxFit.cover,
  );
  Image starIcon = Image(
    height: 30.h,
    width: 30.w,
    image: const AssetImage("assets/parking_history/star.jpg"),
    fit: BoxFit.cover,
  );
}

// Parking History Headings above Containers
class ParkingHistory{
  Row activeSession = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children:  [Text("   Active Session", style: TextStyle(color: AppColors().grey, fontWeight: FontWeight.bold),),
    ],
  );

  Row completedSession = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children:  [
      Text("   Completed Session", style: TextStyle(color: AppColors().grey, fontWeight: FontWeight.bold)),
      Text("   View All ", style: TextStyle(color: AppColors().green, fontWeight: FontWeight.bold)),
    ],
  );

  Row reservedSpots = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children:  [
      Text("   Reserved Spots", style: TextStyle(color: AppColors().grey, fontWeight: FontWeight.bold)),
      Text("   View All ", style: TextStyle(color: AppColors().green, fontWeight: FontWeight.bold)),
    ],
  );

}
