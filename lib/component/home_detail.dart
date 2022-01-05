import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:week2/const/description_page.dart';
import 'package:week2/const/more_info_page.dart';
import 'package:week2/const/reviews.dart';

class HomeDetail extends StatefulWidget {
  @required
  final String text;

  final int cost;
  final int sale;

  final String images;
  const HomeDetail(
      {Key? key,
      required this.text,
      required this.cost,
      required this.images,
      required this.sale})
      : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  _HomeDetailState createState() => _HomeDetailState(text, cost, images, sale);
}

class _HomeDetailState extends State<HomeDetail> with TickerProviderStateMixin {
  final String text;
  final int cost;
  final String images;
  final int sale;
  static const List<Tab> _tabs = [
    Tab(text: 'Description'),
    Tab(text: 'More Info'),
    Tab(text: 'Reviews'),
  ];

  _HomeDetailState(this.text, this.cost, this.images, this.sale);

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(300),
        child: AppBar(
          actions: [
            const IconButton(onPressed: null, icon: Icon(Icons.favorite)),
            Badge(
              position: BadgePosition.topEnd(top: -5, end: -10),
              badgeContent: const Text(
                '3',
                style: TextStyle(color: Colors.white),
              ),
              child: const Icon(
                Icons.add_shopping_cart,
              ),
            ),
            const SizedBox(
              width: 10,
            )
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/' + images),
                    fit: BoxFit.fill)),
          ),
        ),
      ),
      body: Container(
        color: Colors.grey[300],
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(text,
                      style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Pushster',
                          color: Colors.black)),
                  Text('\$' + cost.toString(),
                      style: const TextStyle(
                          fontSize: 20,
                          fontFamily: 'Pushster',
                          color: Colors.red))
                ],
              ),
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    width: 90,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blue,
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text('5.0',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Pushster',
                                color: Colors.white,
                              )),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text('6 Reviewer',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Pushster',
                        color: Colors.grey[400],
                      )),
                  Text('\$' + sale.toString(),
                      style: const TextStyle(
                          fontSize: 20,
                          fontFamily: 'Pushster',
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough)),
                ],
              ),
            ),
            Container(
              color: Colors.grey[300],
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                color: Colors.white,
                child: Align(
                  alignment: Alignment.center,
                  child: TabBar(
                    labelPadding: const EdgeInsets.only(left: 20, right: 20),
                    labelColor: Colors.blue,
                    controller: _tabController,
                    unselectedLabelColor: Colors.grey,
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: _tabs,
                    labelStyle: const TextStyle(
                      fontSize: 16,
                      fontFamily: 'Pushster',
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ),
            Container(
                color: Colors.grey[300],
                height: 400,
                width: double.maxFinite,
                child: TabBarView(
                    controller: _tabController,
                    children: const [DescriptionPage(), MoreInfo(), Review()])),
          ],
        ),
      ),
    );
  }
}
