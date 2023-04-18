import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pak_parking/Components/reusable_components.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Components/constant_colors.dart';
import '../Components/drawer_view.dart';
import '../Main_Application/Login_Signup/login_screen.dart';

class UserProfile extends StatefulWidget {
  static const String id = 'user_profile';
   const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }
  String email= '' , pass = '' ;
  void loadData()async{
    SharedPreferences sp = await SharedPreferences.getInstance();
   email =  sp.getString('email') ?? '';
   pass = sp.getString('password') ?? '';
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(color: AppColors().green),
          backgroundColor: Colors.transparent,
          title:  Text("User Profile", style: TextStyle(color: AppColors().black),),elevation: 0,
          centerTitle: true,
        ),
        drawer: DrawerView(onPress: () {
          Navigator.pushNamed(context, LoginScreen.id);

        },
          child: ListView(),),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            children: [
              const SB1(),
              const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/drawer/avatar.png'),
              ),
              const SB3(),
              Text('User Profile Data',
              style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 30.sp),
              ),
              const SB2(),
              Text('From Firebase',
                style: TextStyle(fontStyle: FontStyle.italic,
                    fontSize: 25.sp),
              ),
              const SB3(),
              Text('Email of Logged in User:   $email', style: TextStyle(fontSize: 15.sp),),
              const SB1(),
              Text('Password of Logged in User:    $pass',style: TextStyle(fontSize: 15.sp),),
              const SB(),
              const ReusableTextField(text: "Full Name"),
              const SB(),
              const ReusableTextField(text: "Email Address"),
              const SB(),
              const ReusableTextField(text: "Phone Number"),
              const SB(),
              const ReusableTextField(text: "Password"),
              const SB2(),
              AppButtons(text: "Save", onPress: (){}),
            ],
          ),
        ),
      )
    );
  }
}
