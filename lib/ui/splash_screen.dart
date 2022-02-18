import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plantapp/ui/main_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 2,milliseconds: 500), ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MainPage())));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
            SizedBox(
              height: 450,
              width: 450,
              child: Image.asset('assets/splash.jpg'),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("PlantApp",style: TextStyle(fontSize: 44,fontWeight: FontWeight.bold,color: Colors.green),),
                ),
                CircularProgressIndicator(color: Colors.green,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
