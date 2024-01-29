import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

class ChatSample extends StatelessWidget {
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
  // ChatSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 60),
          child: ClipPath(
            clipper: UpperNipMessageClipper(MessageType.receive),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xFFE1E1E2)
              ),
              child: Text(
                "Hello, what i can do for you, you can book appointment directly.",
                style: TextStyle(
                  fontSize: 16
                ),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(top: 20,left:80),
            child: ClipPath(
              clipper: LowerNipMessageClipper(MessageType.send),
              child: Container(
                padding: EdgeInsets.only(left: 20,top: 10,bottom: 25,right: 20),
                decoration: BoxDecoration(
                  color: Color(0xFF7165D6)
                ),
                child: Text(
                  "Hello Dr Husnain, Are you There?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
