import 'package:ai_health_care/views/doctor/register_doctor_details.dart';
import 'package:ai_health_care/views/child/register_child_details.dart';
import 'package:ai_health_care/views/static_class/signup_static.dart';
import 'package:flutter/material.dart';

class Register_Doc_and_Child extends StatefulWidget {
  const Register_Doc_and_Child({super.key});

  @override
  State<Register_Doc_and_Child> createState() => _Register_Doc_and_ChildState();
}

class _Register_Doc_and_ChildState extends State<Register_Doc_and_Child> {
  @override
  void initState() {
    setState(() {
      SignUpStatic.email = SignUpStatic.email;
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height/0,
        width: MediaQuery.of(context).size.width/1,
        decoration: BoxDecoration(
            color: Color(0xFF7165D6),
        ),
        // color: Colors.deepOrangeAccent,
        child: Padding(
          padding: const EdgeInsets.all(80.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>EnterDoctorDetails()));
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 100,
                      backgroundColor: Colors.white70,
                      backgroundImage: AssetImage("assets/doctor.png"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                Text("REGISTER DOCTOR",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20, color: Colors.white,fontStyle: FontStyle.italic)),
          ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => EnterBabyDetails(),));
                },
                child: const Column(
                  children: [
                    CircleAvatar(
                      radius: 100,
                      backgroundColor: Colors.white70,
                      backgroundImage: AssetImage("assets/child2.png"),
                    ),
                SizedBox(
                  height: 20,
                ),
                Text("REGISTER CHILD",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20, color: Colors.white,fontStyle: FontStyle.italic)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
