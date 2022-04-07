import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:plantapp/ui/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false, home: SplashScreen()));
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
