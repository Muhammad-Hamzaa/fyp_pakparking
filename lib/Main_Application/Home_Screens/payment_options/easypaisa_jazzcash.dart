import 'package:flutter/material.dart';

import '../../../Components/constant_colors.dart';
import '../../../Components/drawer_view.dart';

class EasyPaisaJazzCash extends StatefulWidget {
  const EasyPaisaJazzCash({Key? key}) : super(key: key);

  @override
  State<EasyPaisaJazzCash> createState() => _EasyPaisaJazzCashState();
}

class _EasyPaisaJazzCashState extends State<EasyPaisaJazzCash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors().green),
        title:  Text("EasyPaisa/JazzCash", style: TextStyle(color: AppColors().black),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      // drawer: DrawerView(onPress: () {},
      //   child: ListView(),),

    );
  }
}
