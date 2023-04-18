import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pak_parking/Admin/admin_login.dart';
import '../Components/reusable_components.dart';
import '../Components/text_styles.dart';

class AdminSignUp extends StatefulWidget {
  static const String id = 'admin_signup';
  const AdminSignUp({Key? key}) : super(key: key);

  @override
  State<AdminSignUp> createState() => _AdminSignUpState();
}

class _AdminSignUpState extends State<AdminSignUp> {
  final phoneCTRL = TextEditingController();
  final passCTRL = TextEditingController();
  final emailCTRL = TextEditingController();
  bool obsecure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Column(
              children: [
                const SB1(),
                IconBackButton(onPress: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const AdminLogin()));
                }),
                const SB(),
                AppHeadings().logoSubHeading1,
                AppHeadings().logoSubHeading2,
                const SB1(),
                AppHeadings().signUpHeading3,
                const SB(),
                AppHeadings().signUpHeading2,
                const SB2(),
                const UserName(text: "Username"),
                const SB1(),
                const Email(),
                const SB1(),
                const PhoneNo(),
                const SB1(),
                const Password(),
                const SB1(),
                AppButtons(text: "Create Account", onPress: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const AdminLogin()));
                }),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    AppHeadings().alreadyHaveAcc,
                    AppHeadingButton(
                      text: 'Login',
                      onPress: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const AdminLogin()));
                      }
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
}
