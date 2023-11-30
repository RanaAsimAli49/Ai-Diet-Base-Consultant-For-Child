import 'package:flutter/material.dart';

class StatusWidget extends StatelessWidget {
  const StatusWidget({super.key});

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
            Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  // My status View
                  Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(40),
                      border:  Border.all(color: Colors.blue.shade500,width: 1.5),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset("assets/doctor.png",height: 45,width: 45,
                      fit: BoxFit.cover),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("My Status",style:TextStyle(fontSize: 15,fontWeight:FontWeight.bold,color: Colors.black87),),
                        SizedBox(height: 8,),
                        Text("10:32",style:TextStyle(fontSize: 15,color: Colors.black.withOpacity(0.6)),)
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Icon(Icons.more_vert,color: Colors.blue.shade500),
                  ),
                  Divider(height: 25,thickness: 1),
                ],
              ),
            ),
//    Recent Update status
            SizedBox(height: 15,),
            Container(
              alignment: Alignment.topLeft,
              child:Text("Recent Updates",style:TextStyle(fontSize: 15,color: Colors.black54.withOpacity(0.6)),),
            ),
            SizedBox(height: 10,),
            Container(
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
                  Padding(padding: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Muhammad",style:TextStyle(fontSize: 15,fontWeight:FontWeight.bold,color: Colors.black87),),
                        SizedBox(height: 8,),
                        Text("10:42",style:TextStyle(fontSize: 15,color: Colors.grey),)
                      ],
                    ),
                  ),
                ],
              ),
            ),
//    View Updates status
            SizedBox(height: 10,),
            Container(
              alignment: Alignment.topLeft,
              child:Text("Viewed Updates",style:TextStyle(fontSize: 15,color: Colors.black54.withOpacity(0.6)),),
            ),
            SizedBox(height: 10,),
            Container(
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
                  Padding(padding: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Muhammad",style:TextStyle(fontSize: 15,fontWeight:FontWeight.bold,color: Colors.black87),),
                        SizedBox(height: 8,),
                        Text("10:42",style:TextStyle(fontSize: 15,color: Colors.grey),)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
