import 'package:ai_health_care/views/doctor/doctor_dashboard.dart';
import 'package:flutter/material.dart';

class PendingPatient extends StatefulWidget {
  const PendingPatient({super.key});

  @override
  State<PendingPatient> createState() => _PendingPatientState();
}

class _PendingPatientState extends State<PendingPatient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: true, title: Text("Pending Patient")),
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
                      radius: 45,
                      backgroundColor: Colors.white70,
                      backgroundImage: AssetImage("assets/doctor.png"),
                    ),
                    SizedBox(width: 20,),
                    Text("Asim Ali"),
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text("Accept")),
                    ElevatedButton(onPressed: () {}, child: Text("Accept"))
                  ],
                )

              ],
            ),
          ),
         const Divider(height: 20, thickness: 1)
        ]));
  }
}
