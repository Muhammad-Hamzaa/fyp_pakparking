import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pak_parking/Admin/admin_signup.dart';
import 'package:pak_parking/Admin/admin_login.dart';
import 'package:pak_parking/Admin/admin_panel.dart';
import 'package:pak_parking/Main_Application/Forgot_Password/forgot_password.dart';
import 'package:pak_parking/Main_Application/Login_Signup/login_screen.dart';
import 'package:pak_parking/User/user_profile.dart';
import 'package:pak_parking/User/user_settings.dart';
import 'package:firebase_core/firebase_core.dart';

import 'Main_Application/Forgot_Password/reset_password.dart';
import 'Main_Application/Forgot_Password/verification_code.dart';
import 'Main_Application/Home_Screens/home_screen.dart';
import 'Main_Application/Home_Screens/parking_history.dart';
import 'Main_Application/Home_Screens/payment_screen.dart';
import 'Main_Application/Login_Signup/signup_screen.dart';
import 'Main_Application/Splash_Intro_Screens/splash_screen.dart';
import 'User/User_Settings_Views/complaint.dart';
import 'User/User_Settings_Views/notifications.dart';
import 'User/User_Settings_Views/terms_of_use.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      builder: (context , child)=> MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pak Parking',
        theme: ThemeData(primarySwatch: Colors.green),
        initialRoute: SplashScreen.id, //initialRoute means the first page of your app
//riyan file
        routes: {
          // In routes, you have to define the static routes name
          PaymentScreen.id: (context) =>  PaymentScreen(),
          UserParkingHistory.id: (context) => const UserParkingHistory(),
          SplashScreen.id: (context) => const SplashScreen(),
          HomeScreen.id: (context) =>   const HomeScreen(email: '', pass: '',),
          LoginScreen.id: (context) => const LoginScreen(),
          SignUpScreen.id: (context) => const SignUpScreen(),
          ForgotPassword.id: (context) => const ForgotPassword(),
          VerificationCode.id: (context) => const VerificationCode(),
          ResetPassword.id: (context) => const ResetPassword(),
          AdminPanel.id: (context) => const AdminPanel(),
          AdminLogin.id: (context) => const AdminLogin(),
          UserSettings.id: (context) => const UserSettings(),
          UserProfile.id: (context) => const UserProfile(),
          Complain.id: (context) => Complain(),
          Notifications.id: (context) => const Notifications(),
          HowItWorks.id: (context) => const HowItWorks(),
          AdminSignUp.id: (context) => const AdminSignUp()
        },
      ),
    );
  }
}