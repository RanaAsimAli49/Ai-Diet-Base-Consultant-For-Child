import 'package:ai_health_care/views/all_child_dashboard_activity/ai_diet_plane_suggest.dart';
import 'package:ai_health_care/views/child/search_doctor.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../chat_gpt/chat_screen.dart';
import '../doctor/register_doctor_details.dart';
import '../login_view/login_view.dart';

class ChildDashBoard extends StatefulWidget {
  const ChildDashBoard({Key? key}) : super(key: key);

  @override
  State<ChildDashBoard> createState() => _HomeViewState();
}

class _HomeViewState extends State<ChildDashBoard> {
  SharedPreferences? prefs;
  String name = '';
  String age = '';
  String weight = '';

  void initState() {
    initFun();
    super.initState();
  }

  initFun() async {
    // Obtain shared preferences.
    prefs = await SharedPreferences.getInstance();
    setState(() {
      name = (prefs!.getString("Cname"))!;
      age = (prefs!.getString("Cage")!);
      weight = (prefs!.getString("Cweight")!);
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
          child: ListView(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 3.5,
                child: DrawerHeader(
                  decoration: BoxDecoration(color: Colors.blue.shade500),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                          top: 2.0,
                        ),
                        child: CircleAvatar(
                          radius: 45,
                          backgroundColor: Colors.white70,
                          backgroundImage: AssetImage("assets/child2.png"),
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          "Name : $name",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          "Age : $age",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 13),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          "Weight : ${weight}",
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.food_bank_outlined,
                      color: Colors.blue,
                    ),
                    title: Text("Ai Diet Palne",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold)),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AiDietPlaneSuggest(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.note_add_outlined,
                      color: Colors.blue,
                    ),
                    title: Text("Baby Records",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold)),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EnterDoctorDetails(),
                        ),
                      );
                    },
                  ),
                  Theme(
                    data: ThemeData(
                      unselectedWidgetColor: Colors.blue, // Change arrow color
                    ),
                    child: Container(
                      color: Colors.white,
                      child: ExpansionTile(
                        title: Row(
                          children: [
                            Icon(Icons.production_quantity_limits_rounded),
                            SizedBox(width: 8),
                            Text(
                              "Baby Products",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        children: [
                          ListTile(
                            leading: FaIcon(FontAwesomeIcons.bagShopping,
                                color: Colors.blue),
                            title: Text("Baby Kit Bag",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold)),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EnterDoctorDetails(),
                                ),
                              );
                            },
                          ),
                          ListTile(
                            leading:
                                Icon(Icons.toys_outlined, color: Colors.blue),
                            title: Text("Baby Toys",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold)),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EnterDoctorDetails(),
                                ),
                              );
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.accessibility_outlined,
                                color: Colors.blue),
                            title: Text("Baby Cloths",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold)),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EnterDoctorDetails(),
                                ),
                              );
                            },
                          ),
                        ],
                        // initiallyExpanded: widget.initiallyExpanded,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.question_answer_outlined,
                      color: Colors.blue,
                    ),
                    title: Text("Ask any Question?",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold)),
                    onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ChatGPTScreen(),));
                    },
                  ),
                  Divider(
                    color: Colors.blue,
                    thickness: 1,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.settings,
                      color: Colors.blue,
                    ),
                    title: Text("Setting",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold)),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EnterDoctorDetails(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.logout_rounded,
                      color: Colors.blue,
                    ),
                    title: Text("Logout",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold)),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginView(),
                        ),
                      );
                    },
                  )
                ],
              )
            ],
          )),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                // Container(
                //    height: MediaQuery.of(context).size.height/2.5,
                //    child: Image(
                //      image: AssetImage('assets/baby_first.jpeg'),
                // ),
                //  ),
                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width / 1.1,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade500,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
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
                              height: 90,
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
                                  Text('Ai Diet Plane'),
                                  SizedBox(height: 4),
                                  Container(
                                      height: 50,
                                      width: 70,
                                      child: Image(
                                        image: AssetImage(
                                            'assets/first_background.png'),
                                      ))
                                ],
                              ),
                            ),
                          ),
                          // SizedBox(width: 29,),
                          Container(
                            height: 90,
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
                                Text('Baby Records'),
                                SizedBox(
                                  height: 4,
                                ),
                                Container(
                                    height: 50,
                                    width: 70,
                                    child: Image(
                                      image: AssetImage('assets/report.jpeg'),
                                    ))
                              ],
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
                          Container(
                            height: 90,
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
                                Text('Baby Care Products'),
                                SizedBox(height: 4),
                                Container(
                                    height: 50,
                                    width: 70,
                                    child: Image(
                                      image: AssetImage(
                                          'assets/first_background.png'),
                                    ))
                              ],
                            ),
                          ),
                          // SizedBox(width: 29,),
                          Container(
                            height: 90,
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
                                Text('Ask Question Chat GPT'),
                                SizedBox(
                                  height: 4,
                                ),
                                Container(
                                    height: 50,
                                    width: 70,
                                    child: Image(
                                      image: AssetImage('assets/report.jpeg'),
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
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
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SearchDoctor(),
                        ));
                  },
                  child: Container(
                    margin: EdgeInsets.all(20),
                    height: 50,
                    width: MediaQuery.of(context).size.width / 1.2,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade500,
                      borderRadius: BorderRadius.all(
                        Radius.circular(40),
                      ),
                    ),
                    child: const Center(
                        child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "SEARCH DOCTOR",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
