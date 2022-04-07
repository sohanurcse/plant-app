import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:plantapp/data/color.dart';
import 'package:plantapp/data/plant_data.dart';
import 'package:plantapp/data/plant_model.dart';
import 'package:plantapp/ui/details_page.dart';

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
    'https://images.unsplash.com/photo-1502117859338-fd9daa518a9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1554321586-92083ba0a115?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1536679545597-c2e5e1946495?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
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
              child: const Text(
                "Latest OutDoor Product",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,

                    color: Colors.blueGrey),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                itemCount: userChoices.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1.20,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) => ItemCard(
                        userchoice: plants[index],
                        press: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsPage(
                                plant: userChoices[index],
                              ),
                            )),
                      )),
            ),
          )

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

class ItemCard extends StatelessWidget {
  final Plants userchoice;
  final Function press;
  const ItemCard({Key? key, required this.userchoice, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            color: lightGreen,
            boxShadow: [
              BoxShadow(
                color: black.withOpacity(0.05),
                blurRadius: 15,
                offset: const Offset(5, 5),
              ),
            ],
            borderRadius: BorderRadius.circular(25.0),
            image: DecorationImage(
              image: AssetImage(userchoice.imagePath),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Text(
              '${userchoice.name} - \$${userchoice.price.toStringAsFixed(0)}',
              style: TextStyle(
                color: black.withOpacity(0.7),
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
          ),
        ),
        Positioned(
          right: 2,
          top: 2,
          child: CircleAvatar(
            backgroundColor: green,
            radius: 15,
            child: Image.asset(
              'assets/add.png',
              color: white,
              height: 15,
            ),
          ),
        ),
      ],
    );
  }
}
