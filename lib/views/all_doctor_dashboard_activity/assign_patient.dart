import 'package:ai_health_care/views/doctor/doctor_dashboard.dart';
import 'package:flutter/material.dart';

class AssignPatient extends StatelessWidget {
  const AssignPatient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> arrName = [
      "Asim"
    ];
    return Scaffold(
        appBar: AppBar(
            title: const Text(
              "Assign Patient",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            centerTitle: true),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 15),
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DoctorDashboard(),
                      ));
                },
                child: ListTile(
                    leading: const CircleAvatar(
                      radius:35,
                      backgroundColor: Colors.white70,
                      backgroundImage: AssetImage("assets/doctor.png"),
                    ),
                    title: Text(arrName[index])),
              ),
            );
          },
          itemCount: arrName.length,
          separatorBuilder: (context, index) {
            return const Divider(height: 20, thickness: 1);
          },
        ));
  }
}
