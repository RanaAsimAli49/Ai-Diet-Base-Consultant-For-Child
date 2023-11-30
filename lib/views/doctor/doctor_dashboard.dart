import 'package:ai_health_care/doctor_chat/chats_view.dart';
import 'package:ai_health_care/views/all_doctor_dashboard_activity/assign_patient.dart';
import 'package:ai_health_care/views/doctor/register_doctor_details.dart';
import 'package:ai_health_care/views/all_doctor_dashboard_activity/pending_patient.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../login_view/login_view.dart';

class DoctorDashboard extends StatefulWidget {
  const DoctorDashboard({super.key});

  @override
  State<DoctorDashboard> createState() => _DoctorDashboardState();
}

class _DoctorDashboardState extends State<DoctorDashboard> {
  SharedPreferences? prefs;
  String name='';
  String regNo='';
  String speciality='';

  @override
  void initState() {
    initFun();
    super.initState();
  }
  initFun()async{
    // Obtain shared preferences.
    prefs = await SharedPreferences.getInstance();
    setState((){
      name = (prefs!.getString("name"))!;
      regNo = (prefs!.getString("registrationNumber")!);
      speciality = (prefs!.getString("speciality")!);


    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DASHBOARD"),
        centerTitle: true,
      ),
      drawer: Drawer(
          width: 300,
          child:ListView(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height/3.4,
                child: DrawerHeader(
                  decoration: BoxDecoration(color: Colors.blue.shade500),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top:2.0,),
                        child:  CircleAvatar(
                          radius: 45,
                          backgroundColor: Colors.white70,
                          backgroundImage: AssetImage("assets/doctor.png"),
                        ),
                      ),
                      SizedBox(height: 7,),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text("Name : $name",style: const TextStyle(color: Colors.white,fontSize: 16),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text("Reg No : $regNo",style: const TextStyle(color: Colors.white,fontSize: 13),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text("Speciality : ${speciality}",style: TextStyle(color: Colors.white,fontSize: 13),),
                      ),

                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.health_and_safety_outlined,color: Colors.blue,),
                    title: Text("Assign Patient",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold)),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AssignPatient(),),);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.pending_actions_rounded,color: Colors.blue,),
                    title: Text("Pending Patient",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold)),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>PendingPatient()),);
                    },
                  ),
                  ListTile(
                    leading: FaIcon(FontAwesomeIcons.rocketchat,color: Colors.blue),
                    title: Text("Chat",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold)),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ChatsView(),),);
                    },
                  ),
                  Divider(
                    color: Colors.blue,
                    thickness: 1,
                  ),
                  ListTile(
                    leading:Icon(Icons.settings,color: Colors.blue,),
                    title: Text("Setting",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold)),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => EnterDoctorDetails(),),);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.logout_rounded,color: Colors.blue,),
                    title: Text("Logout",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold)),
                    onTap: () async{
                      // Obtain shared preferences.
                      final SharedPreferences prefs = await SharedPreferences.getInstance();
                      prefs!.setString("isLogin","No");
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginView(),),);
                    },
                  )
                ],
              )
            ],
          )
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height/2.3,
                width: MediaQuery.of(context).size.width/1.1,
                decoration: BoxDecoration(
                    color: Colors.blue.shade500,
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                // color: Colors.deepOrangeAccent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 120,
                          width: 150,
                          // color: Colors.white,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Assign Patient'),
                            ],
                          ),
                        ),
                        // SizedBox(width: 29,),
                        Container(
                          height: 120,
                          width: 150,
                          // color: Colors.white,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Pending Patient'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // SizedBox(width: 29,),
                        Container(
                          height: 120,
                          width: 150,
                          // color: Colors.white,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Chat'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
