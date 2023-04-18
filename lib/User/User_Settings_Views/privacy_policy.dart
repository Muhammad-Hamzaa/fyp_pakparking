import 'package:flutter/material.dart';

import '../../Components/constant_colors.dart';
import '../../Components/reusable_components.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors().green),
        backgroundColor: Colors.transparent,
        title:  Text("Privacy Policy", style: TextStyle(color: AppColors().black),),elevation: 0,
        centerTitle: true,
      ),

      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SplashImage().splashImage,
          const SB5(),
          Center(
            child: ElevatedButton(
                child: const Text("Click Here to View Privacy Policy"),
                 onPressed: (){
                  showDialog(context: context, builder: (context){
                    return  Container(
                      child:  AlertDialog(
                        title: const Text("At PakPakring, we are committed to protecting your privacy and ensuring the security of your personal information. This Privacy Policy outlines how we collect, use, disclose, and protect the information we collect from users of our smart IoT-based parking project. Pak Parking is established in 2022.",
                          textAlign: TextAlign.justify,
                         style: TextStyle(fontSize: 16),),
                        actions: [
                          TextButton(onPressed: (){
                            Navigator.pop(context);
                          }, child: const Text("OK"))
                        ],
                      ),
                    );
                  }
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
