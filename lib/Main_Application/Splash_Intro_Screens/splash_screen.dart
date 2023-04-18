import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pak_parking/Components/reusable_components.dart';

import 'onboarding_screen.dart';


class SplashScreen extends StatefulWidget {
  static const String id = 'splash_screen';
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), ()=> {
    Navigator.push(
    context, MaterialPageRoute(builder: (context) =>   const OnBoardingScreen()))
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
              SplashImage().splashImage,
              ]
      ),
    );
  }
}