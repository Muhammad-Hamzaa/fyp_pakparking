import 'package:flutter/material.dart';

import '../../Components/constant_colors.dart';

class DeleteParkingSpot extends StatefulWidget {
  static const String id = 'delete_parking_spot';
  const DeleteParkingSpot({Key? key}) : super(key: key);

  @override
  State<DeleteParkingSpot> createState() => _DeleteParkingSpotState();
}

class _DeleteParkingSpotState extends State<DeleteParkingSpot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors().green),
        backgroundColor: Colors.transparent,
        title:  Text("Delete Parking Spot", style: TextStyle(color: AppColors().black),),elevation: 0,
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Delete Parking Spot"),
      ),
    );
  }
}
