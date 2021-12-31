import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:week2/component/drawer.dart';
import 'package:week2/const/categories.dart';
import 'package:week2/const/listitems.dart';

import 'home_detail.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

final imgList = ['banner1.png', 'banner2.png'];
final List icons = [
  "ic_men.png",
  "ic_woman.png",
  "ic_kids.png",
  "ic_bag.png",
  "ic_decor.png"
];
final cost = [5, 10, 15];
final sale = [10, 20, 30];
final List name = [
  "Red Dress",
  "Vamsi",
  "Idalia",
];
final List dress = ["dress_8.jpeg", "vamsi.webp", "idalia.webp"];
final List<Color> colors = [
  Colors.red,
  Colors.blueAccent,
  Colors.amber,
  Colors.blue,
  Colors.green
];

final List texts = ["Men", "Women", "Baby & Kids", "Bags", "Decor"];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: const DrawerApp(),
        appBar: AppBar(
          title: const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Home',
              style: TextStyle(fontFamily: 'Pushster'),
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            )
          ],
        ),
        body: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                viewportFraction: 1.0,
                autoPlay: true,
                enlargeCenterPage: true,
              ),
              items: imgList.map(
                (url) {
                  return Image.asset(
                    'assets/images/' + url,
                    fit: BoxFit.cover,
                    width: 1000.0,
                    height: 120.0,
                  );
                },
              ).toList(),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
                height: 100,
                child: ListView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(10.0),
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (_, i) {
                      return Align(
                        alignment: Alignment.center,
                        child: CategoriesText(
                          text: texts[i],
                          color: colors[i],
                          image: icons[i],
                        ),
                      );
                    })),
            Container(
              margin: const EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Newwest Arrival',
                    style: TextStyle(fontFamily: 'Pushster', fontSize: 16),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(fontFamily: 'Pushster', fontSize: 16),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 280,
              width: double.maxFinite,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (_, i) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeDetail(
                                      text: name[i],
                                      cost: cost[i],
                                      images: dress[i],
                                      sale: sale[i],
                                    )));
                      },
                      child: ListItems(
                        text: name[i],
                        image: dress[i],
                        cost: cost[i],
                        sale: sale[i],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
