import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:taxiapp/widgets/green_intro_widget.dart';
import 'package:taxiapp/widgets/login_widget.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final countryPicker = const FlCountryCodePicker();
CountryCode countryCode = CountryCode(name: 'Pakistan',code: "Pk",dialCode: "+92");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        width: Get.width,
        height: Get.height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              greenIntroWidget(),
             
              loginWidget(countryCode,()async{
                final code = await countryPicker.showPicker(context: context);
        if (code != null)  countryCode= code;
        setState(() {
          
        });
              }),
            ],
          ),
        ),
      ),
      
    );
  }
}
