
import 'package:firebase_auth/firebase_auth.dart';

class AuthServices{

  //create instance
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //signin annonymous
  Future signInAnonymously() async{
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return user;
    } catch (err) {
      print(err.toString());
      return null;
    }
  }

  //register email and password

  //sign in gmail

  // signout
}