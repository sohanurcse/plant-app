import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:plantapp/data/bottom_manu.dart';
import 'package:plantapp/ui/app_setting.dart';
import 'package:plantapp/ui/home_page/home_page.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  PageController pageController = PageController();
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView.builder(
          onPageChanged: (value) => setState(() => selectIndex = value),
          controller: pageController,
          itemCount: child.length,
          itemBuilder: (itemBuilder, index) {
            return Container(
              child: child[index],
            );
          }),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              for (int i = 0; bottomMenu.length > i; i++)
                GestureDetector(
                  onTap: () {
                    setState(() {
                      pageController.jumpToPage(i);
                      selectIndex = i;
                    });
                  },
                  child: Image.asset(
                    bottomMenu[i].imagePath,
                    color: selectIndex == i
                        ? Colors.green
                        : Colors.grey.withOpacity(0.5),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}

List child = [
  const HomePage(),
  Container(
    child: const Center(
      child: Text(
        "This page is a ",
        style: TextStyle(fontSize: 30),
      ),
    ),
  ),
  Container(
    child: const Center(
        child: Text(
      "This page is a demo mode.It will build soon",
      style: const TextStyle(fontSize: 30),
    )),
  ),
  const AppSettings(),
];
