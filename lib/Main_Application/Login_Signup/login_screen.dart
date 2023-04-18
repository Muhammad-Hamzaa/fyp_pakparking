import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pak_parking/Admin/admin_login.dart';
import 'package:pak_parking/Components/constant_colors.dart';
import 'package:pak_parking/Main_Application/Login_Signup/signup_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Components/reusable_components.dart';
import '../../Components/text_styles.dart';
import '../../Components/utils.dart';
import '../Home_Screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  final auth = FirebaseAuth.instance;
  final emailCTRL = TextEditingController();
  final passCTRL = TextEditingController();
  final phoneCTRL = TextEditingController();
  bool obsecure = true;
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
                      TextButton1(text1: 'Login', onPress: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const AdminLogin()));
                      },),
                      const SB2(),
                      Email(ctrl: emailCTRL,),
                      const SB1(),
                      Password(ctrl: passCTRL,),
                      const SB(),
                      const TextButton2(),
                      const SB(),
                      AppButtons(
                          text: "Login",
                          onPress: (){
                        isLogin();
                      }),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                          AppHeadings().dontHaveAcc,
                          AppHeadingButton(onPress: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUpScreen()));
                          }, text: 'Sign Up',
                        ),
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


  void isLogin(){
    auth.signInWithEmailAndPassword(
        email: emailCTRL.text.toString() ,
        password: passCTRL.text.toString() ).then((value) async {
      Utils().toast("Logged in with ${value.user!.email}");
      //or Utils().toast("Logged in with ${value.user!.email}"); it's interpolation
      Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen(email: emailCTRL.text.toString(), pass: passCTRL.text.toString(),)
      ));
      SharedPreferences sp =  await SharedPreferences.getInstance();
      sp.setString('email', emailCTRL.text.toString());
      sp.setString('password', passCTRL.text.toString());
    }).onError((error, stackTrace) {
      Utils().toast(error.toString());
    }
    );
  }
}
