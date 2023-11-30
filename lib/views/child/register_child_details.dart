import 'package:ai_health_care/views/child/child_dashboard.dart';
import 'package:ai_health_care/views/static_class/signup_static.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/child_model.dart';

class EnterBabyDetails extends StatefulWidget {
  const EnterBabyDetails({super.key});

  @override
  State<EnterBabyDetails> createState() => _EnterBabyDetailsState();
}

class _EnterBabyDetailsState extends State<EnterBabyDetails> {

  final nameController = TextEditingController();
  SharedPreferences? prefs;

  final FirebaseAuth _auth = FirebaseAuth.instance;
  String? uid;

  bool isLoding=false;
  String? genderValue;
  List genderlistItem=["Male","Female","Custom"];
  var weigtValue;
  List weightlistItem=["3.4 kg","3.5 kg","4.2 kg","4.8 kg","5.4 kg","6 kg","6.2 kg","6.7 kg","7.2 kg","7.4 kg","7.7 kg","8.1 kg","8.4 kg","8.5 kg","8.8 kg","8.9 kg","9.2 kg","9.3 kg","9.5 kg","9.7 kg","10 kg","10.3 kg"];
  var ageValue;
  List agelistItem=["1 months","2 months","3 months","4 months","5 months","6 months","7 months","8 months","9 months","10 months","11 months","12 months",];
  var diseaseValue;
  List diseaselistItem=["Stomach Flu (Gastroenteritis)",
  "Hand, Foot and Mouth Disease (HFMD)",
  "Febrile Seizures",
  "Chickenpox ​​ ​",
  "Eczema",
  "Asthma",
  "Allergic Rhinitis (Allergies)",
  "Constipation",
    "Bronchitis and Bronchiolitis",
    "Common Cold"
  ];

  void initState() {
    intFun();
    getFirebaseUID();
    super.initState();
  }

  intFun()async{
    prefs = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ENTER CHILD DETAIL",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20, color: Colors.white)),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 600,
          margin: EdgeInsets.only(bottom: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextField(
                controller:nameController ,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: "Enter your Child Name",
                    prefixIcon: Icon(Icons.person_add_alt,color: Colors.lightBlue.shade500),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide:
                        BorderSide(color: Colors.lightBlue.shade300, width: 2)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(width: 2, color: Colors.lightBlue.shade100))),
              ),
              Container(
                padding: EdgeInsets.only(left: 9),
                decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(21),
                    border: Border.all(width: 2,color:Colors.lightBlue.shade100)
                ) ,
                child: DropdownButton(
                  dropdownColor: Colors.white,
                  iconSize: 36,
                  style: TextStyle(color: Colors.blue,fontSize: 16),
                  underline: SizedBox(),
                  iconEnabledColor: Colors.blue,
                  isExpanded: true,
                  hint: Text("Select Child Age"),
                  value:ageValue,
                  onChanged: (newValue){
                    setState(() {
                      ageValue=newValue as String;
                    });
                  },
                  items:agelistItem.map((valueItem){
                    return DropdownMenuItem(
                      value:valueItem,
                      child:Text(valueItem),
                    );
                  }).toList(),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 9),
                decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(21),
                    border: Border.all(width: 2,color:Colors.lightBlue.shade100)
                ) ,
                child: DropdownButton(
                  dropdownColor: Colors.white,
                  iconSize: 36,
                  style: TextStyle(color: Colors.blue,fontSize: 16),
                  underline: SizedBox(),
                  iconEnabledColor: Colors.blue,
                  isExpanded: true,
                  hint: Text("Select Gender"),
                  value:genderValue,
                  onChanged: (newValue){
                    setState(() {
                      genderValue=newValue as String;
                    });
                  },
                  items:genderlistItem.map((valueItem){
                    return DropdownMenuItem(
                      value:valueItem,
                      child:Text(valueItem),
                    );
                  }).toList(),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 9),
                decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(21),
                    border: Border.all(width: 2,color:Colors.lightBlue.shade100)
                ) ,
                child: DropdownButton(
                  dropdownColor: Colors.white,
                  iconSize: 36,
                  style: TextStyle(color: Colors.blue,fontSize: 16),
                  underline: SizedBox(),
                  iconEnabledColor: Colors.blue,
                  isExpanded: true,
                  hint: Text("Select Child Weight (kg)"),
                  value:weigtValue,
                  onChanged: (newValue){
                    setState(() {
                      weigtValue=newValue as String;
                    });
                  },
                  items:weightlistItem.map((valueItem){
                    return DropdownMenuItem(
                      value:valueItem,
                      child:Text(valueItem),
                    );
                  }).toList(),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 9),
                decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(21),
                    border: Border.all(width: 2,color:Colors.lightBlue.shade100)
                ) ,
                child: DropdownButton(
                  dropdownColor: Colors.white,
                  iconSize: 36,
                  style: TextStyle(color: Colors.blue,fontSize: 16),
                  underline: SizedBox(),
                  iconEnabledColor: Colors.blue,
                  isExpanded: true,
                  hint: Text("Select Disease if have any?"),
                  value:diseaseValue,
                  onChanged: (newValue){
                    setState(() {
                      diseaseValue=newValue as String;
                    });
                  },
                  items:diseaselistItem.map((valueItem){
                    return DropdownMenuItem(
                      value:valueItem,
                      child:Text(valueItem),
                    );
                  }).toList(),
                ),
              ),
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: (){
                      onSubmit();
                      //Navigator.push(context, MaterialPageRoute(builder: (context) =>ChildDashBoard(),));
                    },
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width/1.2,
                      decoration:BoxDecoration(
                        color: Colors.lightBlue.shade500,
                        borderRadius: BorderRadius.all(Radius.circular(40),
                        ),),
                      child: Center(child: isLoding? CircularProgressIndicator(color: Colors.white,):
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Register Child", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20, color: Colors.white),),
                      )),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void onSubmit() {
    if(genderValue==null || diseaseValue==null || weigtValue==null || ageValue==null || nameController.text.isEmpty){
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("All field must be fill"), backgroundColor: Colors.red,));
    }else{
      setState(() {
        isLoding=true;
      });
      addChild();
    }
  }

  Future<void> addChild() async {
    ChildModel child = ChildModel(name: nameController.text, age:ageValue, gender:genderValue , weight: weigtValue, disease: diseaseValue);
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    FirebaseDatabase db = FirebaseDatabase.instance;
    var reference = db.ref("child");
    
    try{
      firestore.collection("child").add({
        'name':child.name,
        'email': SignUpStatic.email,
        'age': child.age,
        'gender': child.gender,
        'weight': child.weight,
        'disease': child.disease,
      });
      await reference.child(uid.toString()).set({
        'name':child.name,
        'email': SignUpStatic.email,
        'age': child.age,
        'gender': child.gender,
        'weight': child.weight,
        'disease': child.disease,
      });
      // Obtain shared preferences.

      prefs!.setString("Cname",child.name??"");
      prefs!.setString("Cage", child.age??"");
      prefs!.setString("Cweight",child.weight??"");
      prefs!.setString("isLogin","Yes");
      prefs!.setString("user","child");
      setState(() {
        isLoding=false;
      });
      if(!mounted)return;
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ChildDashBoard(),));
    }catch(e)
    {
      setState(() {
        isLoding=false;
      });
    }
  }

  Future<String?> getFirebaseUID() async {
    // Check if a user is signed in
    User? user = _auth.currentUser;
    if (user != null) {
      uid=user.uid;
      return user.uid;
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Registration Faild please check your internet and try again"), backgroundColor: Colors.red,));
      // No user is signed in
      return null;
    }
  }
}
