import 'package:flutter/material.dart';
import 'package:pak_parking/Main_Application/Forgot_Password/forgot_password.dart';
import 'package:pak_parking/Main_Application/Login_Signup/login_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Components/reusable_components.dart';
import '../../Components/text_styles.dart';

class ResetPassword extends StatefulWidget {
  static const String id = 'reset_password';
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}
 bool obsecure = true;
class _ResetPasswordState extends State<ResetPassword> {
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
              const ResetPass(text1: "Please enter a new password."),
              const SB2(),
              const Password(),
              const SB1(),
              const Password(),
              const SB2(),
              AppButtons(text: "Change Password", onPress: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));
                ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Now, you can login with your new credentials')));
              },)
            ],
          ),
        ),
      ),
    );
  }
}
