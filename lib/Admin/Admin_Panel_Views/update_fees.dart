import 'package:flutter/material.dart';

import '../../Components/constant_colors.dart';

class UpdateFees extends StatefulWidget {
  const UpdateFees({Key? key}) : super(key: key);

  @override
  State<UpdateFees> createState() => _UpdateFeesState();
}

class _UpdateFeesState extends State<UpdateFees> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors().green),
        backgroundColor: Colors.transparent,
        title:  Text("Update Fees", style: TextStyle(color: AppColors().black),),elevation: 0,
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Update Fees"),
      ),
    );
  }
}
