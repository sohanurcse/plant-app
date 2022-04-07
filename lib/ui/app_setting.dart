import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:plantapp/Widget/help_and_support.dart';
import 'package:plantapp/Widget/help_and_support.dart';
import 'package:plantapp/Widget/help_and_support.dart';
import 'package:plantapp/Widget/help_and_support.dart';
import 'package:plantapp/classes/helper.dart';
import 'package:url_launcher/url_launcher.dart';
import '../Widget/help_and_support.dart';


class AppSettings extends StatefulWidget {
  const AppSettings({Key? key}) : super(key: key);

  @override
  State<AppSettings> createState() => _AppSettingsState();
}

class _AppSettingsState extends State<AppSettings> {

  static const fbprofile = "https://facebook.com/csestudent";
  static const ytchannel = "https://youtube.com/srlab360";
  static const whatsapp = "https://whatsapp.com/01873342757";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                children: [
                  Container(
                      margin: const EdgeInsets.only(top: 10.0),
                      alignment: Alignment.center,
                      child: const Text(
                        "Options",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, top: 30, bottom: 10),
                alignment: Alignment.topLeft,
                child: const Text(
                  "Accounts",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.green,
                      fontWeight: FontWeight.bold),
                ),
              ),
              RaisedButton(
                splashColor: Colors.white,
                focusColor: Colors.white,
                elevation: 0,
                color: Colors.white,
                onPressed: () {},
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                                margin: const EdgeInsets.only(left: 20),
                                child: const Icon(
                                  Icons.person,
                                  size: 30,
                                  color: Colors.grey,
                                )),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text(
                              "Edit Profile",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.grey,
                        size: 30,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              RaisedButton(
                splashColor: Colors.white,
                focusColor: Colors.white,
                elevation: 0,
                color: Colors.white,
                onPressed: () {},
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                                margin: const EdgeInsets.only(left: 20),
                                child: const Icon(
                                  Icons.vpn_key,
                                  size: 30,
                                  color: Colors.grey,
                                )),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text(
                              "Change Password",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.grey,
                        size: 30,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, top: 30, bottom: 10),
                alignment: Alignment.topLeft,
                child: const Text(
                  "Settings",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.green,
                      fontWeight: FontWeight.bold),
                ),
              ),
              RaisedButton(
                splashColor: Colors.white,
                focusColor: Colors.white,
                elevation: 0,
                color: Colors.white,
                onPressed: () {},
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                                margin: const EdgeInsets.only(left: 20),
                                child: const Icon(
                                  Icons.translate,
                                  size: 30,
                                  color: Colors.grey,
                                )),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text(
                              "Language",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.grey,
                        size: 30,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              RaisedButton(
                splashColor: Colors.white,
                focusColor: Colors.white,
                elevation: 0,
                color: Colors.white,
                onPressed: () {},
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                                margin: const EdgeInsets.only(left: 20),
                                child: const Icon(
                                  Icons.notifications_active,
                                  size: 30,
                                  color: Colors.grey,
                                )),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text(
                              "Notifications",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.grey,
                        size: 30,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              RaisedButton(
                splashColor: Colors.white,
                focusColor: Colors.white,
                elevation: 0,
                color: Colors.white,
                onPressed: () {},
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                                margin: const EdgeInsets.only(left: 20),
                                child: const Icon(
                                  Icons.lock_outline,
                                  size: 30,
                                  color: Colors.grey,
                                )),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text(
                              "Privacy & Security",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.grey,
                        size: 30,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, top: 30, bottom: 10),
                alignment: Alignment.topLeft,
                child: const Text(
                  "Others",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.green,
                      fontWeight: FontWeight.bold),
                ),
              ),
              RaisedButton(
                splashColor: Colors.white,
                focusColor: Colors.white,
                elevation: 0,
                color: Colors.white,
                onPressed: () {
                  showDialog(context: context, builder: (context){
                    return Dialog(shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),child: const Support(),);
                  });
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                              margin: const EdgeInsets.only(left: 20),
                              child: const Icon(
                                Icons.headset,
                                size: 30,
                                color: Colors.grey,
                              )),
                          const SizedBox(
                            width: 20,
                          ),
                          const Text(
                            "Help & Support",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          )
                        ],
                      ),
                      const Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.grey,
                        size: 30,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              RaisedButton(
                splashColor: Colors.white,
                focusColor: Colors.white,
                elevation: 0,
                color: Colors.white,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width / 1.3,
                            height: MediaQuery.of(context).size.height / 1.2,
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 8,
                                  child: SingleChildScrollView(
                                    child: Column(children: [
                                      Container(
                                          margin:
                                              const EdgeInsets.only(top: 10.0),
                                          alignment: Alignment.center,
                                          child: const Text(
                                            "About PlantApp",
                                            style: TextStyle(
                                                fontSize: 22,
                                                color: Colors.blueGrey,
                                                ),
                                          )),
                                      Container(
                                          alignment: Alignment.topLeft,
                                          margin: const EdgeInsets.only(
                                              top: 20.0, left: 10),
                                          child: const Text(
                                            "About us",
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.green,
                                            ),
                                          )),
                                      const Divider(
                                        height: 1,
                                        thickness: 0.6,
                                        color: Colors.black12,
                                      ),
                                      Container(
                                          alignment: Alignment.topLeft,
                                          margin: const EdgeInsets.only(
                                              top: 20.0, left: 20),
                                          child: const Text(
                                            "In this article, we cover the most important features users expect to find in e-Commerce mobile apps. Note that this feature list is extensive, and you don’t need to include every single one to make your mobile shopping app successful.\n In this article, we cover the most important features users expect to find in e-Commerce mobile apps. Note that this feature list is extensive, and you don’t need to include every single one to make your mobile shopping app successful. \n In this article, we cover the most important features users expect to find in e-Commerce mobile apps. Note that this feature list is extensive, and you don’t need to include every single one to make your mobile shopping app successful.",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black87,
                                            ),
                                          )),
                                      Container(
                                          alignment: Alignment.topLeft,
                                          margin: const EdgeInsets.only(
                                              top: 20.0, left: 10),
                                          child: const Text(
                                            "Our Contributions",
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.green,
                                            ),
                                          )),
                                      const Divider(
                                        height: 1,
                                        thickness: 0.6,
                                        color: Colors.black12,
                                      ),
                                      Container(
                                          alignment: Alignment.topLeft,
                                          margin: const EdgeInsets.only(
                                              top: 20.0, left: 20),
                                          child: const Text(
                                            "In this article, we cover the most important features users expect to find in e-Commerce mobile apps. Note that this feature list is extensive, and you don’t need to include every single one to make your mobile shopping app successful.\n In this article, we cover the most important features users expect to find in e-Commerce mobile apps. Note that this feature list is extensive, and you don’t need to include every single one to make your mobile shopping app successful. \n In this article, we cover the most important features users expect to find in e-Commerce mobile apps. Note that this feature list is extensive, and you don’t need to include every single one to make your mobile shopping app successful.",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black87,
                                            ),
                                          )),
                                    ]),
                                  ),
                                ),
                                Expanded(
                                    flex: 2,
                                    child: Container(
                                      margin: const EdgeInsets.only(top: 10),
                                      child: Column(
                                        children: [
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Container(
                                                  color: Colors.grey,
                                                  child: SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width /
                                                            5,
                                                    height: 1,
                                                  ),
                                                ),
                                                Container(
                                                  alignment: Alignment.center,
                                                  child: const Text(
                                                    "Join us Now",
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.green,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  color: Colors.grey,
                                                  child: SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width /
                                                            5,
                                                    height: 1,
                                                  ),
                                                ),
                                              ]),
                                          Container(
                                            margin: const EdgeInsets.only(top: 10.0),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  InkWell(
                                                    onTap: () {
                                                      launch(whatsapp);
                                                    },
                                                    child: const Image(
                                                      image: const AssetImage(
                                                          "assets/whatsapp_48px.png"),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    onTap: (){
                                                      launch(fbprofile);
                                                    },
                                                    child: const Image(
                                                      image: AssetImage(
                                                          "assets/facebook_48px.png"),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    onTap: (){
                                                      launch(ytchannel);
                                                    },
                                                    child: const Image(
                                                      image: const AssetImage(
                                                          "assets/youtube_48px.png"),
                                                    ),
                                                  ),
                                                ]),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(right: 20.0,),
                                            alignment: Alignment.topRight,
                                            child: RaisedButton(
                                                onPressed: () => Navigator.pop(context,true),
                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                                color: Colors.green,
                                                child: const Text(
                                                  "Ok",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.white),
                                                )),
                                          )
                                        ],
                                      ),
                                    ))
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                              margin: const EdgeInsets.only(left: 20),
                              child: const Icon(
                                Icons.help_outline,
                                size: 30,
                                color: Colors.grey,
                              )),
                          const SizedBox(
                            width: 20,
                          ),
                          const Text(
                            "About",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.grey,
                      size: 30,
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30.0, right: 20),
                padding: const EdgeInsets.all(10.0),
                width: MediaQuery.of(context).size.width / 2.9,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0)),
                child: RaisedButton(
                  onPressed: () {
                    // Fluttertoast.showToast(
                    //   msg: "Error",  // message
                    //   toastLength: Toast.LENGTH_SHORT, // length
                    //   gravity: ToastGravity.BOTTOM,    // location
                    //   // duration
                    // );
                    Helper helper = Helper();
                    helper.LogOutUser(context);
                  },
                  color: Colors.lightGreenAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.logout,
                        color: Colors.grey,
                        size: 30,
                      ),
                      Text(
                        "Logout?",
                        style: TextStyle(fontSize: 22, color: Colors.grey),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
