import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pak_parking/Components/constant_colors.dart';

class AppText{
  TextStyle paymentMethodHeading = TextStyle(fontFamily: 'TS Kirt Regular', fontWeight: FontWeight.bold, fontSize: 16.sp, color: AppColors().black);
  TextStyle complaintTitle = TextStyle(fontFamily: 'TS Kirt Regular', fontWeight: FontWeight.bold, fontSize: 14.sp, color: AppColors().black);
  TextStyle logoStyle = TextStyle(fontFamily: 'Midfield Rounded', fontSize: 24.sp, color: AppColors().logoStyle);
  TextStyle logoStyle1 = TextStyle(fontFamily: 'TS Kirt Regular', fontSize: 14.sp, color: AppColors().black);
  TextStyle logoStyle2 = TextStyle(fontFamily: 'TS Kirt Regular', fontSize: 14.sp, color: AppColors().black);
  TextStyle textButton1 = TextStyle(fontFamily: 'Rubik Medium',  fontSize: 20.sp,  color: AppColors().textButton1);
  TextStyle greetings = TextStyle(fontFamily: 'Rubik Regular',  fontSize: 17.sp,  color: AppColors().greetings);
  TextStyle textFormFiled = const TextStyle(fontFamily: 'Rubik Regular');
  TextStyle forgotPassword = TextStyle(fontFamily: 'Rubik Regular', fontWeight: FontWeight.w500, color: AppColors().green, decoration: TextDecoration.underline, decorationThickness: 1.5.sp);
  TextStyle appButton = TextStyle(fontFamily: 'Rubik Regular', fontSize: 18.sp, color: AppColors().white);
  TextStyle paymentMethodButton = TextStyle(fontFamily: 'Rubik Regular', fontSize: 16.sp, color: AppColors().white);
  TextStyle dontHaveAcc = TextStyle(fontFamily: 'Rubik Regular', fontSize: 13.5.sp, color: AppColors().black);
  TextStyle alreadyHaveAcc = TextStyle(fontFamily: 'Rubik Regular', fontSize: 13.5.sp, color: AppColors().black);
  TextStyle signUp = TextStyle(fontFamily: 'Rubik Medium', fontSize: 13.5.sp, fontWeight: FontWeight.bold, color: AppColors().green);
  TextStyle logoSubHeading1 = TextStyle(fontFamily: 'Midfield Rounded', fontSize: 14.sp, color: const Color(0xff494949));
  TextStyle logoSubHeading2 = TextStyle(fontFamily: 'TS Kirt Regular', fontSize: 10.sp, color: Colors.black);
  TextStyle signUpHeading1 = TextStyle(fontFamily: 'Rubik Medium',  fontSize: 20.sp,  color: AppColors().textButton1);
  TextStyle signUpHeading2 = TextStyle(fontFamily: 'Rubik Regular', fontSize: 17.sp, color: AppColors().greetings);
  TextStyle userName = const TextStyle(fontFamily: 'Rubik Regular');
  TextStyle login = TextStyle(fontFamily: 'Rubik Regular', fontSize: 18.sp, color: AppColors().white);
  TextStyle createAcc = TextStyle(fontFamily: 'Rubik Regular', fontSize: 18.sp, color: AppColors().white);
  TextStyle forgotPass = TextStyle(fontFamily: 'Rubik Medium', fontSize: 20.sp, color: AppColors().greenForgot);
  TextStyle forgotPassTerms1 = TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp,);
  TextStyle forgotPassTerms2 = TextStyle(fontSize: 12.3.sp);
  TextStyle rememberedPass = TextStyle(fontFamily: 'Rubik Regular', fontSize: 13.5.sp, color: AppColors().black);
  TextStyle payButton = TextStyle(fontFamily: 'Rubik Medium', fontSize: 13.5.sp, fontWeight: FontWeight.bold, color: AppColors().white);

}

class AppHeadings{
  Text rememberedPass = Text("Remembered Password?",style: AppText().rememberedPass);
  Text forgotPass =  Text("Forgot \nPassword", style: AppText().forgotPass);
  Text dontHaveAcc = Text("Don't have an account?", style: AppText().dontHaveAcc);
  Text alreadyHaveAcc = Text("Already have an account?", style: AppText().alreadyHaveAcc);
  Text signUp = Text("Sign Up", style: AppText().signUp);
  Text loginButton = Text("Login", style: AppText().login);
  Text userData = Text("Save", style: AppText().login);
  Text createAcc = Text("Create Account", style: AppText().createAcc);
  Text logoSubHeading1 = Text("Pak Parking", style: AppText().logoSubHeading1);
  Text logoSubHeading2 = Text("- SINCE 2022 -", style: AppText().logoSubHeading2);
  Center signUpHeading1 = Center(child: Text("Sign Up", style: AppText().signUpHeading1));
  Center signUpHeading2 = Center(child: Text("Hello,\nWelcome to Pak Parking", textAlign: TextAlign.center, style: AppText().signUpHeading2));
  Center signUpHeading3 = Center(child: Text("Admin Sign Up", style: AppText().signUpHeading1));

}

