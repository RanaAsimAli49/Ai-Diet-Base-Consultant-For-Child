import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BabyRecord extends StatefulWidget {
  const BabyRecord({super.key});

  @override
  State<BabyRecord> createState() => _BabyRecordState();
}

class _BabyRecordState extends State<BabyRecord> {
  String aiDiet = '';
  String name = '';
  String age = '';
  String weight = '';

  @override
  void initState() {
    iniFun();
    super.initState();
  }
  iniFun()async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    //prefs = await SharedPreferences.getInstance();
    setState(() {
      name = (prefs!.getString("Cname"))!;
      age = (prefs!.getString("Cage")!);
      weight = (prefs!.getString("Cweight")!);
      aiDiet = prefs.getString("aiDiet")??"No Record";
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Child Report"),
        backgroundColor: Color(0xFF7165D6),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF7165D6),
                borderRadius: BorderRadius.circular(20)
              ),

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Name : $name",style: const TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold,height: 2),),
                    const Divider(color: Colors.white,thickness: 1,height: 40,),
                    SizedBox(height: 7,),
                    Text("Weight : $weight", style: const TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold,height: 0),),
                    const Divider(color: Colors.white,thickness: 1,height: 40,),
                    SizedBox(height: 7,),
                    Text("Age: $age", style: const TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold,height: 0),),
                    const Divider(color: Colors.white,thickness: 1,height: 40),
                    SizedBox(height: 7,),
                    Text("AI Diet Report", style: const TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold,),),
                    // const Divider(color: Colors.white,thickness: 1),
                    SizedBox(height: 15,),

                    Text(
                      aiDiet,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        height: 1.8,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      )
    );
  }
}
