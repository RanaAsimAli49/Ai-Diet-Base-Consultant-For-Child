import 'package:ai_health_care/doctor_chat/chats_widget.dart';
import 'package:ai_health_care/doctor_chat/status_widget.dart';
import 'package:flutter/material.dart';

class DoctorChat extends StatefulWidget {
  const DoctorChat({super.key});

  @override
  State<DoctorChat> createState() => _DoctorChatState();
}

class _DoctorChatState extends State<DoctorChat> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,  //optional, starts from 0, select the tab by default
      length:4,
    child:Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          elevation: 0,
          title: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              "Messanger",
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(top: 12, right: 15),
              child: Icon(Icons.search, size: 28),
            ),
            PopupMenuButton(
              elevation: 10,
              padding: EdgeInsets.symmetric(vertical: 20),
              itemBuilder: (context) => [
                PopupMenuItem(
                    value: 1,
                    child: Text(
                      "New Group",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    )),
                PopupMenuItem(
                    value: 2,
                    child: Text(
                      "New broadcast",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    )),
                PopupMenuItem(
                    value: 3,
                    child: Text(
                      "Linked devices",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                    )),
                const PopupMenuItem(
                    value: 4,
                    child: Text(
                      "Starred Message",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    )),
                const PopupMenuItem(
                    value: 5,
                    child: Text(
                      "Setting",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ))
              ],
              iconSize: 20,
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.blue.shade500,
            child: TabBar(
              isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 4,
              labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              tabs: [
                Container(
                  width: 24,
                  child: Tab(
                    icon: Icon(Icons.camera_alt_outlined),
                  ),
                ),
                Container(
                  width: 80,
                  child: Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("CHATS"),
                        SizedBox(width: 8,),
                        Container(
                          alignment: Alignment.center,
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:BorderRadius.circular(10)
                          ),
                          child: Text("400",
                              style: TextStyle(
                                  color: Colors.blue.shade500,
                                  fontSize: 10
                              )),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 64,
                  child: Tab(
                    child: Text("STATUS"),
                  ),
                ),
                Container(
                  width: 64,
                  child: Tab(
                    child: Text("CALLS"),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
              flex: 1,
              child:TabBarView(
                children: [
                  //tab1 camera
                  Container(color: Colors.black,),
                  //tab2 chat widget
                  ChatsWidget(),
                  //tab3 status widget
                  StatusWidget(),
                  //tab4
                  Container(color: Colors.black,),
                ],
          ))
        ],
      )

    )
    );
  }
}
