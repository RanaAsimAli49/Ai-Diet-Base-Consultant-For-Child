import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool passToggle=true;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 10,),
              Padding(padding: EdgeInsets.all(20),
              child: Image.asset("assets/doctors.png"),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 8 , horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Full Name"),
                    prefixIcon: Icon(Icons.person)
                ),
              ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 8 , horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Email Address"),
                    prefixIcon: Icon(Icons.email_outlined)
                ),
              ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 8 , horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Phone Number"),
                      prefixIcon: Icon(Icons.phone)
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 8 , horizontal: 15),
                child: TextField(
                  obscureText: passToggle ? true : false,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Email Password"),
                      prefixIcon: Icon(Icons.lock),
                    suffixIcon: InkWell(
                      onTap: (){
                        if(passToggle==true)
                          {
                            passToggle=false;
                          }
                        else
                          {
                            passToggle=true;
                          }
                        setState(() {
                        });
                      },
                      child: passToggle? Icon(CupertinoIcons.eye_slash_fill) :Icon(CupertinoIcons.eye_fill),
                    )
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: double.infinity,
                  child: Material(
                    color: Color(0xFF7165D6),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>LoginScreen(),));
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 40),
                        child: Center(
                          child: Text("Creat Account",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.white
                            ),),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have account?",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54
                    ),
                  ),
                  TextButton(onPressed:() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>LoginScreen(),));
                  }, child: Text("Login",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color:Color(0xFF7165D6)
                    ),))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

