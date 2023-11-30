import 'package:ai_health_care/views/doctor/doctor_dashboard.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../views/child/child_dashboard.dart';
import '../views/login_view/login_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String? isLogin;
  String? isUser;

  SharedPreferences? prefs;
  @override
  void initState() {
    initFun();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TweenAnimationBuilder(
              onEnd: (){print('Complete');},
              curve: Curves.bounceInOut,
              tween: Tween(begin:0.5 ,end: 1.0),
              duration:const Duration(seconds: 2) ,
              builder: (BuildContext context,valuj,Mywidget)=>
                  Opacity(
                      opacity: valuj,
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/mother_child.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
            ),

      ),
            )])));
  }

  void initFun() async{
    prefs = await SharedPreferences.getInstance();
    isLogin=prefs?.getString("isLogin");
    isUser=prefs?.getString("user");
    print(isUser);
    Future.delayed(Duration(seconds: 3),()=>{
      if(isLogin=="Yes" && isUser=="doctor")
        {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => DoctorDashboard(),))
        }
      else if(isLogin=="Yes" && isUser=="child")
        {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ChildDashBoard(),))
        }
      else{
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginView(),))
        }
    });

  }
}
