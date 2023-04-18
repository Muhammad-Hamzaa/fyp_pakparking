import 'package:flutter/material.dart';

import '../../Components/constant_colors.dart';

class HowItWorks extends StatefulWidget {
  static const String id = 'parking_history';
  const HowItWorks({Key? key}) : super(key: key);

  @override
  State<HowItWorks> createState() => _HowItWorksState();
}

class _HowItWorksState extends State<HowItWorks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors().green),
        backgroundColor: Colors.transparent,
        title:  Text("Terms of Use", style: TextStyle(color: AppColors().black),),elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Text("Terms_of_use"),
          ),
        ),
      ),
    );
  }
}
