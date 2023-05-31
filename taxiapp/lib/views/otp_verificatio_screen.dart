import 'package:flutter/material.dart';
import 'package:taxiapp/utilis/app_colors.dart';
import 'package:get/get.dart';
import 'package:taxiapp/widgets/green_intro_widget.dart';

import '../widgets/opt_verification_widget.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                greenIntroWidget(),
                Positioned(
                  top: 60,
                  left: 30,
                  child: InkWell(
                    onTap: (){
                      Get.back();
                    },
                    child: Container(
                      height: 45,
                      width: 45,
                    
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        
                      ),
                      child: const Icon(
                        Icons.arrow_back,
                        color: AppColors.pink,
                        size: 20,
                      ),
                    ),
                  ),
                )
              ],
            ),
          SizedBox(
            height: 20,
          ),
          otpVerificationWidget(),
          ],
        ),
      ),
    );
  }
}
