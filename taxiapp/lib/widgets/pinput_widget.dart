import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class RoundedWithShadow extends StatefulWidget {
  // const RoundedWithShadow({super.key});
  @override
 _RoundedWithShadowState createState()=>_RoundedWithShadowState();

 @override
 String toStringShort()=>'Rounded With Shadow';
  

  // State<RoundedWithShadow> createState() => _RoundedWithShadowState();
}

class _RoundedWithShadowState extends State<RoundedWithShadow> {
  final controller = TextEditingController();
  final focusNode = FocusNode();

  @override
  void dispose(){
    controller.dispose();
    focusNode.dispose();
    super.dispose();

  }
  @override

  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 60,
      height: 64,
      textStyle: GoogleFonts.poppins(
        fontSize: 20, color: Color.fromRGBO(70, 60, 66, 1)
      ),
      decoration: BoxDecoration(
        color: Color.fromRGBO(243, 246, 240,0.37),
        borderRadius: BorderRadius.circular(8),
      )
    );
    final cursor = Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: 21,
        height: 1,
        margin: EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          color: Color.fromRGBO(137, 146, 160, 1),
          borderRadius: BorderRadius.circular(8),
          ),
      ),
    );

    return Pinput(
      length: 5,
      controller: controller,
      focusNode: focusNode,
      defaultPinTheme: defaultPinTheme.copyWith(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.56666666666666),
              offset: Offset(0,3),
              blurRadius: 16,
            ),
          ],
        ),
      ),
      separator: const SizedBox(width: 16),
      focusedPinTheme: defaultPinTheme.copyWith(
      decoration: const BoxDecoration(

      )
      ),
      showCursor:  true,
      cursor: cursor,
    );
  }
}

































































