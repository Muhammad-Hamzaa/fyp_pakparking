import 'package:flutter/material.dart';

import '../../Components/constant_colors.dart';

class AddParkingSpot extends StatefulWidget {
  const AddParkingSpot({Key? key}) : super(key: key);

  @override
  State<AddParkingSpot> createState() => _AddParkingSpotState();
}

class _AddParkingSpotState extends State<AddParkingSpot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors().green),
        backgroundColor: Colors.transparent,
        title:  Text("Add Parking Spot", style: TextStyle(color: AppColors().black),),elevation: 0,
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Add Parking Spot"),
      ),
    );
  }
}
