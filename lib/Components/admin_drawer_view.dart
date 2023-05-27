import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pak_parking/Admin/Admin_Panel_Views/add_parking_spot.dart';
import 'package:pak_parking/Admin/Admin_Panel_Views/delete_parking_spot.dart';
import 'package:pak_parking/Admin/Admin_Panel_Views/payment_history.dart';
import 'package:pak_parking/Admin/Admin_Panel_Views/update_account.dart';
import 'package:pak_parking/Admin/Admin_Panel_Views/update_timings.dart';
import 'package:pak_parking/Components/reusable_components.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Admin/Admin_Panel_Views/update_fees.dart';
import '../Main_Application/Home_Screens/home_screen.dart';
import '../Main_Application/Home_Screens/parking_history.dart';
import '../Main_Application/Home_Screens/payment_screen.dart';
import '../User/User_Settings_Views/complaint.dart';
import '../User/User_Settings_Views/notifications.dart';
import '../User/user_settings.dart';
import 'constant_colors.dart';

class AdminDrawerView extends StatefulWidget {

  final VoidCallback onPress;
  const AdminDrawerView({Key? key, required this.onPress , required ListView child}) : super(key: key);

  @override
  State<AdminDrawerView> createState() => _AdminDrawerViewState();
}
class _AdminDrawerViewState extends State<AdminDrawerView> {
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
            accountName: const Text('Admin Panel'),
            accountEmail: const Text("admin@pakparking.com"),
            // accountEmail: Text(email.toString(), style: TextStyle(fontSize: 15.sp),),
          ),
          const SB2(),
          ListTile(
            leading: const Icon(Icons.update),
            title: Text(
              'Update Account',
              style: GoogleFonts.poppins(),
            ),onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const UpdateAccount()));
          },
          ),
          ListTile(
            leading: const Icon(Icons.add),
            title: Text(
              'Add Parking Spot',
              style: GoogleFonts.poppins(),
            ),onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const AddParkingSpot()));
              },
          ),
          ListTile(
            leading: const Icon(CupertinoIcons.delete),
            title: Text(
              'Delete Parking Spot',
              style: GoogleFonts.poppins(),
            ),onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const DeleteParkingSpot()));
            },
          ),
          ListTile(
            leading: const Icon(CupertinoIcons.money_rubl_circle),
            title: Text(
              'Update Fees',
              style: GoogleFonts.poppins(),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const UpdateFees()));
            },
          ),
          // const SB2(),
          ListTile(
            leading: const Icon(CupertinoIcons.timer),
            title: Text(
              'Update Timings',
              style: GoogleFonts.poppins(),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const UpdateTimings()));
            },
          ),
          ListTile(
            // leading: const Icon(CupertinoIcons.bubble_left_bubble_right),
            leading:  const Icon(CupertinoIcons.money_dollar_circle),
            title: Text(
              'Payment History',
              style: GoogleFonts.poppins(),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const PaymentHistory()));
            },
          ),
          const SB5(h: 100,),
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
