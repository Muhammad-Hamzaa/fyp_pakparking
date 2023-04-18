import 'package:flutter/material.dart';
import 'package:pak_parking/Components/reusable_components.dart';
import 'package:pak_parking/Components/text_styles.dart';
import 'package:pak_parking/Main_Application/Login_Signup/login_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pak_parking/Main_Application/Forgot_Password/verification_code.dart';

class ForgotPassword extends StatefulWidget {
  static const String id = 'forgot_password';
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}
class _ForgotPasswordState extends State<ForgotPassword> {
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));
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
              const ForgotTerms(text1: "Please enter you registered Email ID or Username.", text2: "We will send a verification code to your registered email ID.",),
              const SB1(),
              const UserName(text: "Username or Email"),
              const SB2(),
              AppButtons(text: "Next", onPress: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=> const VerificationCode()));
               ScaffoldMessenger.of(context).showSnackBar(
                   const SnackBar(content: Text('Recovery email has been sent')));
             }),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                 AppHeadings().rememberedPass,
                 AppHeadingButton(text: "Login", onPress: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));
                 })
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
