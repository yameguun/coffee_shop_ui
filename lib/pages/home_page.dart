import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: const EdgeInsets.only(left: 15.0),
      children: <Widget>[
        const SizedBox(height: 50.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('coffee shop',
                style: TextStyle(
                    fontFamily: 'varela',
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF473D3A))),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: const DecorationImage(
                        image: AssetImage('assets/model.jpg'),
                        fit: BoxFit.cover)),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10.0,
        ),
        const Padding(
          padding: EdgeInsets.only(right: 45.0),
          child: Text(
            'Let\' select the best taste for your next coffee break!',
            style: TextStyle(
              fontFamily: 'nunito',
              fontSize: 17.0,
              fontWeight: FontWeight.w300,
              color: Color(0xFFB0AAA7),
            ),
          ),
        ),
        const SizedBox(height: 25.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const <Widget>[
            Text(
              'Taste of the week',
              style: TextStyle(
                  fontFamily: 'varela',
                  fontSize: 17.0,
                  color: Color(0xFF473D3A)),
            ),
            Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: Text('See all',
                  style: TextStyle(
                    fontFamily: 'varela',
                    fontSize: 15.0,
                    color: Color(0xFFCEC7C4),
                  )),
            ),
          ],
        ),
        const SizedBox(
          height: 15.0,
        ),
        Container(
          height: 410.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              coffeeListCard(
                  'assets/starbucks.png',
                  'Caffe Misto',
                  'Coffeeshop',
                  'Our dark, rich espresso balanced with steamed milk and a light layer of foam',
                  '500円',
                  false),
              coffeeListCard(
                  'assets/starbucks.png',
                  'Caffe Latte',
                  'BrownHouse',
                  'Rich, full-bodied espresso with bittersweet milk sauce and steamed milk',
                  '700円',
                  false)
            ],
          ),
        ),
        const SizedBox(height: 15.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const <Widget>[
            Text(
              'Explore nearby',
              style: TextStyle(
                  fontFamily: 'varela',
                  fontSize: 17.0,
                  color: Color(0xFF473D3A)),
            ),
            Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: Text(
                'See All',
                style: TextStyle(
                    fontFamily: 'varela',
                    fontSize: 15.0,
                    color: Color(0xFFCEC7C4)),
              ),
            ),
          ],
        ),
        const SizedBox(height: 15.0),
        Container(
            height: 125.0,
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  buildImage('assets/dummy.png'),
                  buildImage('assets/dummy.png'),
                  buildImage('assets/dummy.png')
                ]
            )
        ),
        const SizedBox(height: 20.0)
      ],
    ));
  }

  Widget buildImage(String imgPath) {
    return Padding(
        padding: const EdgeInsets.only(right: 15.0),
        child: Container(
            height: 100.0,
            width: 175.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                    image: AssetImage(imgPath),
                    fit: BoxFit.cover
                )
            )
        )
    );
  }

  Widget coffeeListCard(String imgPath, String coffeeName, String shopName,
      String description, String price, bool isFavorite) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: Container(
        height: 300.0,
        width: 225.0,
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                Container(height: 335.0),
                Positioned(
                  top: 75.0,
                  child: Container(
                    padding: EdgeInsets.only(left: 10.0, right: 20.0),
                    height: 260.0,
                    width: 225.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: const Color(0xFFDAB68C)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(
                          height: 60.0,
                        ),
                        Text(
                          shopName + '\'s',
                          style: const TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        const SizedBox(height: 10.0),
                        Text(
                          coffeeName,
                          style: const TextStyle(
                              fontFamily: 'varela',
                              fontSize: 32.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        const SizedBox(height: 10.0),
                        Text(
                          description,
                          style: const TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 14.0,
                              // fontWeight: FontWeight.w300,
                              color: Colors.white),
                        ),
                        const SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              price,
                              style: const TextStyle(
                                  fontFamily: 'varela',
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF3A4742)),
                            ),
                            Container(
                                height: 40.0,
                                width: 40.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.white),
                                child: Center(
                                    child: Icon(Icons.favorite,
                                        color: isFavorite
                                            ? Colors.red
                                            : Colors.grey,
                                        size: 15.0)))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                    left: 60.0,
                    top: 25.0,
                    child: Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(imgPath),
                                fit: BoxFit.contain)))),
              ],
            ),
            const SizedBox(height: 20.0),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed("/details");
              },
              child: Container(
                height: 50.0,
                width: 225.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: const Color(0xFF473D3A)),
                child: const Center(
                  child: Text('注文する',
                      style: TextStyle(
                          fontFamily: 'nunito',
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
