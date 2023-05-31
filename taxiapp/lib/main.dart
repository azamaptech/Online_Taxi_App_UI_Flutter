import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxiapp/views/loginScreen.dart';


import 'package:google_fonts/google_fonts.dart';
import 'package:taxiapp/views/otp_verificatio_screen.dart';



import 'views/SignUp.dart';
import 'views/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return GetMaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme(textTheme)),
      debugShowCheckedModeBanner: false,
      home:  SplashScreen(),
      

 routes: { 
   "/":(context) => SplashScreen(),
         
      

          }
      
    );
  }
}
