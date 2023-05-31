import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffFF003D),
          leading:
              IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
          title: const Center(
              child: Text(
            "",
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
          actions:const [
            // IconButton(onPressed: () {}, icon: Icon(Icons.logout_outlined)),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipOval(
                      child: SizedBox.fromSize(
                        size: Size.fromRadius(48), // Image radius
                        child: Image(
                            image: AssetImage('assets/men.jpg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Center(
                    child: Text(
                  'User Profile',
                  style: TextStyle(
                      color: Color(0xffFF003D),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    fillColor: Color(0xffF8F9FA),
                    filled: true,
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Color(0xffFF003D),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffFF003D),
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffFF003D),
                        ),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    suffixIcon: Icon(Icons.visibility_off_outlined),
                    fillColor: Color(0xffF8F9FA),
                    filled: true,
                    prefixIcon: Icon(
                      Icons.lock_outlined,
                      color: Color(0xffFF003D),
                      
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffFF003D),
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffFF003D),
                        ),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xffFF003D),
                    borderRadius: BorderRadius.circular(8)),
                height: 50,
                width: 250,
                child: Center(
                    child: Text(
                  'Sign In ',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: Text(
                    'Dont Have an Account?',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: Color(0xff303030)),
                  )),
                  Center(
                      child: Text(
                    'SignUp',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: Color(0xffFF003D)),
                  )
                  )
                ],
              )
            ],
          ),
        )
        );
  }
}
