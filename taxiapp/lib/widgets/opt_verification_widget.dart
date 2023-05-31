import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taxiapp/utilis/app_constants.dart';
import 'dart:ui';

import 'package:taxiapp/views/otp_verificatio_screen.dart';
import 'package:taxiapp/widgets/pinput_widget.dart';

Widget otpVerificationWidget() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.start,
       children: [
      const SizedBox(
        height: 10,
      ),
      const Text(AppConstants.phoneVerification),
      const Text(
        AppConstants.enterOPT,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
      ),   
       const SizedBox(
        height: 20,
      ),
       Container(
        width: Get.width,
        height: 50,
        child: RoundedWithShadow()
        ),
        SizedBox(height: 30,),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: RichText(
          textAlign: TextAlign.start,
          text: const TextSpan(
              style: TextStyle(color: Colors.black, fontSize: 12),
              children: [
                TextSpan(
                  text: AppConstants.resentCode + " ",
                ),
                
                
                
                TextSpan(
                  text: "10 Seconds",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ]),
        ),
      ),
       ],
    ),
   
  
  );
}
