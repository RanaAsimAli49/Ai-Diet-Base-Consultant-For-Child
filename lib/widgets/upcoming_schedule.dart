import 'package:flutter/material.dart';

class UpcomingSchedule extends StatelessWidget {
  const UpcomingSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("About Doctor",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500
        ),
        ),
        SizedBox(height: 15,),
        Container(
          padding: EdgeInsets.symmetric(vertical: 5),
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
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "Dr. Tariq Mehmood",
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  subtitle:  Text(
                    "Pediatrician\nMBBS, MCPS, DCH",
                  ),
                  trailing: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assets/doctor1.jpg"),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                child: Divider(
                  thickness: 1,
                    height: 20,
                ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.calendar_month_rounded,
                          color: Colors.black38,),
                        SizedBox(width: 5,),
                        Text(
                          "12 Dec 2023",
                          style: TextStyle(
                              color: Colors.black54
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time_filled_sharp,
                          color: Colors.black54,
                        ),
                        SizedBox(width: 5,),
                        Text("10:00 AM",
                          style:TextStyle(
                              color: Colors.black54
                          ) ,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle
                          ),
                        ),
                        SizedBox(width: 5,),
                        Text(
                          "Confirmed",
                          style: TextStyle(
                            color: Colors.black54
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: Color(0xFFF4F6FA),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                            color: Color(0xFF7165D6),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text(
                            "Reschedule",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 15,)
              ],
            ),
          ),
        ),
        SizedBox(height: 20,),
        Text("About Doctor",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500
          ),
        ),
        SizedBox(height: 15,),
        Container(
          padding: EdgeInsets.symmetric(vertical: 5),
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
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "Dr. Maqsood Ahemd",
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  subtitle:  Text(
                    "Pediatrician\nMBBS, FCPS",
                  ),
                  trailing: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assets/doctor2.jpg"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Divider(
                    thickness: 1,
                    height: 20,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.calendar_month_rounded,
                          color: Colors.black38,),
                        SizedBox(width: 5,),
                        Text(
                          "13 Dec 2023",
                          style: TextStyle(
                              color: Colors.black54
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time_filled_sharp,
                          color: Colors.black54,
                        ),
                        SizedBox(width: 5,),
                        Text("10:30 AM",
                          style:TextStyle(
                              color: Colors.black54
                          ) ,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle
                          ),
                        ),
                        SizedBox(width: 5,),
                        Text(
                          "Confirmed",
                          style: TextStyle(
                              color: Colors.black54
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                            color: Color(0xFFF4F6FA),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                            color: Color(0xFF7165D6),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text(
                            "Reschedule",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 15,)
              ],
            ),
          ),
        ),
        SizedBox(height: 20,),
        Text("About Doctor",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500
          ),
        ),
        SizedBox(height: 15,),
        Container(
          padding: EdgeInsets.symmetric(vertical: 5),
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
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "Dr. Asif Arshad",
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  subtitle:  Text(
                    "Pediatrician, Neonatologist\nMBBS, MCPS, FCPS",
                  ),
                  trailing: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assets/doctor3.jpg"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Divider(
                    thickness: 1,
                    height: 20,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.calendar_month_rounded,
                          color: Colors.black38,),
                        SizedBox(width: 5,),
                        Text(
                          "14 Dec 2023",
                          style: TextStyle(
                              color: Colors.black54
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time_filled_sharp,
                          color: Colors.black54,
                        ),
                        SizedBox(width: 5,),
                        Text("11:00 AM",
                          style:TextStyle(
                              color: Colors.black54
                          ) ,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle
                          ),
                        ),
                        SizedBox(width: 5,),
                        Text(
                          "Confirmed",
                          style: TextStyle(
                              color: Colors.black54
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                            color: Color(0xFFF4F6FA),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                            color: Color(0xFF7165D6),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text(
                            "Reschedule",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 15,)
              ],
            ),
          ),
        ),
        SizedBox(height: 20,),
        Text("About Doctor",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500
          ),
        ),
        SizedBox(height: 15,),
        Container(
          padding: EdgeInsets.symmetric(vertical: 5),
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
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "Dr. Ali",
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  subtitle:  Text(
                    "Pediatrician\nMBBS, DCH, FCPS (Paedriartics)",
                  ),
                  trailing: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assets/doctor4.jpg"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Divider(
                    thickness: 1,
                    height: 20,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.calendar_month_rounded,
                          color: Colors.black38,),
                        SizedBox(width: 5,),
                        Text(
                          "16 Dec 2023",
                          style: TextStyle(
                              color: Colors.black54
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time_filled_sharp,
                          color: Colors.black54,
                        ),
                        SizedBox(width: 5,),
                        Text("1:00 PM",
                          style:TextStyle(
                              color: Colors.black54
                          ) ,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle
                          ),
                        ),
                        SizedBox(width: 5,),
                        Text(
                          "Confirmed",
                          style: TextStyle(
                              color: Colors.black54
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                            color: Color(0xFFF4F6FA),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                            color: Color(0xFF7165D6),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text(
                            "Reschedule",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 15,),
              ],
            ),
          ),
        ),
        SizedBox(height: 15,),
        Text("About Doctor",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500
          ),
        ),
        SizedBox(height: 15,),
        Container(
          padding: EdgeInsets.symmetric(vertical: 5),
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
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "Dr. Asma Arshad",
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  subtitle:  Text(
                    "Pediatrician\nMBBS",
                  ),
                  trailing: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assets/doctor1.jpg"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Divider(
                    thickness: 1,
                    height: 20,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.calendar_month_rounded,
                          color: Colors.black38,),
                        SizedBox(width: 5,),
                        Text(
                          "12 Dec 2023",
                          style: TextStyle(
                              color: Colors.black54
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time_filled_sharp,
                          color: Colors.black54,
                        ),
                        SizedBox(width: 5,),
                        Text("10:00 AM",
                          style:TextStyle(
                              color: Colors.black54
                          ) ,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle
                          ),
                        ),
                        SizedBox(width: 5,),
                        Text(
                          "Confirmed",
                          style: TextStyle(
                              color: Colors.black54
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                            color: Color(0xFFF4F6FA),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                            color: Color(0xFF7165D6),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text(
                            "Reschedule",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 15,)
              ],
            ),
          ),
        ),
        SizedBox(height: 20,),
        Text("About Doctor",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500
          ),
        ),
        SizedBox(height: 15,),
        Container(
          padding: EdgeInsets.symmetric(vertical: 5),
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
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "Dr. Sumaira",
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  subtitle:  Text(
                    "Pediatrician\nMBBS, FCPS (Pediatrics)",
                  ),
                  trailing: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assets/doctor1.jpg"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Divider(
                    thickness: 1,
                    height: 20,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.calendar_month_rounded,
                          color: Colors.black38,),
                        SizedBox(width: 5,),
                        Text(
                          "12 Dec 2023",
                          style: TextStyle(
                              color: Colors.black54
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time_filled_sharp,
                          color: Colors.black54,
                        ),
                        SizedBox(width: 5,),
                        Text("10:00 AM",
                          style:TextStyle(
                              color: Colors.black54
                          ) ,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle
                          ),
                        ),
                        SizedBox(width: 5,),
                        Text(
                          "Confirmed",
                          style: TextStyle(
                              color: Colors.black54
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                            color: Color(0xFFF4F6FA),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                            color: Color(0xFF7165D6),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text(
                            "Reschedule",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 15,)
              ],
            ),
          ),
        ),
        SizedBox(height: 20,),
      ],
    ),
    );
  }
}
