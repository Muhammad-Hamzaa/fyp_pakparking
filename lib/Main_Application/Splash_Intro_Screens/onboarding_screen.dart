import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:pak_parking/Main_Application/Login_Signup/login_screen.dart';
import '../../Components/constant_colors.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: Colors.white,
      pages: [

        PageViewModel(
            titleWidget: Padding(
              padding:  EdgeInsets.only(top: 150.h),
              child: Image(
                height: 225.h,
                width: 325.w,
                image: const AssetImage("assets/boarding_screens/Onboarding Screen 1.png"),
              fit: BoxFit.fill,
              ),
            ),
          bodyWidget: Column(
            children: [
              Text("Best Parking Spot", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp, color: AppColors().black ),),
              SizedBox(height: 10.h,),
              Text("Here you can find out\nparking spots for your \n desired destination",style: TextStyle( fontSize: 15.sp, color: Colors.grey ),)
            ],
          )
        ),
        PageViewModel(
            titleWidget: Padding(
              padding:  EdgeInsets.only(top: 150.h),
              child: Image(
                height: 225.h,
                width: 325.w,
                image: const AssetImage("assets/boarding_screens/Onboarding Screen 2.png"),
                fit: BoxFit.fill,
              ),
            ),
            bodyWidget: Column(
              children: [
                Text("Quick Navigation", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp, color: AppColors().black ),),
                SizedBox(height: 10.h,),
                // Text("Description",style: TextStyle( fontSize: 15.sp, color: black ),)
              ],
            )
        ),
        PageViewModel(
            titleWidget: Padding(
              padding:  EdgeInsets.only(top: 150.h),
              child: Image(
                height: 225.h,
                width: 325.w,
                image: const AssetImage("assets/boarding_screens/Onboarding Screen 3.png"),
                fit: BoxFit.fill,
              ),
            ),
            bodyWidget: Column(
              children: [
                Text("Easy Payment", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp, color: AppColors().black ),),
                SizedBox(height: 10.h,),
                // Text("Description",style: TextStyle( fontSize: 15.sp, color: black ),)
              ],
            )
        ),
      ],
      dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          activeColor: Colors.green,
          color: AppColors().black,
          spacing: const EdgeInsets.symmetric(horizontal: 6.0),
          activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0)
        ),
      ),

      showSkipButton: true,
      showBackButton: false,
      // back: const Icon(Icons.arrow_back),
      showNextButton: true,
      skip: const Text("Skip"),
      done: const Text("Done"),
      next: const Text("Next"),
      onDone: () {
           Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));// On button pressed
      },
      skipStyle: TextButton.styleFrom(foregroundColor: AppColors().black),
      doneStyle: TextButton.styleFrom(foregroundColor: Colors.green),
      nextStyle: TextButton.styleFrom(foregroundColor: AppColors().black),

    );
  }
}

