import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

Widget greenIntroWidget() {
  return SingleChildScrollView(
    child: Container(
      width: Get.width,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/pink.png'), fit: BoxFit.cover)),
      height: Get.height * 0.65,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
           Image(image: AssetImage('assets/logo.png')
           ),
        ],
      ),
    ),
   
    
  );
}
// Widget pinkIntroWidget(){
//   return Container(
//     width: Get.width,
//     decoration: const BoxDecoration(
//       image: DecorationImage(
//         image:  AssetImage('assets/logo'),
//       fit: BoxFit.fill
//     )
//     ),
//     height: Get.height*0.3,
//     child:
//      Container(
//       height: Get.height*0.1,
//       width: Get.width,
//       margin: EdgeInsets.only(bottom:Get.height*0.05),
//       child: Center(child: Text("Profile Setting",style: GoogleFonts.poppins(fontSize:24, fontWeight: FontWeight.bold))),

//     ),
//   );
// }
