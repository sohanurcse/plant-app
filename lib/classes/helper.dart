import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plantapp/ui/user_validation/login_page.dart';
import '../ui/bottom_navigation.dart';

class Helper {
  final auth = FirebaseAuth.instance;
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  void LoginUser(context) async {
    try {
      showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              title: Center(
                child: CircularProgressIndicator(),
              ),

            );
          });
      await auth
          .signInWithEmailAndPassword(
              email: email.text, password: pass.text)
          .then((value) {
        print("User is Logged In");
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>BottomNavigation()), (route) => false);
      });
    } catch (e) {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text("Error Massage",style: TextStyle(fontSize: 22,color: Colors.red),),
              content: Text(e.toString()),
            );
          });
    }
  }

  void RegisterUser(context) async {
    try {
      showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              title: Center(
                child: CircularProgressIndicator(),
              ),

            );
          });
      await auth
          .createUserWithEmailAndPassword(
              email: email.text, password: pass.text)
          .then((value) {
        print("User is registered");
        Navigator.pop(context);
      });
    } catch (e) {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text("Error Massage",style: TextStyle(fontSize: 22,color: Colors.red),),
              content: Text(e.toString()),
            );
          });
    }
  }
  void LogOutUser(context)async{
    auth.signOut();
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (C)=>LoginPage()), (route) => false);
  }
}
