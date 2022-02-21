import 'package:flutter/material.dart';

class Garden extends StatefulWidget {
  const Garden({Key? key}) : super(key: key);

  @override
  _GardenState createState() => _GardenState();
}

class _GardenState extends State<Garden> {
  late final Function press;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recomended",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w600),
                ),
                RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Colors.green,
                    elevation: 3,
                    hoverElevation: 2.0,
                    onPressed: () {},
                    child: Text(
                      "View All",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ))
              ],
            ),
          ),
          RecomendsPlants(),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Featured Plants",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w600),
                ),
                RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Colors.green,
                    elevation: 3,
                    hoverElevation: 2.0,
                    onPressed: () {},
                    child: Text(
                      "View All",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ))
              ],
            ),
          ),
          FeaturedPlants(),
          SizedBox(
            height: 10.0,
          )
        ],
      ),
    );
  }
}

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedPlantCard(
            images: "garden/bottom_image_01.png",
            press: () {},
          ),
          FeaturedPlantCard(
            images: "garden/bottom_image_02.png",
            press: () {},
          ),
          FeaturedPlantCard(
            images: "garden/bottom_image_03.png",
            press: () {},
          ),
          FeaturedPlantCard(
            images: "garden/bottom_image_04.png",
            press: () {},
          ),
          FeaturedPlantCard(
            images: "garden/bottom_image_05.png",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class FeaturedPlantCard extends StatelessWidget {
  const FeaturedPlantCard({
    Key? key,
    required this.images,
    required this.press,
  }) : super(key: key);

  final String images;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press(),
      child: Container(
        margin: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
        width: size.width * 0.6,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image:
            DecorationImage(image: AssetImage(images), fit: BoxFit.cover)),
      ),
    );
  }
}

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendPlantCard(
            image: "garden/image_01.png",
            title: "Simantha",
            country: "Russia",
            press: () {},
            prize: 198,
          ),
          RecomendPlantCard(
            image: "garden/image_02.png",
            title: "Oriza Sativa",
            country: "Brazil",
            press: () {},
            prize: 440,
          ),
          RecomendPlantCard(
            image: "garden/image_03.png",
            title: "Corcoras",
            country: "Argentina",
            press: () {},
            prize: 280,
          ),
          RecomendPlantCard(
            image: "garden/image_014.png",
            title: "Mangifira",
            country: "Bangladesh",
            press: () {},
            prize: 330,
          ),
          RecomendPlantCard(
            image: "garden/image_05.png",
            title: "Nimfiya",
            country: "Afganisthan",
            press: () {},
            prize: 320,
          ),
          RecomendPlantCard(
            image: "office/image_06.png",
            title: "Nimfiya",
            country: "Afganisthan",
            press: () {},
            prize: 320,
          ),
        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.prize,
    required this.press,
  }) : super(key: key);

  final String image, title, country;
  final int prize;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 20, top: 10, bottom: 20),
      width: size.width * 0.3,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height /4,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10.0),
                    topLeft: Radius.circular(10.0))),
          ),
          GestureDetector(
            onTap: press(),
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Colors.blueGrey.withOpacity(0.23),
                  )
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                            text: "$country".toUpperCase(),
                            style: TextStyle(
                                color: Colors.blueGrey.withOpacity(0.5)))
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    "\$$prize",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: Colors.green),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}