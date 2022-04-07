import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:plantapp/ui/user_validation/login_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Let\'s plant with us",
                style: TextStyle(
                    fontSize: 22, fontWeight: FontWeight.w900, letterSpacing: 1.8),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Bring neature home",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.7,
                    color: Colors.grey),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height /1.6,
                child: Image.asset('assets/Asset1.png'),
              ),
              const SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage()));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 12.0),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: const Text(
                    "Sign In",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.8,color: Colors.white),
                  ),
                ),
              ),
              TextButton(onPressed: (){}, child:Text(
                "Create an account",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,color: Colors.black.withOpacity(0.7)),
              )),
              const SizedBox(height: 20,),
              TextButton(onPressed: (){}, child:Text(
                "Forgot Password?",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,color: Colors.black.withOpacity(0.4)),
              )),
              const SizedBox(
                height: 5,
              )
            ],
          ),
        ),
      ),
    );
  }
}
