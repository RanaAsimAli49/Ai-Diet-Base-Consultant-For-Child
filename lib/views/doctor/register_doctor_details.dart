import 'package:ai_health_care/views/doctor/doctor_dashboard.dart';
import 'package:ai_health_care/views/static_class/signup_static.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../models/doctor_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class EnterDoctorDetails extends StatefulWidget {
  const EnterDoctorDetails({super.key});

  @override
  State<EnterDoctorDetails> createState() => _EnterDoctorDetailsState();
}

class _EnterDoctorDetailsState extends State<EnterDoctorDetails> {
  bool isLoding=false;
 String? genderValue;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  List genderlistItem=["Male","Female","Transgender"];
 var specilityValue;
 List specilitylistItem=["Paediatrician"];
 var experienceValue;
 List experiencelistItem=["3 Month","6 Month","1 Year","2 Year","3 Year","4 Year","5 Year"];

 final nameController = TextEditingController();
 final regNumberController = TextEditingController();
 SharedPreferences? prefs;

 String? uid;


  @override
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
        backgroundColor: Color(0xFF7165D6),
        title: Text("ENTER DOCTOR DETAILS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20, color: Colors.white)),
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
                controller: nameController,
                keyboardType: TextInputType.text,
                style: TextStyle(color: Color(0xFF7165D6)),
                cursorColor:Color(0xFF7165D6) ,
                decoration: InputDecoration(
                    labelText: "Enter Full Name",
                    labelStyle: TextStyle(color: Color(0xFF7165D6)),
                    focusColor:Color(0xFF7165D6),
                    fillColor: Color(0xFF7165D6),
                    prefixIcon: Icon(Icons.person_add_alt_1_outlined,color: Color(0xFF7165D6)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide:
                        BorderSide(color: Color(0xFF7165D6), width: 2)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(width: 2,color: Color(0xFF7165D6)))),
              ),
              TextField(
                controller: regNumberController,
                keyboardType: TextInputType.number,
                style: TextStyle(color: Color(0xFF7165D6)),
                cursorColor:Color(0xFF7165D6) ,
                decoration: InputDecoration(
                    labelText: "Enter Registration Number (LN)",
                    labelStyle:TextStyle(color: Color(0xFF7165D6)) ,
                    prefixIcon: Icon(Icons.confirmation_num,color: Color(0xFF7165D6)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide:
                        BorderSide(color: Color(0xFF7165D6), width: 2)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(width: 2, color: Color(0xFF7165D6)))),
              ),
              Container(
                padding: EdgeInsets.only(left: 9),
                decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(21),
                  border: Border.all(width: 2,color:Color(0xFF7165D6))
                ) ,
                child: DropdownButton(
                  dropdownColor: Colors.white,
                  iconSize: 36,
                  style: TextStyle(color:Color(0xFF7165D6),fontSize: 16),
                  underline: SizedBox(),
                  iconEnabledColor: Color(0xFF7165D6),
                  isExpanded: true,
                  hint: Text("Select Gender",style: TextStyle(color: Color(0xFF7165D6)),),
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
                    border: Border.all(width: 2,color:Color(0xFF7165D6))
                ) ,
                child: DropdownButton(
                  dropdownColor: Colors.white,
                  iconSize: 36,
                  style: TextStyle(color:Color(0xFF7165D6),fontSize: 16),
                  underline: SizedBox(),
                  iconEnabledColor: Color(0xFF7165D6),
                  isExpanded: true,
                  hint: Text("Select Speciality",style: TextStyle(color: Color(0xFF7165D6)),),
                  value:specilityValue,
                  onChanged: (newValue){
                    setState(() {
                      specilityValue=newValue as String;
                    });
                  },
                  items:specilitylistItem.map((valueItem){
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
                    border: Border.all(width: 2,color:Color(0xFF7165D6))
                ) ,
                child: DropdownButton(
                  dropdownColor: Colors.white,
                  iconSize: 36,
                  style: TextStyle(color: Color(0xFF7165D6),fontSize: 16),
                  underline: SizedBox(),
                  iconEnabledColor: Color(0xFF7165D6),
                  isExpanded: true,
                  hint: Text("Enter Experience if have any!",style: TextStyle(color: Color(0xFF7165D6)),),
                  value:experienceValue,
                  onChanged: (newValue){
                    setState(() {
                      experienceValue=newValue as String;
                    });
                  },
                  items:experiencelistItem.map((valueItem){
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
                      //
                      onSubmit();
                    },
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width/1.2,
                      decoration:BoxDecoration(
                        color: Color(0xFF7165D6),
                        borderRadius: BorderRadius.all(Radius.circular(40),
                        ),),
                      child: Center(
                          child: isLoding? const CircularProgressIndicator(color: Colors.white,):const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Register Doctor", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20, color: Colors.white),),
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
    if(genderValue==null || specilityValue==null || experienceValue==null || nameController.text.isEmpty || regNumberController.text.isEmpty){
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("All field must be fill",style: TextStyle(color: Colors.white),), backgroundColor: Color(0xFF7165D6),));
    }else{
      setState(() {
        isLoding=true;
      });
      addDoctor();
    }
  }

 Future<void> addDoctor() async {
   DoctorModel doctor = DoctorModel(name: nameController.text, registrationNumber: regNumberController.text, gender:genderValue , speciality: specilityValue, experience: experienceValue);
   FirebaseDatabase db = FirebaseDatabase.instance;
   FirebaseFirestore firestore=FirebaseFirestore.instance;
   var reference = db.ref("doctor");
   try{
     if(SignUpStatic.email !=null) {
       firestore.collection("doctor").add({
         'name': doctor.name,
         'uid': uid,
         'email': SignUpStatic.email,
         'registrationNo': doctor.registrationNumber,
         'gender': doctor.gender,
         'specialization': doctor.speciality,
         'experience': doctor.experience,
       });
       await reference.child(uid.toString()).set({
        'name': doctor.name,
         'uid': uid,
        'email': SignUpStatic.email,
        'registrationNo': doctor.registrationNumber,
        'gender': doctor.gender,
        'specialization': doctor.speciality,
        'experience': doctor.experience,
      });
     } else {
       return;
     }
      // Obtain shared preferences.

      prefs!.setString("name",doctor.name??"");
      prefs!.setString("registrationNumber", doctor.registrationNumber??"");
      prefs!.setString("speciality",doctor.speciality??"");
      prefs!.setString("isLogin","Yes");
      prefs!.setString("user","doctor");
      setState(() {
        isLoding=false;
      });
      if(!mounted)return;
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => DoctorDashboard(),));
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
