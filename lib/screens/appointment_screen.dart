import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppointmentScreen extends StatelessWidget {
  List images=[
    "doctor1.jpg",
    "doctor2.jpg",
    "doctor3.jpg",
    "doctor4.jpg",
  ];

  List doctorSpecilist=[
    "Therapist",
    "Fever",
    "Dama",
    "Alergic"
  ];

  List doctorName=[
    "Dr. Ayesha Ameer",
    "Dr. Mahi Asim",
    "Dr. Ozair Rehman",
    "Dr. Hamza Yousaf"
  ];

  List doctorLastOnline=[
    "1 day ago",
    "15 hours ago",
    "2 hours ago",
    "26 minutes ago",
  ];
  List doctorReview=[
    "4.9",
    "4.8",
    "4.7",
    "4.6",
  ];
  // const AppointmentScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFF7165D6 ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Padding(
                padding: EdgeInsets.symmetric(horizontal:10 ),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.more_vert,
                        color: Colors.white,
                        size: 25,
                      ),
                    )
                  ],
                ),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage("assets/doctor1.jpg"),
                    ),
                    SizedBox(height: 15,),
                  Text("${doctorName[0]}",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 23,
                      color: Colors.white,
                    ),
                    ),
                    SizedBox(height: 5,),
                    Text("${doctorSpecilist[0]}",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding:  EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xFF9F97E2),
                            shape: BoxShape.circle
                          ),
                          child: Icon(
                            Icons.call,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xFF9F97E2),
                            shape: BoxShape.circle
                          ),
                          child: Icon(
                            CupertinoIcons.chat_bubble_text_fill,
                            color: Colors.white,
                            size: 25,

                          ),
                        )
                      ],
                    )
                  ],
                ),
                ),
              ],
            ),
            ),
            SizedBox(height: 20,),
            Container(
              height: MediaQuery.of(context).size.height/1.7,
              width: double.infinity,
              padding: EdgeInsets.only(
                top: 20,
                left: 15
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10)
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "About Doctor",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text("A physician,medical practitioner,medical doctor or simply doctor is a health professional. ",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54
                  ),
                  ),
                  SizedBox(height: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Reviews",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500
                      ),
                      ),
                      Row(
                        children: [
                          Icon( Icons.star,
                            color: Colors.amber,),
                          Icon( Icons.star,
                            color: Colors.amber,),
                          Icon( Icons.star,
                            color: Colors.amber,),
                          Icon( Icons.star,
                            color: Colors.amber,),
                          Icon( Icons.star,
                            color: Colors.amber,),
                          SizedBox(width: 5,),
                          Text("4.9",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                          ),
                          ),
                          SizedBox(width: 5,),
                          Text("(124)",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF7165D6),
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          Spacer(),
                          TextButton(onPressed: (){},
                              child: Text("See all",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color(0xFF7165D6)
                              ),
                              ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 140,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder:(context, index){
                      return Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4,
                              spreadRadius: 2
                            ),
                          ],
                        ),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width/1.4,
                          child: Column(
                            children: [
                              ListTile(
                                leading: CircleAvatar(
                                  radius: 25,
                                  backgroundImage: AssetImage("assets/${images[index]}"),
                                ),
                                title: Text("${doctorName[index]}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold
                                 ),
                                ),
                                subtitle: Row(
                                  children: [
                                    Text("${doctorLastOnline[index]}"),
                                  SizedBox(width: 10,),
                                  Icon( Icons.star,
                                    color: Colors.amber,),
                                  Text("${doctorReview[index]}",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500
                                    ),
                                  )
                                  ],
                                ),
                              ),
                              SizedBox(height: 5,),
                              Padding(
                                  padding:EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  maxLines:2,overflow:TextOverflow.ellipsis ,
                                  "Many thanks to ${doctorName[index]}.He is a great and professional doctor.",
                                style: TextStyle(
                                  color:  Colors.black,
                                ),),
                              )
                            ],
                          ),
                        ),
                      );
                      }, 
                   ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Location",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color:Color(0xFFF0EEFA),
                        shape: BoxShape.circle
                      ),
                      child: Icon(
                        Icons.location_on,
                        color: Color(0xFF7165D6),
                        size: 30,
                      ),
                    ),
                    title: Text(
                      "PAKISTAN,Superior University",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle:Text(
                      "86MP+GCC Superior University, 17 KM, Raiwind Rd, Kot Araian, Lahore, Punjab",
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
       bottomNavigationBar: Container(
         padding: EdgeInsets.all(15),
         height: 130,
         decoration: BoxDecoration(
           color: Colors.white,
           boxShadow: [
             BoxShadow(
               color: Colors.black12,
               blurRadius: 4,
               spreadRadius: 2
             ),
           ],
         ),
         child: Column(
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text(
                   "Consultation Price",
                   style:TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 16,
                     color: Colors.black54
                   ),
                 ),
                 Text("\$100",
                   style:TextStyle(
                     fontSize: 20,
                     color: Colors.black54,
                     fontWeight: FontWeight.bold
                   ) ,
                 ),
               ],
             ),
             SizedBox(height: 15,),
             InkWell(
               onTap: (){},
               child: Container(
                 width:MediaQuery.of(context).size.width,
                 padding: EdgeInsets.symmetric(vertical: 18),
                 decoration: BoxDecoration(
                   color:Color(0xFF7165D6),
                   borderRadius: BorderRadius.circular(10)
                 ),
                 child: Center(
                    child: Text(
                      "Book Appointment",
                      style: TextStyle(
                         color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                 ),
               ),
             )
           ],
         ),
       ),
    );
  }
}
