import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pak_parking/Admin/admin_signup.dart';
import 'package:pak_parking/Components/constant_colors.dart';
import 'package:pak_parking/Components/text_styles.dart';
import '../Components/reusable_components.dart';
import '../Main_Application/Login_Signup/login_screen.dart';
import 'admin_panel.dart';

class AdminLogin extends StatefulWidget {
  static const String id = 'admin_login';
  const AdminLogin({Key? key}) : super(key: key);

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}
class _AdminLoginState extends State<AdminLogin> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        SystemNavigator.pop();
        return true;
      },
      child: Scaffold(
        backgroundColor: AppColors().white,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Column(
                children: [
                   const Logo(),
                   const SB2(),
                   TextButton1(text1: 'Admin Login', onPress: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                      },),
                   const SB2(),
                   const Email(),
                   const SB1(),
                   const Password(),
                   const SB(),
                   const TextButton2(),
                   const SB(),
                   AppButtons(onPress: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => const AdminPanel()));
                   }, text: 'Login',),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children:  [
                     AppHeadings().dontHaveAcc,
                     AppHeadingButton(onPress: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=> const AdminSignUp()));
                     }, text: 'Sign Up',),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
