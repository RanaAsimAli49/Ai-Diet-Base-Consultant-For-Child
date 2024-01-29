import 'package:ai_health_care/views/doctor/doctor_dashboard.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PendingPatient extends StatefulWidget {
  const PendingPatient({super.key});

  @override
  State<PendingPatient> createState() => _PendingPatientState();
}

class _PendingPatientState extends State<PendingPatient> {
  List images=[
    "child1.png",
    "duaa.png",
    "child3.png",
    "child4.png",
    "child5.png",
    "child6.png",
  ];

  List childName=[
    "M Monid",
    "Duaa",
    "Muhammad Hashir",
    "Muhammad Amaar",
    "Muhammad Issa",
    "Ayat Fatima",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: true, title: Text("Pending Patient"),
        backgroundColor: Color(0xFF7165D6)),
        body: ListView(

            children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.white70,
                      backgroundImage: AssetImage("assets/child1.png"),
                    ),
                    SizedBox(width: 20,),
                    Text("${childName[0]}",style:TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Fluttertoast.showToast(
                            msg: "Request Successfull Accepted.",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            textColor: Colors.white,
                            backgroundColor:Color(0xFF7165D6),
                            fontSize: 16.0
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF7165D6), // Background color
                        onPrimary: Colors.white, // Text Color (Foreground color)
                      ),
                        child: Text("Accept",style: TextStyle(color: Colors.white),)),
                    ElevatedButton(
                        onPressed: () {
                          Fluttertoast.showToast(
                              msg: "Request Successfull Canceled",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 1,
                              textColor: Colors.white,
                              backgroundColor:Color(0xFF7165D6),
                              fontSize: 16.0
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF7165D6), // Background color
                          onPrimary: Colors.white, // Text Color (Foreground color)
                        ),
                        child: Text("Cancel",style: TextStyle(color: Colors.white),)),                  ],
                )

              ],
            ),
          ),
         const Divider(height: 20, thickness: 1,color: Color(0xFF7165D6),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.white70,
                          backgroundImage: AssetImage("assets/duaa.png"),
                        ),
                        SizedBox(width: 20,),
                        Text("${childName[1]}",style:TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Column(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Fluttertoast.showToast(
                                  msg: "Request Successfull Accepted.",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  textColor: Colors.white,
                                  backgroundColor:Color(0xFF7165D6),
                                  fontSize: 16.0
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF7165D6), // Background color
                              onPrimary: Colors.white, // Text Color (Foreground color)
                            ),
                            child: Text("Accept",style: TextStyle(color: Colors.white),)),
                        ElevatedButton(
                            onPressed: () {
                              Fluttertoast.showToast(
                                  msg: "Request Successfull Canceled",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  textColor: Colors.white,
                                  backgroundColor:Color(0xFF7165D6),
                                  fontSize: 16.0
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF7165D6), // Background color
                              onPrimary: Colors.white, // Text Color (Foreground color)
                            ),
                            child: Text("Cancel",style: TextStyle(color: Colors.white),)),                  ],
                    )

                  ],
                ),
              ),
              const Divider(height: 20, thickness: 1,color: Color(0xFF7165D6),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.white70,
                          backgroundImage: AssetImage("assets/child3.png"),
                        ),
                        SizedBox(width: 20,),
                        Text("${childName[2]}",style:TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Column(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Fluttertoast.showToast(
                                  msg: "Request Successfull Accepted.",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  textColor: Colors.white,
                                  backgroundColor:Color(0xFF7165D6),
                                  fontSize: 16.0
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF7165D6), // Background color
                              onPrimary: Colors.white, // Text Color (Foreground color)
                            ),
                            child: Text("Accept",style: TextStyle(color: Colors.white),)),
                        ElevatedButton(
                            onPressed: () {
                              Fluttertoast.showToast(
                                  msg: "Request Successfull Canceled",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  textColor: Colors.white,
                                  backgroundColor:Color(0xFF7165D6),
                                  fontSize: 16.0
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF7165D6), // Background color
                              onPrimary: Colors.white, // Text Color (Foreground color)
                            ),
                            child: Text("Cancel",style: TextStyle(color: Colors.white),)),                  ],
                    )

                  ],
                ),
              ),
              const Divider(height: 20, thickness: 1,color: Color(0xFF7165D6),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.white70,
                          backgroundImage: AssetImage("assets/child4.jpeg"),
                        ),
                        SizedBox(width: 20,),
                        Text("${childName[3]}",style:TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Column(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Fluttertoast.showToast(
                                  msg: "Request Successfull Accepted.",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  textColor: Colors.white,
                                  backgroundColor:Color(0xFF7165D6),
                                  fontSize: 16.0
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF7165D6), // Background color
                              onPrimary: Colors.white, // Text Color (Foreground color)
                            ),
                            child: Text("Accept",style: TextStyle(color: Colors.white),)),
                        ElevatedButton(
                            onPressed: () {
                              Fluttertoast.showToast(
                                  msg: "Request Successfull Canceled",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  textColor: Colors.white,
                                  backgroundColor:Color(0xFF7165D6),
                                  fontSize: 16.0
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF7165D6), // Background color
                              onPrimary: Colors.white, // Text Color (Foreground color)
                            ),
                            child: Text("Cancel",style: TextStyle(color: Colors.white),)),                  ],
                    )

                  ],
                ),
              ),
              const Divider(height: 20, thickness: 1,color: Color(0xFF7165D6),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.white70,
                          backgroundImage: AssetImage("assets/child5.jpeg"),
                        ),
                        SizedBox(width: 20,),
                        Text("${childName[4]}",style:TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Column(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Fluttertoast.showToast(
                                  msg: "Request Successfull Accepted.",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  textColor: Colors.white,
                                  backgroundColor:Color(0xFF7165D6),
                                  fontSize: 16.0
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF7165D6), // Background color
                              onPrimary: Colors.white, // Text Color (Foreground color)
                            ),
                            child: Text("Accept",style: TextStyle(color: Colors.white),)),
                        ElevatedButton(
                            onPressed: () {
                              Fluttertoast.showToast(
                                  msg: "Request Successfull Canceled",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  textColor: Colors.white,
                                  backgroundColor:Color(0xFF7165D6),
                                  fontSize: 16.0
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF7165D6), // Background color
                              onPrimary: Colors.white, // Text Color (Foreground color)
                            ),
                            child: Text("Cancel",style: TextStyle(color: Colors.white),)),                  ],
                    )

                  ],
                ),
              ),
              const Divider(height: 20, thickness: 1,color: Color(0xFF7165D6),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.white70,
                          backgroundImage: AssetImage("assets/child6.jpg"),
                        ),
                        SizedBox(width: 20,),
                        Text("${childName[5]}",style:TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Column(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Fluttertoast.showToast(
                                  msg: "Request Successfull Accepted.",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  textColor: Colors.white,
                                  backgroundColor:Color(0xFF7165D6),
                                  fontSize: 16.0
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF7165D6), // Background color
                              onPrimary: Colors.white, // Text Color (Foreground color)
                            ),
                            child: Text("Accept",style: TextStyle(color: Colors.white),)),
                        ElevatedButton(
                            onPressed: () {
                              Fluttertoast.showToast(
                                  msg: "Request Successfull Canceled",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  textColor: Colors.white,
                                  backgroundColor:Color(0xFF7165D6),
                                  fontSize: 16.0
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF7165D6), // Background color
                              onPrimary: Colors.white, // Text Color (Foreground color)
                            ),
                            child: Text("Cancel",style: TextStyle(color: Colors.white),)),                  ],
                    )

                  ],
                ),
              ),
              // const Divider(height: 20, thickness: 1,color: Color(0xFF7165D6),),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Row(
              //         children: [
              //           const CircleAvatar(
              //             radius: 35,
              //             backgroundColor: Colors.white70,
              //             backgroundImage: AssetImage("assets/child7.jpg"),
              //           ),
              //           SizedBox(width: 20,),
              //           Text("${childName[6]}",style:TextStyle(fontWeight: FontWeight.bold),),
              //         ],
              //       ),
              //       Column(
              //         children: [
              //           ElevatedButton(
              //               onPressed: () {},
              //               style: ElevatedButton.styleFrom(
              //                 primary: Color(0xFF7165D6), // Background color
              //                 onPrimary: Colors.white, // Text Color (Foreground color)
              //               ),
              //               child: Text("Accept",style: TextStyle(color: Colors.white),)),
              //           ElevatedButton(
              //               onPressed: () {},
              //               style: ElevatedButton.styleFrom(
              //                 primary: Color(0xFF7165D6), // Background color
              //                 onPrimary: Colors.white, // Text Color (Foreground color)
              //               ),
              //               child: Text("Cancel",style: TextStyle(color: Colors.white),)),                  ],
              //       )
              //
              //     ],
              //   ),
              // ),
              // const Divider(height: 20, thickness: 1,color: Color(0xFF7165D6),)
        ]));
  }
}
