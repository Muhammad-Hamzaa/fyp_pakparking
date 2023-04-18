import 'package:flutter/material.dart';

import '../../../Components/constant_colors.dart';
import '../../../Components/drawer_view.dart';

class CashPayment extends StatefulWidget {
  const CashPayment({Key? key}) : super(key: key);

  @override
  State<CashPayment> createState() => _CashPaymentState();
}

class _CashPaymentState extends State<CashPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors().green),
        title:  Text("Cash Payment", style: TextStyle(color: AppColors().black),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      // drawer: DrawerView(onPress: () {},
      //   child: ListView(),),

    );
  }
}
