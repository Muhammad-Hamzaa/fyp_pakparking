import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pak_parking/Components/constant_colors.dart';
import 'package:pak_parking/Components/text_styles.dart';
import '../Main_Application/Forgot_Password/forgot_password.dart';
import '../Main_Application/Home_Screens/home_screen.dart';

// Splash Image class
class SplashImage{
  Column splashImage = Column(
    children: [
      Center(
        child: Image(
          height: 200.h,
          image: const AssetImage("assets/logo/logo.png"),
        ),
      ),
      const SB(),
      Text('Pak Parking', style: TextStyle(fontFamily: 'Midfield Rounded', fontSize: 44.sp, color: AppColors().projectname)),
      Text('Making Parking Taste Better', style: TextStyle(fontFamily: 'Midfield Rounded', fontSize: 20.sp, color: AppColors().tagline)),
      Text('- SINCE 2022 -', style: TextStyle(fontFamily: 'TSKirt Regular', fontSize: 24.sp, color: Colors.black)),
    ],
  );

}

// Sized Box with default values initially with height and width 5
class SB extends StatelessWidget {
  final double h;
  final double w;
  const SB({Key? key,
    this.h = 5, this.w = 5,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: h.h,
      width: w.w,
    );
  }
}

// Sized Box with default values initially with height and width 10
class SB1 extends StatelessWidget {
  final double h;
  final double w;
  const SB1({Key? key,
    this.h = 10, this.w = 10,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: h.h,
      width: w.w,
    );
  }
}

// Sized Box with default values initially with height and width 15
class SB2 extends StatelessWidget {
  final double h;
  final double w;
  const SB2({Key? key,
    this.h = 15, this.w = 15,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: h.h,
      width: w.w,
    );
  }
}

// Sized Box with default values initially with height and width 20
class SB3 extends StatelessWidget {
  final double h;
  final double w;
  const SB3({Key? key,
    this.h = 20, this.w = 20,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: h.h,
      width: w.w,
    );
  }
}

// Sized Box with default values initially with height and width 25
class SB4 extends StatelessWidget {
  final double h;
  final double w;
  const SB4({Key? key,
    this.h = 25, this.w = 25,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: h.h,
      width: w.w,
    );
  }
}

// Sized Box with default values initially with height and width 30
class SB5 extends StatelessWidget {
  final double h;
  final double w;
  const SB5({Key? key,
    this.h = 30, this.w = 30,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: h.h,
      width: w.w,
    );
  }
}

// Logo Class for login pages
class Logo extends StatelessWidget {
  final String text;
  // final String text1;
  final String text2;
  final String logo;
  const Logo({Key? key,
    this.text = "Pak Parking",
    // this.text1 = "Making Parking Taste Better",
    this.text2 = "- SINCE 2022 -",
    this.logo = "assets/logo/logo.png"
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(image: AssetImage(logo), height: 110.h, width: 190.w,),
        SB(w: 0.w,),
        Text(text, style: AppText().logoStyle,),
        // Text(text1, style: AppText().logoStyle1,),
        Text(text2, style: AppText().logoStyle1,),
      ],
    );
  }
}

// TextButtons for Heading Admin Login And Normal Login
class TextButton1 extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final VoidCallback onPress;
  const TextButton1({Key? key,
  required this.onPress,
  required this.text1,
  this.text2 = "Hello,",
  this.text3 = "Welcome to Pak Parking"

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: (){},
          onLongPress: onPress,
          child: Text(text1, style: AppText().textButton1),
         ),
        SB(w: 0.w,),
        Center(child: Text(text2, style: AppText().greetings,)),
        Center(child: Text(text3, style: AppText().greetings,)),

      ],
    );
  }
}

// TextButtons for Forgot Password
class TextButton2 extends StatelessWidget {
  final String text1;
  const TextButton2({
    Key? key,
    this.text1 = "Forgot Password?",
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const ForgotPassword()));
        },
        child: Text(text1, style: AppText().forgotPassword)),
      ],
    );
  }
}

class TextButton3 extends StatelessWidget {
  final String text1;
  const TextButton3({
    Key? key,
    this.text1 = "Pay",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors().green,
      ),
      child: TextButton(onPressed: () {
        showDialog(context: context, builder: (context){
          return  AlertDialog(
            title: const Text("Want to proceed towards payment?",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16),),
            actions: [
              TextButton(
                onPressed: (){
                Navigator.pop(context);
              }, child: const Text("NO", style: TextStyle(color: Colors.red),), ),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeScreen(email: "", pass: "")));
             }, child: Text("YES", style: TextStyle(color: AppColors().green, )))
            ],
          );
        },);
        },

          child: Text(text1, style: AppText().payButton)),
    );
  }
}

// TextFormFields buttons for Email, Phone No and FullName etc.
class Email extends StatefulWidget {
   final TextEditingController? ctrl;
   const Email({Key? key,
     this.ctrl,
  }) : super(key: key);
  @override
  State<Email> createState() => _EmailState();
}
class _EmailState extends State<Email> {
  final emailCTRL = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.ctrl,
      decoration: InputDecoration(
          hintText: 'Email',
          fillColor: AppColors().textFieldBox,
          filled: true,
          hintStyle: AppText().textFormFiled,
          prefixIcon: Icon(
            Icons.email,
            color: AppColors().prefixIcon,
          ),
          focusedBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: AppColors().fieldBorderColor),
              borderRadius: BorderRadius.circular(10)),
          enabledBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: AppColors().fieldBorderColor),
              borderRadius: BorderRadius.circular(10))),
    );
  }
}

// TextForm Field for Password Box
class Password extends StatefulWidget {
  final TextEditingController? ctrl;
  const Password({Key? key,
  this.ctrl
  }) : super(key: key);
  @override
  State<Password> createState() => _PasswordState();
}
class _PasswordState extends State<Password> {
  final passCTRL = TextEditingController();
  bool obsecure = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.ctrl,
      obscureText: obsecure,
      decoration: InputDecoration(
          hintText: 'Enter Password',
          fillColor: AppColors().textFieldBox,
          filled: true,
          hintStyle: AppText().textFormFiled,
          prefixIcon: Icon(
            Icons.lock,
            color: AppColors().prefixIcon,
          ),
          suffixIcon: (IconButton(
            onPressed: () {
              obsecure ? obsecure = false : obsecure = true ;
              setState(() {}
              );
            },
            icon: obsecure ? Icon(Icons.visibility_off, color: AppColors().grey): Icon(Icons.remove_red_eye, color: AppColors().green,) ,
          )),
          focusedBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: AppColors().fieldBorderColor),
              borderRadius: BorderRadius.circular(10)),
          enabledBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: AppColors().fieldBorderColor),
              borderRadius: BorderRadius.circular(10))),
    );
  }
}

// TextForm Field for PhoneNo Box
class PhoneNo extends StatefulWidget {
  const PhoneNo({Key? key}) : super(key: key);
  @override
  State<PhoneNo> createState() => _PhoneNoState();
}
class _PhoneNoState extends State<PhoneNo> {
  final phoneCTRL = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: phoneCTRL,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          hintText: 'Phone No.',
          fillColor:  AppColors().greyBox,
          filled: true,
          hintStyle: const TextStyle(fontFamily: 'Rubik Regular'),
          prefixIcon: Icon(
            Icons.phone,
            color: AppColors().prefixIcon,
          ),
          focusedBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: AppColors().fieldBorderColor),
              borderRadius: BorderRadius.circular(10)),
          enabledBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: AppColors().fieldBorderColor),
              borderRadius: BorderRadius.circular(10))),
    );
  }
}

//TextForm Field for UserName
class UserName extends StatefulWidget {
  final String text;
  const UserName({Key? key,
  required this.text}) : super(key: key);

  @override
  State<UserName> createState() => _UserNameState();
}
class _UserNameState extends State<UserName> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: widget.text,
          fillColor:  AppColors().greyBox,
          filled: true,
          hintStyle:  AppText().userName,
          prefixIcon: Icon(
            Icons.account_circle,
            color: AppColors().prefixIcon,
          ),
          focusedBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: AppColors().fieldBorderColor),
              borderRadius: BorderRadius.circular(10)),
          enabledBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: AppColors().fieldBorderColor),
              borderRadius: BorderRadius.circular(10))),
    );
  }
}

// Containers for Login, Signup (For Login Buttons)
class AppButtons extends StatefulWidget {
  final String text;
  final VoidCallback onPress;
  const AppButtons({Key? key,
  required this.text,
  required this.onPress,
  }) : super(key: key);

  @override
  State<AppButtons> createState() => _AppButtonsState();
}
class _AppButtonsState extends State<AppButtons> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors().green,
        ),
        child: Center(
          child: TextButton(
          onPressed: widget.onPress,
          child: Text(
              widget.text,
              style: AppText().appButton
            ),
          ),
        ));
  }
}

// AppNavigation button like SignUp Buttons
class AppHeadingButton extends StatefulWidget {
  final VoidCallback onPress;
  final String text;
  const AppHeadingButton({Key? key,
  required this.text,
  required this.onPress
  }) : super(key: key);

  @override
  State<AppHeadingButton> createState() => _AppHeadingButtonState();
}
class _AppHeadingButtonState extends State<AppHeadingButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: widget.onPress,
    child: Text(widget.text, style: AppText().signUp,), );
  }
}

// IconButton (Back Button)
class IconBackButton extends StatelessWidget {
  final VoidCallback onPress;
  const IconBackButton({Key? key,
  required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          color: Colors.grey,
          onPressed: onPress,
          icon: const Icon(
              CupertinoIcons.arrow_left,
          ),
        ),
        SB(w: 58.h),
        const Image(
          height: 55,
          width: 95,
          image: AssetImage('assets/logo/logo.png'),
        ),

      ],
    );
  }
}

// Reusable TextFields for User Profile Data which will be fetch from Firebase
class ReusableTextField extends StatelessWidget {
  final String text;

  const ReusableTextField({Key? key,
  required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(

        label: Text(text),
        labelStyle: AppText().forgotPassTerms1,
        enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
        color: AppColors().black,
        )

        ),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppColors().green,

            )
        ),
      ),
    );
  }
}

// ForgotPassword Terms (it consists of 2 lines) basically, guide to input data in text field
class ForgotTerms extends StatelessWidget {
  final String text1;
  final String text2;
  const ForgotTerms({Key? key,
  required this.text1,
  required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text1, style: AppText().forgotPassTerms1, textAlign: TextAlign.left,),
        const SB(),
        Text(text2, style: AppText().forgotPassTerms2,),
      ],
    );
  }
}

// ResetPassword Terms (it consists of 1 lines) basically, guide to input data in a Row
class ResetPass extends StatelessWidget {
  final String text1;
  const ResetPass({Key? key,
    required this.text1,
     }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Text(text1, style: AppText().forgotPassTerms1)

      ],
    );
  }
}

// Notification Container
class NotificationContainer extends StatefulWidget {
  final String text1;
  final String text2;
  final String text3;
  const NotificationContainer({Key? key,
  required this.text1, required this.text2, required this.text3}) : super(key: key);

  @override
  State<NotificationContainer> createState() => _NotificationContainerState();
}

class _NotificationContainerState extends State<NotificationContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SB1(),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: AppColors().greyBox,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [BoxShadow(color: AppColors().green, blurRadius: 2.0)]),
          child:  Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: Text(
                    widget.text1,
                    style: TextStyle(fontWeight: FontWeight.bold,color: AppColors().black),
                  ),
                  subtitle: Text(widget.text2, style: TextStyle(color: AppColors().black),textAlign: TextAlign.justify),
                ),
                const SB1(),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(widget.text3,
                      style: TextStyle(color: AppColors().black)),
                ),

              ],
            ),
          ),

        ),
      ],
    );
  }
}
