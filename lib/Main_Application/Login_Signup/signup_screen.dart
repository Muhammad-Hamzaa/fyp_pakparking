import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pak_parking/Main_Application/Login_Signup/login_screen.dart';
import 'package:pak_parking/Components/constant_colors.dart';

import '../../Components/reusable_components.dart';
import '../../Components/text_styles.dart';
import '../../Components/utils.dart';

class SignUpScreen extends StatefulWidget {
  static const String id = 'signup_screen';
  const SignUpScreen({Key? key}) : super(key: key);
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}
class _SignUpScreenState extends State<SignUpScreen> {
  final auth = FirebaseAuth.instance;
  final emailCTRL = TextEditingController();
  final passCTRL = TextEditingController();
  final phoneCTRL = TextEditingController();
  bool obsecure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().white,

      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Column(
             children: [
                const SB1(),
                IconBackButton(onPress: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));
                }),
                const SB(),
                AppHeadings().logoSubHeading1,
                AppHeadings().logoSubHeading2,
                const SB1(),
                AppHeadings().signUpHeading1,
                const SB(),
                AppHeadings().signUpHeading2,
                const SB2(),
                const UserName(text: "Username"),
                const SB1(),
                Email(ctrl: emailCTRL,),
                const SB1(),
                const PhoneNo(),
                const SB1(),
                Password(ctrl: passCTRL,),
                const SB2(),
                AppButtons(
                    text: "Sign Up",
                    onPress:()
                    {signUp();
                    }
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    AppHeadings().alreadyHaveAcc,
                    AppHeadingButton(onPress: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));
                     }, text: 'Login',
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void signUp(){
    auth.createUserWithEmailAndPassword(
        email: emailCTRL.text.toString() ,
        password: passCTRL.text.toString() ).then((value) {
          Utils().toast("Account Created Successfully");
          Navigator.pushNamed(context, LoginScreen.id);
    }).onError((error, stackTrace) {
      Utils().toast(error.toString());
    });
  }
}
