import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pak_parking/Components/reusable_components.dart';

class GridViewContainer extends StatelessWidget {
  final String image;
  final String text;

  const GridViewContainer({Key? key,
  required this.image,
  required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:40.h,
      width: 40.w,
      padding:  const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:   [
          Image(
            height: 70.h,
            width: 70.w,
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
          const SB(),
          Text(text),
        ],
      ),
    );
  }
}
