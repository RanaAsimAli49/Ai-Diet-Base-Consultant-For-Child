import 'package:ai_health_care/views/static_class/signup_static.dart';
import 'package:flutter/material.dart';
import '../../firebase/firebase_auth.dart';
import '../login_view/login_view.dart';
import '../select_child_and_doctor_view/register_doctor_and_child.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController=TextEditingController();


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
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 20,),
                  const Text('Kid Tastic',style: TextStyle(fontSize: 30, color: Colors.deepOrangeAccent, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 80,),
                  Container(
                    // color: Colors.black12,
                    decoration: const BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.all(Radius.circular(40),
                      ),

                    ),
                    // color: Colors.white54,
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                    ),
                  ),
                  const SizedBox(height:9),
                  Container(
                    // color: Colors.black12,
                    decoration: const BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.all(Radius.circular(40),
                      ),

                    ),
                    // color: Colors.white54,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        controller: emailController,
                        decoration: const InputDecoration(
                          hintText: 'Enter Email',
                          hintStyle: TextStyle(color: Colors.deepOrangeAccent)
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height:9),
                  Container(
                    // color: Colors.black12,
                    decoration: const BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.all(Radius.circular(40),
                      ),

                    ),
                    // color: Colors.white54,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        controller: passwordController,
                        decoration: const InputDecoration(
                          hintText: 'Enter password',
                          hintStyle: TextStyle(color: Colors.deepOrangeAccent)
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height:9),
                  Container(
                    // color: Colors.black12,
                    decoration: const BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.all(Radius.circular(40),
                      ),

                    ),
                    // color: Colors.white54,
                    child:Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        controller:confirmpasswordController,
                        decoration: InputDecoration(
                          hintText: 'Enter Confirm Password',
                          hintStyle: TextStyle(color: Colors.deepOrangeAccent)
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height:29),
                  InkWell(
                    onTap: ()async{
                      if(passwordController.text.length<6){
                        if(!mounted)return;
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Password is too small"), backgroundColor: Colors.red,));
                        return;
                      }
                      else if(confirmpasswordController.text != passwordController.text){
                        if(!mounted)return;
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Password must be same"), backgroundColor: Colors.red,));
                        return;
                      }
                      if(emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
                        bool b = await FireAuth.signUp(
                            emailController.text, passwordController.text);
                        if(b){
                          setState(() {
                            SignUpStatic.email=emailController.text;
                          });
                          if(!mounted)return;
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Successfully Register"), backgroundColor: Colors.green,));
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Register_Doc_and_Child()));
                        }else{
                          if(!mounted)return;
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Invalid Email Adress"), backgroundColor: Colors.red,));
                        }
                      }else{
                        if(!mounted)return;
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Enter Email and password Correctly"), backgroundColor: Colors.red,));
                      }
                    },
                    child: Container(
                    height: 60,
                    width: 200,
                      decoration: const BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.all(Radius.circular(40),
                        ),

                      ),

                      child: const Center(child: Text("Register", style: TextStyle(fontSize: 15, color: Colors.deepOrangeAccent),)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('I Already have an account? ', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                      TextButton(onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginView()));
                      }, child: Text('Log in', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),))
                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
