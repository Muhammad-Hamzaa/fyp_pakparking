import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Components/constant_colors.dart';
import '../../../Components/drawer_view.dart';
import '../../../Components/payment_textfield.dart';
import '../../../Components/reusable_components.dart';
import '../../../Components/text_styles.dart';

class CreditCard extends StatefulWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  State<CreditCard> createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  int value = 0;
  final paymentLabels = [
    "Google Pay",
    "Cash Payment",
    "Credit card / Debit Card",
    "Easypaisa / Jazzcash"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors().green),
        title:  Text("Credit/Debit Card", style: TextStyle(color: AppColors().black),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      // drawer: DrawerView(onPress: () {},
      //   child: ListView(),),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                  const SB2(),
                  Text(" Enter Card Details", style: AppText().paymentMethodHeading,),
                  const SB(),
                  Image.asset("assets/payment_logo/mastervisa.png"),
                  const SB1(),
                  const PaymentTextFields1(text: "Full Name", text1: "Enter Full Name"),
                  const SB1(),
                  const PaymentTextFields2(text: "Card Number", text1: "XXXX XXXX XXXX XXXX"),
                  const SB(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                      Expanded(child:  PaymentTextFields3(text: "Cvv/Cvc", text1: "123"),),
                      SB5(),
                      Expanded(child:  PaymentTextFields4(text: "Expiry Date", text1: "MM/YY"),),
                    ],
                  ),
                  const SB2(),
                  const TextButton3(),
                  const SB4(),


            ],
          ),
        ),
      ),

    );
  }
}
