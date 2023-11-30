import 'package:flutter/material.dart';
class ChatsWidget extends StatelessWidget {
  const ChatsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:Padding(
        padding: EdgeInsets.symmetric(
          vertical:5,
           horizontal: 15
        ),
        child: Column(
          children: [
            // for(int i=1;i<11;i++)
            InkWell(
              onTap:(){},
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(40),
                      border:  Border.all(color: Colors.blue.shade500,width: 3),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset("assets/doctor.png",height: 45,width: 45,
                          fit: BoxFit.cover),
                    ),
                  ),
                  // ClipRRect(
                  //   borderRadius: BorderRadius.circular(40),
                  //   child: Image.asset("assets/child.jpg",
                  //   height: 65,
                  //   width: 65),
                  // )
                   Padding(padding: EdgeInsets.only(left: 20),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text("Asim Ali",style:TextStyle(fontSize: 15,fontWeight:FontWeight.bold,color: Colors.black87),),
                       SizedBox(height: 8,),
                       Text("Hi! Asim Ali.",style:TextStyle(fontSize: 15,color: Colors.black87),)
                     ],
                   ),
                   ),
                  Spacer(),
                  Column(
                    children: [
                      Text("12:15",style: TextStyle(fontSize: 15,color: Colors.blue.shade500),),
                      SizedBox(height: 6,),
                      Container(
                        alignment: Alignment.center,
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Colors.blue.shade500,
                            borderRadius:BorderRadius.circular(10)
                        ),
                        child: Text("1",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10
                            )),
                      ),
                    ],
                  ),
                  Divider(height: 25,thickness: 1),
                ],
              ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
