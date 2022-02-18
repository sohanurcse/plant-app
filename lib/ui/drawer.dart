import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/app_drawer1.png"),
                        fit: BoxFit.cover),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 180.0, top: 40.0),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://images.pexels.com/photos/7825931/pexels-photo-7825931.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10.0),
                        alignment: Alignment.bottomLeft,
                        width: double.infinity,
                        child: Text(
                          "Sohanur Rahman",
                          style: GoogleFonts.getFont('Lobster',
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        ),
                        height: 35,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10.0),
                        alignment: Alignment.topLeft,
                        width: double.infinity,
                        child: Text(
                          "mds91439@gmail.com",
                          style: GoogleFonts.getFont('Poiret One',
                              fontSize: 12,
                              fontWeight: FontWeight.w800,
                              color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                  flex: 8,
                  child: Stack(
                    overflow: Overflow.visible,
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: double.infinity,
                        width: MediaQuery.of(context).size.width / 2.1,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.green, Colors.lightGreen]),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(80),
                              topRight: Radius.circular(80)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(80),
                                      bottomRight: Radius.circular(30))),
                                  margin: EdgeInsets.only(top: 30),

                                  child: RaisedButton(
                                    onPressed: () {},
                                    color: Colors.green.withOpacity(0.1),
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(80),
                                            bottomRight: Radius.circular(30))),
                                    child: Row(
                                      children: [
                                        Container(
                                            child: Icon(
                                              Icons.home,
                                              color: Colors.white,
                                              size: 30,
                                            )),
                                        Container(
                                            margin: EdgeInsets.only(
                                              left: 20.0,
                                            ),
                                            child: Text(
                                              "Home",
                                              style: TextStyle(
                                                  color: Colors.white, fontSize: 14),
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(30),
                                      bottomRight: Radius.circular(30))),

                                  child: RaisedButton(
                                    onPressed: () {},
                                    color: Colors.green.withOpacity(0.1),
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(30),
                                            bottomRight: Radius.circular(30))),
                                    child: Row(
                                      children: [
                                        Container(
                                            child: Image.asset(
                                              'assets/heart.png',
                                              color: Colors.white,
                                              height: 30,
                                            )),
                                        Container(
                                            margin: EdgeInsets.only(
                                              left: 20.0,
                                            ),
                                            child: Text(
                                              "Favourite List",
                                              style: TextStyle(
                                                  color: Colors.white, fontSize: 14),
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(30),
                                      bottomRight: Radius.circular(30))),
                                  child: RaisedButton(
                                    onPressed: () {},
                                    color: Colors.green.withOpacity(0.1),
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(30),
                                            bottomRight: Radius.circular(30))),
                                    child: Row(
                                      children: [
                                        Container(
                                            child: Image.asset(
                                              'assets/cart.png',
                                              color: Colors.white,
                                              height: 30,
                                            )),
                                        Container(
                                            margin: EdgeInsets.only(
                                              left: 20.0,
                                            ),
                                            child: Text(
                                              "My Cart",
                                              style: TextStyle(
                                                  color: Colors.white, fontSize: 14),
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(30),
                                      bottomRight: Radius.circular(30))),
                                  child: RaisedButton(
                                    onPressed: () {},
                                    color: Colors.green.withOpacity(0.1),
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(30),
                                            bottomRight: Radius.circular(30))),
                                    child: Row(
                                      children: [
                                        Container(
                                            child: Icon(Icons.local_offer,size: 30,color: Colors.white,)),
                                        Container(
                                            margin: EdgeInsets.only(
                                              left: 20.0,
                                            ),
                                            child: Text(
                                              "Offers",
                                              style: TextStyle(
                                                  color: Colors.white, fontSize: 14),
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(30),
                                      bottomRight: Radius.circular(30))),
                                  child: RaisedButton(
                                    onPressed: () {},
                                    color: Colors.green.withOpacity(0.1),
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(30),
                                            bottomRight: Radius.circular(30))),
                                    child: Row(
                                      children: [
                                        Container(
                                            child: Icon(Icons.whatshot,size: 30,color: Colors.white,)),
                                        Container(
                                            margin: EdgeInsets.only(
                                              left: 20.0,
                                            ),
                                            child: Text(
                                              "Hot Sells",
                                              style: TextStyle(
                                                  color: Colors.white, fontSize: 14),
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(30),
                                      bottomRight: Radius.circular(30))),
                                  child: RaisedButton(
                                    onPressed: () {},
                                    color: Colors.green.withOpacity(0.1),
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(30),
                                            bottomRight: Radius.circular(30))),
                                    child: Row(
                                      children: [
                                        Container(
                                            child: Icon(Icons.star_half,size: 30,color: Colors.white,)),
                                        Container(
                                            margin: EdgeInsets.only(
                                              left: 20.0,
                                            ),
                                            child: Text(
                                              "Rate Us",
                                              style: TextStyle(
                                                  color: Colors.white, fontSize: 14),
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(30),
                                      bottomRight: Radius.circular(80))),
                                  child: RaisedButton(
                                    onPressed: () {},
                                    color: Colors.green.withOpacity(0.1),
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(30),
                                            bottomRight: Radius.circular(80))),
                                    child: Row(
                                      children: [
                                        Container(
                                            child: Icon(Icons.settings,size: 30,color: Colors.white,)),
                                        Container(
                                            margin: EdgeInsets.only(
                                              left: 20.0,
                                            ),
                                            child: Text(
                                              "Setting",
                                              style: TextStyle(
                                                  color: Colors.white, fontSize: 14),
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("v-1.0.0",style: TextStyle(fontSize: 12,color: Colors.white),)
                              ],
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        right: -80,
                        child: TextButton(
                          onPressed: (){},
                          child: Row(
                            children: [
                             Icon(Icons.exit_to_app,size: 20,color: Colors.green,),
                              SizedBox(width: 5,),
                              Text("Logout",style: TextStyle(fontSize: 16,color: Colors.green,fontWeight: FontWeight.w400),)
                            ],
                          ),
                        ),
                      )

                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
