import 'package:flutter/material.dart';

final List icons = [
  "ic_men.png",
  "ic_woman.png",
  "ic_kids.png",
  "ic_bag.png",
  "ic_decor.png",
  "ic_sports.png"
];

final List texts = ["Men", "Women", "Baby & Kids", "Bags", "Decor", "Sport"];

class DrawerApp extends StatefulWidget {
  const DrawerApp({Key? key}) : super(key: key);

  @override
  _DrawerAppState createState() => _DrawerAppState();
}

class _DrawerAppState extends State<DrawerApp> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    child: Image.asset(
                      'assets/images/user.png',
                      width: 40,
                      height: 40,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    'Minh',
                    style: TextStyle(fontFamily: 'Pushster', fontSize: 18),
                  )
                ],
              )),
          Container(
            height: 80,
            color: Colors.grey[200],
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      '07',
                      style: TextStyle(color: Colors.orange, fontSize: 18),
                    ),
                    Text(
                      'My Order',
                      style: TextStyle(fontFamily: 'Pushster', fontSize: 18),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      '08',
                      style: TextStyle(color: Colors.orange, fontSize: 18),
                    ),
                    Text(
                      'My List',
                      style: TextStyle(fontFamily: 'Pushster', fontSize: 18),
                    )
                  ],
                )
              ],
            ),
          ),
          Column(
            children: [
              ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 6,
                  itemBuilder: (_, i) {
                    return ListTile(
                      leading: SizedBox(
                        width: 50,
                        height: 50,
                        child: Center(
                          child: Image.asset(
                            'assets/images/' + icons[i],
                            width: 20,
                            height: 20,
                          ),
                        ),
                      ),
                      title: Text(
                        texts[i],
                        style: const TextStyle(
                            fontFamily: 'Pushster', fontSize: 16),
                      ),
                      onTap: () {},
                    );
                  }),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(children: [
              const Divider(),
              Container(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(
                        Icons.person,
                        size: 20,
                      ),
                      title: const Text(
                        'Account',
                        style: TextStyle(
                          fontFamily: 'Pushster',
                        ),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.settings,
                        size: 20,
                      ),
                      title: const Text(
                        'Settings',
                        style: TextStyle(
                          fontFamily: 'Pushster',
                        ),
                      ),
                      onTap: () {},
                    )
                  ],
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
