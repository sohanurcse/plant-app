import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:plantapp/data/color.dart';
import 'package:plantapp/ui/drawer.dart';
import 'package:plantapp/ui/home_page/all_tabbar.dart';
import 'package:plantapp/ui/home_page/outdoor.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  late TabController tabController;
  PageController controller = PageController();
  @override
  void initState() {
    tabController = TabController(length: 5,vsync: this);
    controller = PageController(viewportFraction: 0.6, initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: white,
      drawer: AppDrawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        automaticallyImplyLeading: false,
        leadingWidth: 40,
        leading: TextButton(
          onPressed: () {_globalKey.currentState!.openDrawer();},
          child: Image.asset(
            'assets/menu.png',
          ),
        ),
        actions: [
          Container(
            height: 40.0,
            width: 40.0,
            margin: const EdgeInsets.only(right: 20, top: 10, bottom: 5),
            decoration: BoxDecoration(
              color: green,
              boxShadow: [
                BoxShadow(
                  color: green.withOpacity(0.5),
                  blurRadius: 10,
                  offset: const Offset(0, 0),
                ),
              ],
              borderRadius: BorderRadius.circular(10.0),
              image: const DecorationImage(
                image: AssetImage('assets/pro.png'),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
            child: Row(
              children: [
                Container(
                  height: 45.0,
                  width: 270.0,
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    color: white,
                    border: Border.all(color: green),
                    boxShadow: [
                      BoxShadow(
                        color: green.withOpacity(0.15),
                        blurRadius: 10,
                        offset: const Offset(0, 0),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        height: 45,
                        width: 220,
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search',
                          ),
                        ),
                      ),
                      Image.asset(
                        "assets/search.png",
                        height: 25,
                      )
                    ],
                  ),
                ),
                    SizedBox(width: 10,),
                Container(
                  height: 45.0,
                  width: 45.0,
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    color: green,
                    boxShadow: [
                      BoxShadow(
                        color: green.withOpacity(0.5),
                        blurRadius: 10,
                        offset: const Offset(0, 0),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Image.asset(
                    'assets/adjust.png',
                    color: white,
                    height: 25,
                  ),
                ),
              ],
            ),
          ),

          TabBar(
            padding: EdgeInsets.all(10),
            controller: tabController,
            indicatorColor: Colors.transparent,
            labelColor: Colors.green,
            isScrollable: true,
            unselectedLabelColor: Colors.grey,

            tabs: [
              Container(
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30)),
                child: Tab(
                  child: Text("All",style: TextStyle(fontSize: 18),),
                ),
              ),
              Container(
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30)),
                child: Tab(
                  child: Text("Outdoor",style: TextStyle(fontSize: 18),),
                ),
              ),
              Container(
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30)),
                child: Tab(
                  child: Text("Indoor",style: TextStyle(fontSize: 18),),
                ),
              ),
              Container(
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30)),
                child: Tab(
                  child: Text("Office",style: TextStyle(fontSize: 18),),
                ),
              ),
              Container(
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30)),
                child: Tab(
                  child: Text("Gurden",style: TextStyle(fontSize: 18),),
                ),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: TabBarView(
              controller: tabController,
              children: [
                AllProduct(),
                OutDoor(),
                Container(),
                Container(),
                Container(),
              ],),
          )


        ],
      ),
    );
  }

}