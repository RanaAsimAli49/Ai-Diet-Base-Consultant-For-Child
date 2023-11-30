import 'package:firebase_auth/firebase_auth.dart';

class FireAuth{
  static final FirebaseAuth _auth = FirebaseAuth.instance;
  static Future<bool> signUp(String email, String password)async{
    try{
       await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return true;
    }catch(e){
      print(e);
      return false;
    }
  }
  static Future<bool> signIn(String email, String password)async{
    try
        {
          await _auth.signInWithEmailAndPassword(email: email, password: password);
          return true;
        }catch(e){
      print(e);
      return false;
    }
  }
}