import 'package:firebase_auth/firebase_auth.dart';

Future<String> singUp(String e1, String p1) async {
  try {
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    await firebaseAuth.createUserWithEmailAndPassword(email: e1, password: p1);
    return "Success";
  }
  on FirebaseAuthException catch (e) {
    if (e.code == "weak-password") {
      print("Password at list 6char");
      return "Password at list 6char";
    }
    else if (e.code == "email-already-in-use") {
      print("Email already Exist");
      return "Email already Exist";
    }
  }
  return "";
}

Future<String> loginEmailPassword(String email, String password) async {
  try {
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    await firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    return "Success";
  }
  on FirebaseAuthException catch (e){
    if(e.code == "user-not-found"){
      print("No user found for that email");
      return "No user found for that email";
    }else if (e.code== "wrong-password"){
      print("Wrong password provided for that user");
      return "Wrong password provided for that user";
    }
  }
  return "";
}
bool checkUser()
{
  User? user = FirebaseAuth.instance.currentUser;
  if(user!=null)
    {
      return true;
    }
  return false;
}
void logout()
{
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  firebaseAuth.signOut();
}