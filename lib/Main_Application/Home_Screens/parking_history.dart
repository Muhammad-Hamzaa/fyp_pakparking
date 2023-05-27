import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pak_parking/Components/constant_colors.dart';
import 'package:pak_parking/Main_Application/Login_Signup/login_screen.dart';

import '../../Components/user_drawer_view.dart';
import '../../Components/reusable_components.dart';
import '../../Components/reusable_history_components.dart';


class UserParkingHistory extends StatefulWidget {

  static const String id = 'user_history';
  const UserParkingHistory({Key? key}) : super(key: key);

  @override
  State<UserParkingHistory> createState() => _UserParkingHistoryState();
}

class _UserParkingHistoryState extends State<UserParkingHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors().green),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(onPressed: (){

          },
              icon: const CircleAvatar(
                backgroundImage: AssetImage("assets/parking_history/girlav.jpg"),),
              ),
        ],
        title: Text("History", style: TextStyle(color: AppColors().black)),
        centerTitle: true,

      ),
      drawer: UserDrawerView(
        onPress: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const LoginScreen()));
        },
        child: ListView(),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),

          child: Column(
            children: [
              const SB1(),
              ParkingHistory().activeSession,
              const SB(),
              ReusableHistoryContainer(
                wgt: Card1().card,
                text: "kki Gardens Car Park A\nSpace 4c",
                text1: "Time Remaining", text3: "01hr : 30min", ),
              const SB3(),
              ParkingHistory().completedSession,
              const SB(),
               ReusableHistoryContainer(
                   wgt: Card1().verifyIcon,
                   text: "kki Gardens Car Park B\nSpace 4c", text1: "02/09/2019", text2: "02:00pm", text3: "\$100"),
              const SB1(),
              ReusableHistoryContainer(
                  wgt: Card1().verifyIcon,
                  text: "kki Gardens Car Park C\nSpace 4c", text1: "02/09/2019", text2: "02:00pm", text3: "\$100"),
              const SB3(),
              ParkingHistory().reservedSpots,
              const SB(),
              ReusableHistoryContainer(
                  wgt: Card1().starIcon,
                  text: "kki Gardens Car Park D\nSpace 4c", text1: "02/09/2019", text2: "02:00pm", text3: "\$100"),

            ],
          ),
        ),
      ),
    );
  }
}
