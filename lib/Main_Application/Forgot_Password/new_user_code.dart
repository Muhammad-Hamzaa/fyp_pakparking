import 'package:flutter/material.dart';
import 'package:pak_parking/Components/reusable_components.dart';
import 'package:pak_parking/Main_Application/Login_Signup/login_screen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pak_parking/Components/constant_colors.dart';

import '../Login_Signup/signup_screen.dart';

class NewUserCode extends StatefulWidget {
  static const String id = 'new_user_code';
  const NewUserCode({Key? key}) : super(key: key);

  @override
  State<NewUserCode> createState() => _NewUserCodeState();
}

class _NewUserCodeState extends State<NewUserCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SB(h: 50.h,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SB1(),
                  IconButton(
                    color: Colors.grey,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUpScreen()));
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                    ),
                  ),
                  const SB(),
                  Text(
                    'Welcome to \nPak Parking',
                    style: TextStyle(
                        fontFamily: 'Rubik Medium',
                        fontSize: 20.sp,
                        color: AppColors().greenForgot),
                  ),
                ],
              ),
              const SB5(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Image(
                    height: 120,
                    width: 220,
                    image: AssetImage('assets/logo/logo.png'),
                  ),
                  SB(),
                  Text('Pak Parking', style: TextStyle(fontFamily: 'Midfield Rounded', fontSize: 17, color: Color(0xff494949))),
                  // Text('Making Parking Taste Better', style: TextStyle(fontFamily: 'Midfield Rounded', fontSize: 14, color: Color(0xffcce95b))),
                  Text('- SINCE 2022 -', style: TextStyle(fontFamily: 'TS Kirt Regular', fontSize: 12, color: Colors.black)),
                  SB4(),
                    ],
                 ),
                SB(h: 40.h,),
                Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Please enter you verification code.', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),),
                      ],
                    ),
                    const SB(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('We have sent a verification code to your entered email ID.', style: TextStyle(fontSize: 12.3.sp),),
                      ],
                    ),
                    const SB4(),
                    PinCodeTextField(
                        appContext: context,
                        length: 6,
                        //to hide the otp, we use obscure
                        obscureText: true,
                        //to imposing a fix letter to shown when entering otp
                        obscuringCharacter: '*',
                        //to enable the otp, we use enabled. by default true he hota but kbi bnd krna ho to false direct
                        enabled: true,

                        //to decorate this, just like the box decoration in container
                        pinTheme: PinTheme(
                          // shape: PinCodeFieldShape.circle
                            shape: PinCodeFieldShape.box,
                            borderRadius: BorderRadius.circular(10),
                            fieldHeight: 50,
                            fieldWidth: 40,

                            //below 3 properties aren't working
                            // activeFillColor: const Color.fromARGB(255, 16, 207, 188),
                            // inactiveFillColor: const Color.fromARGB(255, 52, 9, 221),
                            // selectedFillColor: const Color.fromARGB(255, 13, 17, 237),

                            //inactive wo jo abi fill krne baqe and cursor unpr nh gya
                            inactiveColor: const Color(0xFF000000),
                            //selected wo jin-pr cursor hai abi
                            selectedColor: const Color(0xff29b6f6),
                            //active jinme values chle gye unka color change krne ke lye
                            activeColor: const Color(0xff4caf50)
                        ),

                        //to change cursor color which is showing in boxes
                        cursorColor: Colors.teal,
                        //to bound a specific keyboard type
                        keyboardType: TextInputType.number,
                        onChanged: (value) {}),
                    const SB4(),
                    Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:  AppColors().button,
                        ),
                        child: Center(
                          child:  TextButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text("Congratulations! You're Successfully Registered.")));
                            },
                            child: Text(
                              'Verify',
                                style: TextStyle(
                                fontFamily: 'Rubik Regular',
                                fontSize: 18.sp,
                                color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
