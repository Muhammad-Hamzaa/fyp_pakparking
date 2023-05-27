import 'package:flutter/material.dart';

import '../../Components/constant_colors.dart';

class PaymentHistory extends StatefulWidget {
  static const String id = 'payment_history';
  const PaymentHistory({Key? key}) : super(key: key);

  @override
  State<PaymentHistory> createState() => _PaymentHistoryState();
}

class _PaymentHistoryState extends State<PaymentHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors().green),
        backgroundColor: Colors.transparent,
        title:  Text("Payment History", style: TextStyle(color: AppColors().black),),elevation: 0,
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Payment History"),
      ),
    );
  }
}
