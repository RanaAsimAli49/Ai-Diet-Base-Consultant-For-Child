import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../firebase/firebase_auth.dart';
import '../child/child_dashboard.dart';
import '../doctor/doctor_dashboard.dart';
import '../sign_up_view/sign_up_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  SharedPreferences? prefs;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isLoading=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/first_background.png'),
                fit: BoxFit.cover
            )
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 20,),
                  const Text('Kid Tastic',style: TextStyle(fontSize: 30, color:Color(0xFF2B208C), fontWeight: FontWeight.bold),),
                  const SizedBox(height: 80,),
                  Container(
                    // color: Colors.black12,
                    decoration: const BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.all(Radius.circular(40),
                      ),

                    ),
                    // color: Colors.white54,
                    child: Padding(
                      padding:EdgeInsets.only(left: 20,top: 3,right: 3,bottom: 3),
                      child: TextField(
                        controller: emailController,
                        decoration: const InputDecoration(
                            hintText: 'Enter Email',
                            border: InputBorder.none,
                            hintStyle: TextStyle(color:Color(0xFF2B208C))
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height:20),
                  Container(
                    // color: Colors.black12,
                    decoration: const BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.all(Radius.circular(40),
                      ),

                    ),
                    // color: Colors.white54,
                    child: Padding(
                      padding:EdgeInsets.only(left: 20,top: 3,right: 3,bottom: 3),
                      child: TextField(
                        controller: passwordController,
                        decoration: const InputDecoration(
                            hintText: 'Enter Password',
                            border: InputBorder.none,
                            hintStyle: TextStyle(color:Color(0xFF2B208C))
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height:30),
                  InkWell(
                    onTap: ()async{
                      if(passwordController.text.isNotEmpty && passwordController.text.isNotEmpty) {
                        setState(() {
                          isLoading=true;
                        });
                        bool b = await FireAuth.signIn(
                            emailController.text, passwordController.text);
                        if(b) {
                          //if(!mounted)return;
                          //ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Login Successfully"), backgroundColor: Colors.green,));
                          fetchData();
                        }
                        else{
                          setState(() {
                            isLoading=false;
                          });
                          if(!mounted)return;
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Fail to Login check your email, password and try again"), backgroundColor: Colors.red,));
                        }
                      }
                      else{
                        if(!mounted)return;
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("email and password can't be empty"), backgroundColor: Colors.red,));
                      }
                    },
                    child: Container(
                      height: 51,
                      width: 320,
                      decoration: const BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.all(Radius.circular(40),
                        ),

                      ),
                      child: Center(child: isLoading?const CircularProgressIndicator():const Text("Login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color:Color(0xFF2B208C)),)),
                    ),
                  ),
                  const SizedBox(height: 30,),
                  InkWell(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SignUpView(),));
                    },
                    child: Container(
                      height: 51,
                      width: 320,
                      decoration: const BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.all(Radius.circular(40),
                        ),

                      ),
                      child: const Center(child: Text("Register",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color:Color(0xFF2B208C)),)),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<List<Map<String, dynamic>>> fetchData() async {
    prefs = await SharedPreferences.getInstance();
    QuerySnapshot querySnapshot =
    await FirebaseFirestore.instance.collection('doctor').get();

    List<Map<String, dynamic>> data = [];
    querySnapshot.docs.forEach((doc) {
      // print(doc['name'].toString());
      if(doc['email'].toString().toLowerCase().contains(emailController.text.toLowerCase()))
        {
          // setState(() {
          //   isLoading=false;
          // });
          print("doc");
          prefs!.setString('isLogin', 'Yes');
          prefs!.setString('user', 'doctor');

          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const DoctorDashboard(),));
        }
    });
    ////
    QuerySnapshot querySnapshot1 =
    await FirebaseFirestore.instance.collection('child').get();
    querySnapshot1.docs.forEach((doc) {
      // print(doc['name'].toString());
      if(doc['email'].toString().toLowerCase().contains(emailController.text.toLowerCase()))
        {
          print("child");
          // setState(() {
          //   isLoading=false;
          // });
          prefs!.setString('isLogin', 'Yes');
          prefs!.setString('user', 'child');
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ChildDashBoard(),));
        }
    });
    setState(() {
      isLoading=false;
    });
    return data;
  }
   bool fun(String st){

    if(st.isEmpty){
      return true;
    }else{
      return false;
    }
  }
  bool isLog(String st){

    if(st.isEmpty){
      return true;
    }else{
      return false;
    }
  }

}
