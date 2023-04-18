import 'package:flutter/material.dart';

import '../../../Components/constant_colors.dart';
import '../../../Components/drawer_view.dart';

class GooglePay extends StatefulWidget {
  const GooglePay({Key? key}) : super(key: key);

  @override
  State<GooglePay> createState() => _GooglePayState();
}

class _GooglePayState extends State<GooglePay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors().green),
        title:  Text("Google Pay", style: TextStyle(color: AppColors().black),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      // drawer: DrawerView(onPress: () {},
      //   child: ListView(),),

    );
  }
}
