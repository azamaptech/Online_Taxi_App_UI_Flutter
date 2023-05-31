import 'dart:html';

import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taxiapp/utilis/app_colors.dart';
import 'package:taxiapp/utilis/app_constants.dart';
import 'dart:ui';

import 'package:taxiapp/views/otp_verificatio_screen.dart';

Widget loginWidget(CountryCode countryCode, Function onCountryChange) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const SizedBox(
        height: 18,
      ),
      const Text(AppConstants.helloNiceToMeetYou),
      const Text(
        AppConstants.getMovingWithPinkTaxi,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
      ),
      const SizedBox(
        height: 13,
      ),
      Container(
        width: double.infinity,
        height: 45,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              spreadRadius: 2.5,
              blurRadius: 2.5,
            )
          ],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: () => onCountryChange(),
                child: Container(
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: Container(
                          child: countryCode.flagImage,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(countryCode.dialCode),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(Icons.keyboard_arrow_down_rounded),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: 1,
              height: 55,
              color: Colors.black.withOpacity(0.2),
            ),
            Container(
              child: Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13),
                  child: TextField(
                    onTap: () {
                      Get.to(() => NumberInputElement());
                    },
                    decoration: const InputDecoration(
                        hintText: AppConstants.enterMobileNumber,
                        border: InputBorder.none),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 18,
      ),
      InkWell(
        onTap: (() {}),
        child: Center(
          child: Column(
            children: [
              Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                    color: AppColors.pink,
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Center(
                    child: Text(
                      'ENTER',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
              style: TextStyle(color: Colors.black, fontSize: 13),
              children: [
                TextSpan(
                  text: AppConstants.byCreating + " ",
                ),
                TextSpan(
                  text: AppConstants.termsofServices + " ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: "and" " ",
                ),
                TextSpan(
                  text: AppConstants.privacyPolicy + " ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ]),
        ),
      ),
    ]),
  );
}
