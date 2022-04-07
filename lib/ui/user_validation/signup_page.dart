import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:plantapp/Widget/custom_textfield.dart';
import 'package:plantapp/classes/helper.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isObsecure = true;
  bool isObsecure2 = true;


  RegExp regex2 = new RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
  RegExp regex3 = new RegExp("");


  GlobalKey<FormState> formKey2 = GlobalKey<FormState>();

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
                        "User Registration",
                        style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: Colors.green),
                      ),
                    ),
                    Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Welcome To our Community",
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
                  child: SingleChildScrollView(
                    child: Center(
                      child: Form(
                        key: formKey2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(height: 50,),
                              Column(
                                children: [
                                   CustomTextField(icon: Icons.person,
                                      hintText: "Enter your Name",
                                     validator: (String? value) {
                                       if (value!.isEmpty)
                                         return "Enter a Valid Name";
                                     },
                                      keyboardType: TextInputType.emailAddress,
                                      textInputAction: TextInputAction.next,

                                  ),
                                  const SizedBox(height: 10,),
                                   CustomTextField(icon: Icons.email,
                                    hintText: "Enter your Email",
                                     validator: (String? value) {
                                       if (!regex2.hasMatch(value.toString()))
                                         return "Invalid your Email";
                                     },
                                    controller: helper.email,
                                    keyboardType: TextInputType.emailAddress,
                                    textInputAction: TextInputAction.next,
                                  ),
                                  const SizedBox(height: 10,),
                                  CustomTextField(icon: Icons.password,
                                    hintText: "Enter your Password",
                                    validator: MinLengthValidator(6, errorText: "Should be at least 6 character"),
                                    keyboardType: TextInputType.visiblePassword,
                                    textInputAction: TextInputAction.next,
                                    obscureText: isObsecure,
                                    controller: helper.pass,
                                    suffixIcon: IconButton(onPressed: (){
                                      setState(() {
                                        isObsecure = !isObsecure;
                                      });
                                    }, icon: Icon(isObsecure
                                        ? Icons.visibility_off
                                        : Icons.visibility,color: Colors.white,),),
                                  ),
                                  const SizedBox(height: 10,),

                                  CustomTextField(icon: Icons.password,
                                    validator: MinLengthValidator(6, errorText: "Should be at least 6 character"),
                                    hintText: "Enter your Confirm Password",
                                    keyboardType: TextInputType.visiblePassword,
                                    textInputAction: TextInputAction.done,
                                    obscureText: isObsecure2,
                                    suffixIcon: IconButton(onPressed: (){
                                      setState(() {
                                        isObsecure2 = !isObsecure2;
                                      });
                                    }, icon: Icon(isObsecure2
                                        ? Icons.visibility_off
                                        : Icons.visibility,color: Colors.white,),),
                                  ),
                                  const SizedBox(height: 10,),

                                  RaisedButton(onPressed: () {
                                    if (formKey2.currentState!.validate() && helper.email != null && helper.pass != null) {
                                      helper.RegisterUser(context);
                                      formKey2.currentState!.save();
                                      print("${helper.email.toString()}");
                                      print("${helper.pass.toString()}");
                                    }

                                  },
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                                    color:Colors.green,
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 12.0),
                                      child: Text("Register",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w600),),
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
                                  Text("Already have an account?",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.white.withOpacity(0.7)),),

                                  TextButton(onPressed: (){
                                    Navigator.of(context).pop();
                                  }, child:const Text(
                                    "LOGIN NOW",
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
                ),
              )),
        ],
      ),

    );
  }
}
