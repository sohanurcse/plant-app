import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OutDoor extends StatefulWidget {
  const OutDoor({Key? key}) : super(key: key);

  @override
  _OutDoorState createState() => _OutDoorState();
}

class _OutDoorState extends State<OutDoor> {
  final controller = CarouselController();
  int currentindex = 0;
  final imageList = [
    'https://indoor.unsplash.com/photo-1502117859338-fd9daa518a9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://indoor.unsplash.com/photo-1554321586-92083ba0a115?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://indoor.unsplash.com/photo-1536679545597-c2e5e1946495?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CarouselSlider.builder(
                  carouselController: controller,
                  itemCount: imageList.length,
                  itemBuilder: (context, index, realIndex) {
                    final imageLists = imageList[index];
                    return buildImage(imageLists, index);
                  },
                  options: CarouselOptions(
                    initialPage: 0,
                    height: 150,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                    enableInfiniteScroll: false,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) =>
                        setState(() => currentindex = index),
                  )),
              SizedBox(
                height: 5,
              ),
              buildIndicator(),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 5),
            child: Container(
              width: double.infinity,
              child: Text(
                "Latest OutDoor Product",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.blueGrey),
              ),
            ),
          ),

        ],
      ),
    );
  }

  Widget buildImage(String imageLists, index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: Colors.grey,
          image: DecorationImage(
              image: NetworkImage(imageLists), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(30),
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: currentindex,
        count: imageList.length,
        effect: SlideEffect(
          activeDotColor: Colors.green,
          dotColor: Colors.grey,
          dotWidth: 15,
          dotHeight: 15,
        ),
        onDotClicked: animatedSlide,
      );
  void animatedSlide(int index) => controller.animateToPage(index);

}
