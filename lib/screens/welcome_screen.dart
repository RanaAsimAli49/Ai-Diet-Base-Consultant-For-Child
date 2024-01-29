import 'package:ai_health_care/screens/login_screen.dart';
import 'package:ai_health_care/widgets/navbar_screen.dart';
import 'package:ai_health_care/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen  extends StatelessWidget {
  const WelcomeScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 15),
            Align(alignment: Alignment.centerRight,
            child:TextButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => NavBarRoots(),));
              },
              child: Text("SKIP",
              style: TextStyle(fontSize: 20,
              color: Color(0xFF7165D6)),),
            ),
            ),
            SizedBox(height: 50,),
            Padding(padding: EdgeInsets.all(20),
            child: Image.asset("assets/doctors.png"),),
            SizedBox(height: 50,),
            Text("Doctors Appointment",
            style: TextStyle(
              color:Color(0xFF7165D6),
              fontSize:30,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              wordSpacing: 2
            ),),
            SizedBox(height: 10,),
            Text("Appoint Your Doctor",
            style: TextStyle(
              color:Colors.black54,
              fontSize:15,
              fontWeight: FontWeight.w500,
              letterSpacing: 1,
              wordSpacing: 2
            ),),
            SizedBox(height: 60,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: Color(0xFF7165D6),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>LoginScreen(),));
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 15,horizontal: 40),
                      child: Text("Log In",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white
                      ),),
                    ),
                  ),
                ),
                Material(
                  color: Color(0xFF7165D6),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen(),));
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 15,horizontal: 40),
                      child: Text("Sign Up",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white
                      ),),
                    ),
                  ),
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}
