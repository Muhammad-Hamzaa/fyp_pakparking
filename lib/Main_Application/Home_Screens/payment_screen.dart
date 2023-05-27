import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pak_parking/Components/text_styles.dart';
import 'package:pak_parking/Main_Application/Home_Screens/payment_options/cash_payment.dart';
import 'package:pak_parking/Main_Application/Home_Screens/payment_options/credit_card.dart';
import 'package:pak_parking/Main_Application/Home_Screens/payment_options/easypaisa_jazzcash.dart';
import 'package:pak_parking/Main_Application/Home_Screens/payment_options/google_pay.dart';
import 'package:pak_parking/Main_Application/Login_Signup/login_screen.dart';

import '../../Components/constant_colors.dart';
import '../../Components/user_drawer_view.dart';
import '../../Components/reusable_components.dart';

class PaymentScreen extends StatefulWidget {
  static const String id = 'payment_screen';
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int value = 0;
  final paymentLabels = [
    "Google Pay",
    "Cash Payment",
    "Credit card / Debit Card",
    "Easypaisa / Jazzcash"
  ];

  final paymentIcons = [
    Icons.account_balance_wallet,
    Icons.money,
    Icons.credit_card,
    Icons.payment_outlined
  ];
  String level = "Credit Card";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().white,
        appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors().green),
        title:  Text("Add Payment Method", style: TextStyle(color: AppColors().black),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SB2(),
              Text("    Choose your payment method:", style: AppText().paymentMethodHeading,),
              const SB2(),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                   border: Border(

                bottom: BorderSide(
                color: AppColors().fieldBorderColor, // Color for focused border
                width: 2.0,
                  // Width of the focused border
                  ),
                     top: BorderSide(
                       color: AppColors().fieldBorderColor, // Color for focused border
                       width: 2.0, // Width of the focused border
                     ),
                     left: BorderSide(
                       color: AppColors().fieldBorderColor, // Color for focused border
                       width: 2.0, // Width of the focused border
                     ),
                     right: BorderSide(
                       color: AppColors().fieldBorderColor, // Color for focused border
                       width: 2.0, // Width of the focused border
                     ),
                  ),
                ),
                child: Column(
                  children: [
                    RadioListTile(
                        value: "Google Pay",
                        groupValue: level,
                        title: const Text("Google Pay"),
                        secondary: Image(height: 50.h, width: 48.w, image: const AssetImage("assets/payment_logo/gpay.jpg")),
                        onChanged: (value){ setState(() {
                          level = value.toString();
                          });
                      }),
                    RadioListTile(
                        value: "Cash Payment",
                        groupValue: level,
                        title: const Text("Cash Payment"),
                        secondary: Image(height: 40.h, width: 45.w, image: const AssetImage("assets/payment_logo/cash.jpg")),
                        onChanged: (value){ setState(() {
                          level = value.toString();
                        });
                        }),

                    RadioListTile(
                        value: "Credit Card / Debit Card",
                        groupValue: level,
                        title: const Text("Credit Card / Debit Card"),
                        secondary: Image(height: 40.h, width: 55.w, image: const AssetImage("assets/payment_logo/creditdebit.png")),
                        onChanged: (value){ setState(() {
                          level = value.toString();
                        });
                        }),
                    RadioListTile(
                        value: "Easypaisa / Jazzcash",
                        groupValue: level,
                        title: const Text("Easypaisa / Jazzcash"),
                        secondary: Image(height: 60.h, width: 70.w, image: const AssetImage("assets/payment_logo/easypaisajazzcash.jpg")),
                        onChanged: (value){ setState(() {
                          level = value.toString();
                        }
                      );
                    }
                    ),
                  ],
                ),
              ),
              const SB2(),
              Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors().green,
              ),
              child: Center(
                child: TextButton(
                  onPressed: (){ setState(() {
                    if(level == "Google Pay"){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const GooglePay()));
                    }
                    else if(level == "Cash Payment"){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const CashPayment()));
                    }
                    else if(level == "Credit Card / Debit Card"){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const CreditCard()));
                    }
                    else if(level == "Easypaisa / Jazzcash"){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const EasyPaisaJazzCash()));
                    }
                  }
                );
               },
                child: Text(
                      "Confirm Payment Method",
                      style: AppText().paymentMethodButton
                    ),
                  ),
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Text("Enter Card Details", style: AppText().paymentMethodHeading,),
// const ReusableTextField(text: "Cardholder Name"),
// const SB(),
// const ReusableTextField(text: "Card Number"),
// const SB(),
// const ReusableTextField(text: "Cvv/Cvc"),
// const SB(),
// const ReusableTextField(text: "Expiry Date"),
// const SB1(),
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text(
// "cvv/cvc",
// style: TextStyle(
// fontSize: 14.sp,
// color: const Color(0xFF1A1A1A),
// ),
// ),
// TextField(
// keyboardType: TextInputType.number,
// style: TextStyle(
// fontSize: 14.sp,
// color: Theme.of(context).colorScheme.primary,
// ),
// cursorColor:
// Theme.of(context).colorScheme.primary,
// decoration: InputDecoration(
// hintText: "123",
// hintStyle: TextStyle(
// fontSize: 14.sp,
// color: const Color(0xFF1A1A1A)
//     .withOpacity(0.2494),
// ),
// filled: true,
// fillColor: Colors.white,
// enabledBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(10.w),
// borderSide: BorderSide(
// color: const Color(0xFF1A1A1A)
//     .withOpacity(0.1),
// width: 1.sp,
// ),
// ),
// focusedBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(10.w),
// borderSide: BorderSide(
// color:
// Theme.of(context).colorScheme.primary,
// width: 1.sp,
// ),
// ),
// ),
// ),
// ],
// ),
// const SB4(),
// const TextButton3(),
// const SB4(),
// const PaymentTextFields(text: "Card Number", text1: "XXXX XXXX XXXX XXXX")
// Expanded(
// child: ListView.separated(
// itemCount: paymentLabels.length,
// itemBuilder: (context, index) {
// return ListTile(
// leading: Radio(
// activeColor: AppColors().green,
// value: index,
// groupValue: value,
// onChanged: (i) => setState(() => value = i!),
// ),
// title: Text(
// paymentLabels[index],
// style: TextStyle(color: AppColors().black),
// ),
// trailing: Icon(paymentIcons[index], color: AppColors().grey),
// );
// },
// separatorBuilder: (context, index) {
// return const Divider();
// },
// ),
// ),