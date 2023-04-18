import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Components/constant_colors.dart';
import '../../Components/drawer_view.dart';

class HomePg1 extends StatefulWidget {
  const HomePg1({Key? key}) : super(key: key);
  @override

  State<HomePg1> createState() => _HomePg1State();
}
class _HomePg1State extends State<HomePg1> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors().green),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      drawer: DrawerView(onPress: () {},
        child: ListView(),),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Text("hamza", style: TextStyle(fontSize: 15.sp),),
          ),
        ),
      ),
    );
  }
}

