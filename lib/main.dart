import 'package:ai_health_care/splash_screen/splash_screen.dart';
import 'package:ai_health_care/views/login_view/login_view.dart';
import 'package:ai_health_care/views/sign_up_view/sign_up_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Material App',
    home: SplashScreen()
    );
  }


}

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Material App Bar'),
      // ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          // color: Color(0xFF4286f4),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/first_background.png'),
                fit: BoxFit.cover
            )
          ),
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 15,),
                const Text('Kid Tastic',style: TextStyle(fontSize: 30, color: Colors.deepOrangeAccent, fontWeight: FontWeight.bold),),
                SizedBox(height: MediaQuery.of(context).size.height/1.5,),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SignUpView(),));
                  },
                  child: Container(
                    height: 60,
                    width: 200,
                    decoration: const BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.all(Radius.circular(40),
                      ),),
                    child: const Center(child: Text("Let's Caring ", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25, color: Colors.deepOrangeAccent),)),
                  ),
                ),
                const SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginView(),));
                        },
                        child: Container(
                          height: 60,
                          width: 200,
                          decoration: const BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.all(Radius.circular(40),
                          ),

                        ),
                          child: const Center(child: Text("I already have account", style: TextStyle(fontSize: 15, color: Colors.deepOrangeAccent),)),
                        ),
                      ),
                      const SizedBox(width: 7,),
                      InkWell(
                        onTap: (){
                        },
                        child: Container(
                          height: 60,
                          width: 100,
                          decoration: const BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.all(Radius.circular(40),
                            ),
                          ),
                          child: const Center(
                              child: Padding(
                                padding: EdgeInsets.all(14.0),
                                child: Image(image: AssetImage('assets/google.png'),
                                  fit: BoxFit.cover,),
                              )
                          ),
                        ),
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
