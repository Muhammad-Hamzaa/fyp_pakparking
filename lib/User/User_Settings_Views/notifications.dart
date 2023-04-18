import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pak_parking/Components/reusable_components.dart';

import '../../Components/constant_colors.dart';

class Notifications extends StatefulWidget {
  static const String id = 'about_us';
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors().green),
        backgroundColor: Colors.transparent,
        title:  Text("Notifications", style: TextStyle(color: AppColors().black),),elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          children: const [
            NotificationContainer(text1: "Development", text2: "Parking system is under construction. We'll notify you when it'll be available", text3: "10/04/2023 12:00 AM",),
            NotificationContainer(text1: "Payment", text2:  "Payment option will be added soon", text3: '05/04/2023 08:00 AM'),
            NotificationContainer(text1: "RFID Tags" , text2: "RFID Tags will be delivered to your home address withing two days of registration", text3: '01/04/2023 10:00 AM')
          ],
        ),
      ),
    );
  }
}
