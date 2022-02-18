import 'package:flutter/material.dart';
import 'package:plantapp/data/color.dart';
import 'package:plantapp/data/plant_data.dart';
import 'package:plantapp/ui/details_page.dart';

class AllProduct extends StatefulWidget {
  const AllProduct({Key? key}) : super(key: key);

  @override
  _AllProductState createState() => _AllProductState();
}

class _AllProductState extends State<AllProduct> {

  PageController controller = PageController();
  @override
  void initState() {
    controller = PageController(viewportFraction: 0.6, initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 320.0,
            child: PageView.builder(
              itemCount: plants.length,
              controller: controller,
              physics: const BouncingScrollPhysics(),
              padEnds: false,
              pageSnapping: true,
              onPageChanged: (value) => setState(() => activePage = value),
              itemBuilder: (itemBuilder, index) {
                bool active = index == activePage;
                return slider(active, index);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular',
                  style: TextStyle(
                    color: black.withOpacity(0.7),
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                Image.asset(
                  'assets/more.png',
                  color: green,
                  height: 20,
                ),
              ],
            ),
          ),
          SizedBox(height: 5,),
          SizedBox(
            height: 130.0,
            child: ListView.builder(
              itemCount: populerPlants.length,
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(left: 20.0),
              scrollDirection: Axis.horizontal,
              controller: controller,
              itemBuilder: (itemBuilder, index2) {
                bool active2 = index2 == activcard2;
                return slider2(active2, index2);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'User Choice',
                  style: TextStyle(
                    color: black.withOpacity(0.7),
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                Image.asset(
                  'assets/more.png',
                  color: green,
                  height: 20,
                ),
              ],
            ),
          ),
          SizedBox(height: 5,),
          SizedBox(
            height: 130.0,
            child: ListView.builder(
              itemCount: userChoices.length,
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(left: 20.0),
              scrollDirection: Axis.horizontal,
              controller: controller,
              itemBuilder: (itemBuilder, index3) {
                bool active3 = index3 == activcard3;
                return slider3(active3, index3);
              },
            ),
          ),
        ],
      ),
    );
  }
  AnimatedContainer slider(active, index) {
    double margin = active ? 20 : 30;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOutCubic,
      margin: EdgeInsets.all(margin),
      child: mainPlantsCard(index),
    );
  }
  Container slider2(active2, index2) {
    return Container(
      child: mainPlantsCard2(index2),
    );
  }
  Container slider3(active3, index3) {
    return Container(
      child: mainPlantsCard3(index3),
    );
  }

  Widget mainPlantsCard(index) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) => DetailsPage(plant: plants[index]),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: white,
          boxShadow: [
            BoxShadow(
              color: black.withOpacity(0.05),
              blurRadius: 15,
              offset: const Offset(5, 5),
            ),
          ],
          border: Border.all(color: green, width: 2),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Stack(
          children: [
            Container(
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
                  image: AssetImage(plants[index].imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              right: 8,
              top: 8,
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
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text(
                  '${plants[index].name} - \$${plants[index].price.toStringAsFixed(0)}',
                  style: TextStyle(
                    color: black.withOpacity(0.7),
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget mainPlantsCard2(index2) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) => DetailsPage(plant: populerPlants[index2]),
          ),
        );
      },
      child: Container(
        width: 200.0,
        margin: const EdgeInsets.only(right: 20, bottom: 10),
        decoration: BoxDecoration(
          color: lightGreen,
          boxShadow: [
            BoxShadow(
              color: green.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Stack(
          children: [
            Row(
              children: [
                Image.asset(
                  populerPlants[index2].imagePath,
                  width: 70,
                  height: 70,
                ),
                const SizedBox(width: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      populerPlants[index2].name,
                      style: TextStyle(
                        color: black.withOpacity(0.7),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      '\$${populerPlants[index2].price.toStringAsFixed(0)}',
                      style: TextStyle(
                        color: black.withOpacity(0.4),
                        fontWeight: FontWeight.w600,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Positioned(
              right: 20,
              bottom: 20,
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
        ),
      ),
    );
  }
  Widget mainPlantsCard3(index3) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) => DetailsPage(plant: userChoices[index3]),
          ),
        );
      },
      child: Container(
        width: 200.0,
        margin: const EdgeInsets.only(right: 20, bottom: 10),
        decoration: BoxDecoration(
          color: lightGreen,
          boxShadow: [
            BoxShadow(
              color: green.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Stack(
          children: [
            Row(
              children: [
                Image.asset(
                  userChoices[index3].imagePath,
                  width: 70,
                  height: 70,
                ),
                const SizedBox(width: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      userChoices[index3].name,
                      style: TextStyle(
                        color: black.withOpacity(0.7),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      '\$${userChoices[index3].price.toStringAsFixed(0)}',
                      style: TextStyle(
                        color: black.withOpacity(0.4),
                        fontWeight: FontWeight.w600,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Positioned(
              right: 20,
              bottom: 20,
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
        ),
      ),
    );
  }

  int activePage = 0;
  int activcard2 = 0;
  int activcard3 = 0;
}
