import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pak_parking/Components/reusable_components.dart';
import 'package:pak_parking/User/user_profile.dart';

import '../Components/constant_colors.dart';
import '../Components/user_drawer_view.dart';
import '../Components/gridview_container.dart';
import '../Main_Application/Login_Signup/login_screen.dart';
import 'User_Settings_Views/complaint.dart';
import 'User_Settings_Views/notifications.dart';
import 'User_Settings_Views/privacy_policy.dart';
import 'User_Settings_Views/terms_of_use.dart';

class UserSettings extends StatefulWidget {
  static const String id = 'user_settings';
  const UserSettings({Key? key}) : super(key: key);

  @override
  State<UserSettings> createState() => _UserSettingsState();
}

class _UserSettingsState extends State<UserSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors().green),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "User Settings",
          style: TextStyle(color: AppColors().black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, UserProfile.id);
              },
              icon: const Icon(
                Icons.person,
              ))
        ],
      ),
      drawer: UserDrawerView(
        onPress: () {
          Navigator.pushNamed(context, LoginScreen.id);
        },
        child: ListView(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SB3(),
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
                                          const Notifications()));
                            }),
                        child: const GridViewContainer(
                            image: "assets/user_settings/notifications.png",
                            text: "Notifications")),
                    GestureDetector(
                        onTap: () => setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const UserProfile()));
                            }),
                        child: const GridViewContainer(
                            image: "assets/user_settings/account.png",
                            text: "Account")),
                    GestureDetector(
                        onTap: () => setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Complain()));
                            }),
                        child: const GridViewContainer(
                            image: "assets/user_settings/complaint.png",
                            text: "Complaint")),
                    GestureDetector(
                        onTap: () => setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const HowItWorks()));
                            }),
                        child: const GridViewContainer(
                            image: "assets/user_settings/terms_of_use.png",
                            text: "Terms of Use")),
                    GestureDetector(
                        onTap: () => setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PrivacyPolicy()));
                            }),
                        child: const GridViewContainer(
                            image: "assets/user_settings/privacy_policy.png",
                            text: "Privacy Policy")),
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
