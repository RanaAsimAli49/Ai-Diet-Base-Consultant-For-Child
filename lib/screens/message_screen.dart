import 'package:flutter/material.dart';

import 'chats_screen.dart';

class MessagesScreen extends StatelessWidget {
  // const MessagesScreen({super.key});
  List images = [
    "doctor1.jpg",
    "doctor2.jpg",
    "doctor3.jpg",
    "doctor4.jpg",
    "doctor1.jpg",
    "doctor2.jpg",
    "doctor3.jpg",
    "doctor4.jpg",
  ];

  List doctorSpecilist = ["Therapist", "Fever", "Dama", "Alergic"];

  List doctorName = [
    "Dr. Ayesha Ameer",
    "Dr. Mahi Asim",
    "Dr. Ozair Rehman",
    "Dr. Hamza Yousaf",
    "Dr. Shoaib Ahmed",
    "Dr. Khuram Manzoor",
    "Dr. Adeel Hussain",
    "Dr. Muhammad"
  ];

  List doctorLastOnline=[
    "12:10 am",
    "2:30 pm",
    "2:50 am",
    "9:09 pm",
    "9:00 am",
    "1:10 pm",
    "10:40 am",
    "online",
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Messages",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12, spreadRadius: 2, blurRadius: 10)
                  ]),
              child: Row(
                children: [
                  Container(
                    width: 270,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Search", border: InputBorder.none),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.search,
                    color: Color(0xFF7165D6),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8,left: 20,bottom: 8),
            child: Text("Active Now",
            style: TextStyle(
               fontSize: 20,
              fontWeight: FontWeight.bold
            ),
            ),
          ),
          SizedBox(height: 10,),
          SizedBox(
            height: 90,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 12),
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 2,
                            blurRadius: 10)
                      ]),
                  child: Stack(
                    textDirection: TextDirection.rtl,
                    children: [
                      Center(
                        child: Container(
                          height: 65,
                          width: 65,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset("assets/${images[index]}",
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(4),
                        padding: EdgeInsets.all(3),
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.green),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text("Recent Chat",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: 8,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: ListTile(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ChatsScreen(),));
                  },
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/${images[index]}"),
                  ),
                  title: Text(
                    "${doctorName[index]}",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("Hello,${doctorName[index]} are you there?",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black54
                  ),
                  ),
                  trailing: Text(
                    "${doctorLastOnline[index]}"
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
