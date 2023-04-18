import 'package:flutter/material.dart';

import '../../Components/constant_colors.dart';

class UpdateAccount extends StatefulWidget {
  const UpdateAccount({Key? key}) : super(key: key);

  @override
  State<UpdateAccount> createState() => _UpdateAccountState();
}

class _UpdateAccountState extends State<UpdateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors().green),
        backgroundColor: Colors.transparent,
        title:  Text("Update Account", style: TextStyle(color: AppColors().black),),elevation: 0,
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Update Account"),
      ),
    );
  }
}
