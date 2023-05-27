import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pak_parking/Components/reusable_components.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Main_Application/Home_Screens/home_screen.dart';
import '../Main_Application/Home_Screens/parking_history.dart';
import '../Main_Application/Home_Screens/payment_screen.dart';
import '../User/User_Settings_Views/complaint.dart';
import '../User/User_Settings_Views/notifications.dart';
import '../User/user_settings.dart';
import 'constant_colors.dart';

class UserDrawerView extends StatefulWidget {

  final VoidCallback onPress;
 const UserDrawerView({Key? key, required this.onPress , required ListView child}) : super(key: key);

  @override
  State<UserDrawerView> createState() => _UserDrawerViewState();
}
class _UserDrawerViewState extends State<UserDrawerView> {
  @override

  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }
  String email= '';
  void loadData()async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    email =  sp.getString('email') ?? '';
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Drawer(
      child: ListView(
        children: [
           UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: AppColors().green,
            ),
            currentAccountPicture: const CircleAvatar(
              backgroundImage: AssetImage('assets/drawer/avatar.png'),
            ),
            accountName: const Text('Muhammad Hamza'),
            accountEmail: Text(email.toString(), style: TextStyle(fontSize: 15.sp),),
          ),
          const SB2(),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: Text(
              'Home Screen',
              style: GoogleFonts.poppins(),
            ),onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeScreen(email: '', pass: '',)));
          },
          ),
          ListTile(
            leading: const Icon(Icons.wallet_outlined),
            title: Text(
              'Payment methods',
              style: GoogleFonts.poppins(),
            ),onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> PaymentScreen()));
          },
          ),
          ListTile(
            leading: const Icon(CupertinoIcons.arrow_counterclockwise),
            title: Text(
              'Parking History',
              style: GoogleFonts.poppins(),
            ),onTap: () {
            Navigator.pushNamed(context, UserParkingHistory.id);
          },
          ),
          ListTile(
            leading: const Icon(CupertinoIcons.checkmark_alt_circle),
            title: Text(
              'Complaint',
              style: GoogleFonts.poppins(),
            ),
            onTap: (){
              Navigator.pushNamed(context, Complain.id);
            },
          ),
          const SB3(),
          ListTile(
            leading: const Icon(CupertinoIcons.info_circle),
            title: Text(
              'How it works',
              style: GoogleFonts.poppins(),
            ),
            onTap: () {
              Navigator.pushNamed(context, UserSettings.id);
            },
          ),
          ListTile(
            // leading: const Icon(CupertinoIcons.bubble_left_bubble_right),
            leading:  const Icon(CupertinoIcons.mail_solid),
            title: Text(
              'Notifications',
              style: GoogleFonts.poppins(),
            ),
            onTap: (){
              Navigator.pushNamed(context, Notifications.id);
            },
          ),
          ListTile(
            // leading: const Icon(CupertinoIcons.bubble_left_bubble_right),
            leading:  const Icon(CupertinoIcons.rectangle_stack_person_crop),
            title: Text(
              "User Parking History",
              style: GoogleFonts.poppins(),
            ),
            onTap: (){
              Navigator.pushNamed(context, UserParkingHistory.id);
            },
          ),
          ListTile(
            leading: const Icon(CupertinoIcons.settings),
            title: Text(
              'Settings',
              style: GoogleFonts.poppins(),
            ),
            onTap: () {
              Navigator.pushNamed(context, UserSettings.id);
            },
          ),
          const SB3(),
          ListTile(
            leading: const Icon(CupertinoIcons.arrow_left_circle_fill),
            title: Text(
              'Logout',
              style: GoogleFonts.poppins(),
            ),
            onTap: widget.onPress,
          ),
        ],
      ),
    ),);
  }
}
