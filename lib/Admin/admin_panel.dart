import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pak_parking/Admin/Admin_Panel_Views/add_parking_spot.dart';
import 'package:pak_parking/Admin/Admin_Panel_Views/delete_parking_spot.dart';
import 'package:pak_parking/Admin/Admin_Panel_Views/payment_history.dart';
import 'package:pak_parking/Admin/Admin_Panel_Views/update_account.dart';
import 'package:pak_parking/Admin/Admin_Panel_Views/update_fees.dart';
import 'package:pak_parking/Admin/Admin_Panel_Views/update_timings.dart';
import 'package:pak_parking/Admin/admin_login.dart';
import 'package:pak_parking/Components/admin_drawer_view.dart';
import 'package:pak_parking/Components/gridview_container.dart';

import '../Components/constant_colors.dart';
import '../Components/user_drawer_view.dart';
import '../Components/reusable_components.dart';
import '../User/user_profile.dart';

class AdminPanel extends StatefulWidget {
  static const String id = 'admin_panel';

  const AdminPanel({Key? key}) : super(key: key);

  @override
  State<AdminPanel> createState() => _AdminPanelState();
}

class _AdminPanelState extends State<AdminPanel> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors().green),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Admin Panel",
          style: TextStyle(color: AppColors().black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                // Navigator.pushNamed(context, UserProfile.id);
              },
              icon: const Icon(
                Icons.person,
              ))
        ],
      ),
      drawer: AdminDrawerView(
        onPress: () {
          Navigator.pushNamed(context, AdminLogin.id);
        },
        child: ListView(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SB2(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                child: GridView.count(
                  shrinkWrap: true,
                  mainAxisSpacing: 25.0,
                  crossAxisSpacing: 25.0,
                  crossAxisCount: 2,
                  children: [
                    GestureDetector(
                        onTap: () => setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const UpdateAccount()));
                            }),
                        child: const GridViewContainer(
                            image: "assets/admin_panel/update_account.png",
                            text: "Update Account")),
                    GestureDetector(
                        onTap: () => setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const AddParkingSpot()));
                            }),
                        child: const GridViewContainer(
                            image: "assets/admin_panel/add_parking_spot.png",
                            text: "Add Parking Spot")),
                    GestureDetector(
                        onTap: () => setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const DeleteParkingSpot()));
                            }),
                        child: const GridViewContainer(
                            image: "assets/admin_panel/delete_parking_spot.png",
                            text: "Delete Parking Spot")),
                    GestureDetector(
                        onTap: () => setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const UpdateFees()));
                            }),
                        child: const GridViewContainer(
                            image: "assets/admin_panel/update_fees.png",
                            text: "Update Fees")),
                    GestureDetector(
                        onTap: () => setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const UpdateTimings()));
                            }),
                        child: const GridViewContainer(
                            image: "assets/admin_panel/update_timings.png",
                            text: "Update Timings")),
                    GestureDetector(
                        onTap: () => setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PaymentHistory()));
                            }),
                        child: const GridViewContainer(
                            image: "assets/admin_panel/payment_history.png",
                            text: "Payment History"))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
