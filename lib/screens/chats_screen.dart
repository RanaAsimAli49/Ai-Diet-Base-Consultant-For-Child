import 'package:flutter/material.dart';

import '../widgets/chat_sample.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Color(0xFF7165D6),
          leadingWidth: 30,
          title: Padding(
            padding: const EdgeInsets.only(top:8),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage("assets/doctor3.jpg"),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 10),
                child:Text(
                  "Dr Husnain",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),
                ),
                )
              ],
            ),
          ),
          actions: [
            Padding(
                padding:EdgeInsets.only(top: 8,right: 15),
              child: Icon(
                Icons.call,
                color: Colors.white,
                size: 26,
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 8,right: 8),
            child: Icon(
              Icons.video_call,
              size: 26,
              color: Colors.white,
            ),),
            Padding(
              padding: EdgeInsets.only(top: 8,right: 8),
              child: Icon(
                  Icons.more_vert,
                color: Colors.white,
                size: 26,
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.only(top: 20,left: 15,right: 15,bottom: 8),
          itemBuilder:(context, index) => ChatSample(),
      ),
      bottomSheet: Container(
        height: 65,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 2,
              blurRadius: 10
            ),
          ],
        ),
        child: Row(
          children: [
            Padding(
                padding: EdgeInsets.only(left:20),
            child: Icon(
              Icons.add,
              color: Color(0xFF7165D6),
              size: 30,
            ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 5),
            child: Icon(
              Icons.emoji_emotions_outlined,
              color: Color(0xFF7165D6),
              size: 30,
            ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 10),
            child: Container(
              alignment: Alignment.centerRight,
              width: MediaQuery.of(context).size.width/1.6,
              child: TextFormField(
                decoration: InputDecoration(
                  border:InputBorder.none,
                  hintText: "Type something"
                ),
              ),
            ),
            ),
            Spacer(),
            Padding(
                padding: EdgeInsets.only(right:10),
            child: Icon(
              Icons.send,
              size: 30,
              color: Color(0xFF7165D6),
            ),)
          ],
        ),
      ),
    );
  }
}
