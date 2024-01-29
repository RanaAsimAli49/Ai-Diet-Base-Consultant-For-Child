import 'package:ai_health_care/screens/appointment_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({super.key});

  List symptoms=[
    "Temprature",
    "Snuffle",
    "Fever",
    "Cough",
    "Cold"
  ];

  List images=[
    "doctor1.jpg",
    "doctor2.jpg",
    "doctor3.jpg",
    "doctor4.jpg",
  ];

  List doctorName=[
    "Dr. Ayesha Ameer",
    "Dr. Mahi Asim",
    "Dr. Ozair Rehman",
    "Dr. Hamza Yousaf"
  ];
  List doctorSpecilist=[
    "Therapist",
    "Fever",
    "Dama",
    "Alergic"
  ];
  List doctorReview=[
    "4.9",
    "4.8",
    "4.7",
    "4.6",
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(padding: EdgeInsets.symmetric(horizontal: 15),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Hello Alex",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w500
              ),
              ),
              CircleAvatar(
                radius: 25,
                  backgroundImage: AssetImage("assets/doctor1.jpg"),
              )
            ],
          ),
          ),
          const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: (){
                },
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color:const Color(0xFF7165D6),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        spreadRadius: 4
                      )
                    ]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                              color:Colors.white,
                              shape: BoxShape.circle,
                          ),
                        child: const Icon(
                          Icons.add,
                          color: Color(0xFF7165D6),
                          size: 35,
                        ),
                      ),
                      const SizedBox(height: 30,),
                      const Text("Clinic Visit",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500
                      ),
                      ),
                      const SizedBox(height: 5,),
                      const Text("Make an Appointment",
                      style: TextStyle(
                        color: Colors.white54
                      ),)
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                },
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        spreadRadius: 4
                      )
                    ]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                              color:Color(0xFFF0EEFA),
                              shape: BoxShape.circle,
                          ),
                        child: const Icon(
                          Icons.home_filled,
                          color: Color(0xFF7165D6),
                          size: 35,
                        ),
                      ),
                      const SizedBox(height: 30,),
                      const Text("Home Visit",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontWeight: FontWeight.w500
                      ),
                      ),
                      const SizedBox(height: 5,),
                      const Text("Call the doctor Home",
                      style: TextStyle(
                        color: Colors.black54
                      ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 25,),
          Padding(padding: EdgeInsets.only(left: 15),
          child: Text("What are your symptoms?",
          style: TextStyle(
            color:Colors.black54,
            fontWeight: FontWeight.w500,
            fontSize: 23
          ),
          ),
          ),
          SizedBox(height: 70,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: symptoms.length,
            itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                color:Color(0xFFF0EEFA),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    spreadRadius: 2
                  )
                ]
              ),
              child: Center(
                child: Text(
                  symptoms[index],
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54
                  ),
                ),
              ),
            );
          },
          ),
          ),
          const SizedBox(height: 15,),
          const Padding(
            padding:EdgeInsets.only(left: 20),
            child:Text(
              "Popular Doctors",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w500,
                color: Colors.black54
              ),
            ),
          ),
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2
            ),
            itemCount: 4,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index){
              return InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AppointmentScreen(),));
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        spreadRadius: 2
                      )
                    ]
                  ),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 35,
                        //Doctor Images List Define
                        backgroundImage: AssetImage("assets/${images[index]}"),
                      ),
                      Text(
                        "${doctorName[index]}",// Doctor Name List Define
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54
                        ),
                      ),
                      Text(
                        //Doctor Specilization List Name
                        "${doctorSpecilist[index]}",// Doctor Name List Define
                        style: TextStyle(
                            color: Colors.black45
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber ,
                          ), Icon(
                            Icons.star,
                            color: Colors.amber ,
                          ), Icon(
                            Icons.star,
                            color: Colors.amber ,
                          ), Icon(
                            Icons.star,
                            color: Colors.amber ,
                          ),
                          Text(
                            "${doctorReview[index]}"
                          )
                        ],
                      )
                    ],
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

