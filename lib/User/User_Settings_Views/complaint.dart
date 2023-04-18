import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pak_parking/Components/constant_colors.dart';
import 'package:pak_parking/Components/reusable_components.dart';

import '../../Components/text_styles.dart';

class Complain extends StatefulWidget {
  static const String id = 'complain';
  const Complain({Key? key}) : super(key: key);

  @override
  State<Complain> createState() => _ComplainState();
}

class _ComplainState extends State<Complain> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors().green),
        backgroundColor: Colors.transparent,
        title:  Text("Complaint", style: TextStyle(color: AppColors().black),),elevation: 0,
        centerTitle: true,
      ),

      floatingActionButton: FloatingActionButton.extended(
       onPressed: () {
         },
       label: const Text("Send"),
       icon: const Icon(Icons.send),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,

      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Complaint Title",
                    style: AppText().complaintTitle
                  ),
                  const SB(),
                  TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    cursorColor: Theme.of(context).colorScheme.secondary,
                    decoration: InputDecoration(
                      hintText: "Enter title",
                      hintStyle: TextStyle(
                        fontSize: 14.sp,
                        color: const Color(0xFF1A1A1A).withOpacity(0.2494),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.w),
                        borderSide: BorderSide(
                          color: const Color(0xFF1A1A1A).withOpacity(0.1),
                          width: 1.sp,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.w),
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.secondary,
                          width: 1.sp,
                        ),
                      ),
                    ),
                  ),
                  const SB(),
                  Text(
                    "Enter your complaint",
                    style: AppText().complaintTitle,
                    ),
                  const SB(),
                  TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                      fontSize: 14.sp,
                    ),
                    minLines: 8,
                    maxLines: 8,
                    cursorColor: Theme.of(context).colorScheme.secondary,
                    decoration: InputDecoration(
                      hintText: "Enter Complaint Here",
                      hintStyle: TextStyle(
                        fontSize: 14.sp,
                        color: const Color(0xFF1A1A1A).withOpacity(0.2494),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.w),
                        borderSide: BorderSide(
                          color: const Color(0xFF1A1A1A).withOpacity(0.1),
                          width: 1.sp,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.w),
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.secondary,
                          width: 1.sp,
                      ),
                   ),
                 ),
               ),


              ]
            ),
          ),
        )
      ),
    );
  }
}
