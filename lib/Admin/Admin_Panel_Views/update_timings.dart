import 'package:flutter/material.dart';

import '../../Components/constant_colors.dart';

class UpdateTimings extends StatefulWidget {
  const UpdateTimings({Key? key}) : super(key: key);

  @override
  State<UpdateTimings> createState() => _UpdateTimingsState();
}

class _UpdateTimingsState extends State<UpdateTimings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors().green),
        backgroundColor: Colors.transparent,
        title:  Text("Update Timings", style: TextStyle(color: AppColors().black),),elevation: 0,
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Update Timings"),
      ),
    );
  }
}
