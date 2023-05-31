import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:taxiapp/views/otp_verificatio_screen.dart';

import 'SignUp.dart';
import 'login_screen.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
               Container(
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
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: const [
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 23,
                ),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      fillColor: Color(0xffF8F9FA),
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.email_outlined,
                        color: Color(0xff323F48),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.orange),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.orange),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      fillColor: Color(0xffF8F9FA),
                      filled: true,
                      suffixIcon: Icon(Icons.visibility_off_outlined),
                      prefixIcon: const Icon(
                        Icons.lock_open,
                        color: Color(0xff323F48),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.orange),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.orange),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Forget Password?',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => OtpVerificationScreen()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(10)),
                    height: 60,
                    width: 300,
                    child: const Center(
                      child: Text(
                        'LOG IN',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    Text('DONT HAVE AN ACCOUNT?'),
                    InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => SignUp())
                    );
                  },
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
