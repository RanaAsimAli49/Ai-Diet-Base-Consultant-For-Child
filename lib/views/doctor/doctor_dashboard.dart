import 'package:ai_health_care/doctor_chat/chats_view.dart';
import 'package:ai_health_care/screens/chats_screen.dart';
import 'package:ai_health_care/screens/message_screen.dart';
import 'package:ai_health_care/screens/schedule_screen.dart';
import 'package:ai_health_care/screens/settings_screen.dart';
import 'package:ai_health_care/views/all_doctor_dashboard_activity/assign_patient.dart';
import 'package:ai_health_care/views/doctor/register_doctor_details.dart';
import 'package:ai_health_care/views/all_doctor_dashboard_activity/pending_patient.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../chat_gpt/chat_screen.dart';
import '../child/ai_diet_view.dart';
import '../child/baby_records_view.dart';
import '../child/search_doctor.dart';
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
        title: const Text("DOCTOR DASHBOARD"),
        backgroundColor: Color(0xFF7165D6),
        centerTitle: true,
      ),
      drawer: Drawer(
          width: 300,
          child:ListView(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height/3.4,
                child: DrawerHeader(
                  decoration: BoxDecoration(color:Color(0xFF7165D6)),
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
                    leading: Icon(Icons.schedule,color: Color(0xFF7165D6),),
                    title: Text("Doctor Schedule",style: TextStyle(color: Color(0xFF7165D6),fontWeight: FontWeight.bold)),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ScheduleScreen(),),);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.pending_actions_rounded,color: Color(0xFF7165D6),),
                    title: Text("Pending Patient",style: TextStyle(color: Color(0xFF7165D6),fontWeight: FontWeight.bold)),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>PendingPatient()),);
                    },
                  ),
                  ListTile(
                    leading: FaIcon(FontAwesomeIcons.rocketchat,color:Color(0xFF7165D6)),
                    title: Text("Chat",style: TextStyle(color: Color(0xFF7165D6),fontWeight: FontWeight.bold)),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>ChatsScreen(),),);
                    },
                  ),
                  Divider(
                    color: Color(0xFF7165D6),
                    thickness: 1,
                  ),
                  ListTile(
                    leading:Icon(Icons.settings,color: Color(0xFF7165D6),),
                    title: Text("Setting",style: TextStyle(color: Color(0xFF7165D6),fontWeight: FontWeight.bold)),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreen(),),);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.logout_rounded,color:Color(0xFF7165D6),),
                    title: Text("Logout",style: TextStyle(color: Color(0xFF7165D6),fontWeight: FontWeight.bold)),
                    onTap: () async{
                      // Obtain shared preferences.
                      final SharedPreferences prefs = await SharedPreferences.getInstance();
                      prefs!.setString("isLogin","No");
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginView(),),);
                    },
                  )
                ],
              )
            ],
          )
      ),
      // body: SafeArea(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Center(
      //         child: Container(
      //           height: MediaQuery.of(context).size.height/2.3,
      //           width: MediaQuery.of(context).size.width/1.1,
      //           decoration: BoxDecoration(
      //               color: Color(0xFF7165D6),
      //               borderRadius: BorderRadius.all(Radius.circular(20))
      //           ),
      //           // color: Colors.deepOrangeAccent,
      //           child: Column(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               SizedBox(height: 15,),
      //               Row(
      //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //                 children: [
      //                   Container(
      //                     height: 120,
      //                     width: 150,
      //                     // color: Colors.white,
      //                     decoration: const BoxDecoration(
      //                         color: Colors.white,
      //                         borderRadius: BorderRadius.all(Radius.circular(20))
      //                     ),
      //                     child: Column(
      //                       mainAxisAlignment: MainAxisAlignment.center,
      //                       children: [
      //                         Text('Assign Patient'),
      //                       ],
      //                     ),
      //                   ),
      //                   // SizedBox(width: 29,),
      //                   Container(
      //                     height: 120,
      //                     width: 150,
      //                     // color: Colors.white,
      //                     decoration: const BoxDecoration(
      //                         color: Colors.white,
      //                         borderRadius: BorderRadius.all(Radius.circular(20))
      //                     ),
      //                     child: Column(
      //                       mainAxisAlignment: MainAxisAlignment.center,
      //                       children: [
      //                         Text('Pending Patient'),
      //                       ],
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //               SizedBox(height: 20,),
      //               Row(
      //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //                 children: [
      //                   // SizedBox(width: 29,),
      //                   Container(
      //                     height: 120,
      //                     width: 150,
      //                     // color: Colors.white,
      //                     decoration: const BoxDecoration(
      //                         color: Colors.white,
      //                         borderRadius: BorderRadius.all(Radius.circular(20))
      //                     ),
      //                     child: Column(
      //                       mainAxisAlignment: MainAxisAlignment.center,
      //                       children: [
      //                         Text('Chat'),
      //                       ],
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //               SizedBox(height: 15,),
      //             ],
      //           ),
      //         ),
      //       ),
      //
      //     ],
      //   ),
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 20,),
                // Container(
                //    height: MediaQuery.of(context).size.height/2.5,
                //    child: Image(
                //      image: AssetImage('assets/baby_first.jpeg'),
                // ),
                //  ),
                Container(
                  height: MediaQuery.of(context).size.height / 2.4,
                  width: MediaQuery.of(context).size.width / 1.1,
                  decoration: BoxDecoration(
                      color: Color(0xFF7165D6),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  // color: Colors.deepOrangeAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            child: Container(
                              height: 150,
                              width: 150,
                              // color: Colors.white,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height:15,
                                  ),
                                  Text('Doctor Schedule',style: TextStyle(fontWeight: FontWeight.w600),),
                                  SizedBox(height: 15),
                                  Container(
                                      height: 80,
                                      width: 80,
                                      child: Image(
                                        image: AssetImage(
                                            'assets/schedulelogo.png'),
                                      ))
                                ],
                              ),
                            ),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const ScheduleScreen(),));
                            },
                          ),
                          // SizedBox(width: 29,),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const PendingPatient(),));
                            },
                            child: Container(
                              height: 150,
                              width: 150,
                              // color: Colors.white,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text('Pending Patient',style: TextStyle(fontWeight: FontWeight.w600),),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                      height: 80,
                                      width: 80,
                                      child: Image(
                                        image: AssetImage('assets/pending1.jpg'),
                                      ))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // SizedBox(width: 29,),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ChatGPTScreen(),));
                            },
                            child: Container(
                              height: 112,
                              width: 300,
                              // color: Colors.white,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text('Ask Question Chat GPT',style: TextStyle(fontWeight: FontWeight.w600),),
                                  Container(
                                      height: 80,
                                      width: 80,
                                      child: Image(
                                        image: AssetImage('assets/chatlogo.png'),
                                      ))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 13,
                      ),
                    ],
                  ),
                ),
                // InkWell(
                //   onTap: () {
                //     Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //           builder: (context) => EnterBabyDetails(),
                //         ));
                //   },
                //   child: Container(
                //     margin:
                //         EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 20),
                //     height: 50,
                //     width: MediaQuery.of(context).size.width / 1.2,
                //     decoration: BoxDecoration(
                //       color: Colors.blue.shade500,
                //       borderRadius: BorderRadius.all(
                //         Radius.circular(40),
                //       ),
                //     ),
                //     child: const Center(
                //         child: Padding(
                //       padding: EdgeInsets.all(8.0),
                //       child: Text(
                //         "CREAT DIET PLAN",
                //         style: TextStyle(
                //             fontWeight: FontWeight.bold,
                //             fontSize: 20,
                //             color: Colors.white),
                //       ),
                //     )),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
