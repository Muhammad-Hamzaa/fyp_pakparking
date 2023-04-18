import 'package:flutter/material.dart';
import 'package:pak_parking/Main_Application/Forgot_Password/forgot_password.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pak_parking/Main_Application/Forgot_Password/reset_password.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../Components/reusable_components.dart';
import '../../Components/text_styles.dart';

class VerificationCode extends StatefulWidget {
  static const String id = 'verification_code';
  const VerificationCode({Key? key}) : super(key: key);

  @override
  State<VerificationCode> createState() => _VerificationCodeState();
}

class _VerificationCodeState extends State<VerificationCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 65.h),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    color: Colors.grey,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const ForgotPassword()));
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                    ),
                  ),
                  const SB1(),
                  AppHeadings().forgotPass
                ],
              ),
              const SB3(),
              const Logo(),
              const SB3(),
              const ForgotTerms(text1: "Please enter you verification code.", text2: "We have sent a verification code to your registered email ID."),
              const SB2(),
              PinCodeTextField(
                  appContext: context,
                  length: 6,
                  //to hide the otp, we use obscure
                  obscureText: true,
                  //to imposing a fix letter to shown when entering otp
                  obscuringCharacter: '*',
                  //to enable the otp, we use enabled. by default true he hota but kbi bnd krna ho to false direct
                  enabled: true,

                  //to decorate this, just like the box decoration in container
                  pinTheme: PinTheme(
                    // shape: PinCodeFieldShape.circle
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(10),
                      fieldHeight: 50,
                      fieldWidth: 40,

                      //below 3 properties aren't working
                      // activeFillColor: const Color.fromARGB(255, 16, 207, 188),
                      // inactiveFillColor: const Color.fromARGB(255, 52, 9, 221),
                      // selectedFillColor: const Color.fromARGB(255, 13, 17, 237),

                      //inactive wo jo abi fill krne baqe and cursor unpr nh gya
                      inactiveColor: const Color(0xFF000000),
                      //selected wo jin-pr cursor hai abi
                      selectedColor: const Color(0xff29b6f6),
                      //active jinme values chle gye unka color change krne ke lye
                      activeColor: const Color(0xff4caf50)
                  ),

                  //to change cursor color which is showing in boxes
                  cursorColor: Colors.teal,
                  //to bound a specific keyboard type
                  keyboardType: TextInputType.number,
                  onChanged: (value) {}),
                  const SB1(),
                  AppButtons(text: "Verify", onPress: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const ResetPassword()));
                    ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Thanks for verification')));
                 }
              )
            ],
          ),
        ),
      ),
    );
  }
}
