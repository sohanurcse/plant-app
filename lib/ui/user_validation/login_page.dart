import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:plantapp/classes/helper.dart';
import 'package:plantapp/ui/user_validation/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  RegExp regex = new RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
  bool isObsecure = true;

  Helper helper = Helper();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: const AssetImage("assets/login_page_image.jpg"),
                      fit: BoxFit.cover)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "User Login",
                        style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: Colors.green),
                      ),
                    ),
                    Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Wellcome back",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey.withOpacity(.6)),
                        ))
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              flex: 6,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient:
                      LinearGradient(colors: [Colors.green, Colors.lightGreen]),
                  borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(40),
                      topRight: Radius.circular(40)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Center(
                    child: Form(
                      key: formKey,
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(height: 50,),
                        Column(
                          children: [
                            TextFormField(
                              validator: (String? value) {
                                if (!regex.hasMatch(value.toString()))
                                  return "Invalid your Email";
                              },
                              textInputAction: TextInputAction.next,
                              controller: helper.email,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(16.0),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  borderSide: BorderSide.none,
                                ),
                                hintText: "Enter Your Email",
                                hintStyle: const TextStyle(color: Colors.white),
                                prefixIcon: Container(
                                  padding: const EdgeInsets.only(top: 16,bottom: 16),
                                  margin: const EdgeInsets.only(right: 8),
                                  child: const Icon(Icons.email,color: Colors.lightGreen,),
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(
                                            50,
                                          ),
                                          topLeft: Radius.circular(50),
                                          bottomLeft: Radius.circular(50))),
                                ),
                                filled: true,
                                fillColor: Colors.white.withOpacity(0.2),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              validator: MinLengthValidator(6, errorText: "Should be at least 6 charecter"),
                              controller: helper.pass,
                              obscureText: isObsecure,
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.done,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(16.0),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  borderSide: BorderSide.none,
                                ),
                                hintText: "Enter Your password",
                                hintStyle: const TextStyle(color: Colors.white),
                                prefixIcon: Container(
                                  padding: const EdgeInsets.only(top: 16,bottom: 16),
                                  margin: const EdgeInsets.only(right: 8),
                                  child: const Icon(Icons.password,color: Colors.lightGreen,),
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topRight: const Radius.circular(
                                            50,
                                          ),
                                          topLeft: const Radius.circular(50),
                                          bottomLeft: const Radius.circular(50))),
                                ),
                                suffixIcon: IconButton(onPressed: (){
                                  setState(() {
                                    isObsecure = !isObsecure;
                                  });
                                }, icon: Icon(isObsecure
                                    ? Icons.visibility_off
                                    : Icons.visibility,color: Colors.white,),),
                                filled: true,
                                fillColor: Colors.white.withOpacity(0.2),
                              ),
                            ),
                            const SizedBox(height: 20,),
                            RaisedButton(onPressed: () {
                              if (formKey.currentState!.validate() && helper.email != null && helper.pass != null) {
                                helper.LoginUser(context);
                                formKey.currentState!.save();
                                print("${helper.email.toString()}");
                                print("${helper.pass.toString()}");
                              }else{
                                return null;
                              }


                            },
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                              color:Colors.green,
                              child: const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 12.0),
                                child: Text("Login",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w600),),
                              ),
                            ),
                            TextButton(onPressed: (){}, child:Text(
                              "Forgot Password?",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1,color: Colors.white.withOpacity(0.4)),
                            )),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don\'t have an account?",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.white.withOpacity(0.7)),),

                            TextButton(onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const SignUp()));
                            }, child:const Text(
                              "SIGN UP NOW",
                              style: const TextStyle(
                                  fontSize:16,
                                  fontWeight: FontWeight.w900,
                                  letterSpacing: 1,color: Colors.white),

                            )),
                          ],
                        )

                      ],
                    )),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
