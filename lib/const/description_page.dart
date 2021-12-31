import 'package:flutter/material.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({Key? key}) : super(key: key);

  @override
  _DescriptionPageState createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[300],
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(children: [
          const Center(
            child: Text(
                'New T-shirt from SSSENTIALS in 5 colors on sale on Black Friday INFO T-SHIRT V2 Size: M/L/XL. 100% cotton. Color: White Black Pink Olive Gray Designed by SSSENTIALS',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Pushster',
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('PinCode',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Pushster',
                    color: Colors.green,
                  )),
              const Text('Check Avaliability',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Pushster',
                    color: Colors.green,
                  )),
              Column(
                children: const [
                  Text('Delivery By.',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Pushster',
                          color: Colors.green)),
                  Text('25 June, Monday',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Pushster',
                        fontWeight: FontWeight.bold,
                      ))
                ],
              ),
            ],
          ),
          const Align(
              alignment: Alignment.centerLeft,
              child: Text('Colors',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Pushster',
                  ))),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Align(
              alignment: Alignment.centerLeft,
              child: Text('Size',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Pushster',
                  ))),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: const [
              Text('L',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Pushster',
                  )),
              SizedBox(
                width: 20,
              ),
              Text('M',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Pushster',
                  )),
              SizedBox(
                width: 20,
              ),
              Text('S',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Pushster',
                  )),
              SizedBox(
                width: 20,
              ),
              Text('SL',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Pushster',
                  ))
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 50,
            child: Align(
              alignment: Alignment.center,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: 180,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                      ),
                      child: const Center(
                          child: Text(
                        'Add to Card',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Pushster',
                          color: Colors.black,
                        ),
                      ))),
                  Container(
                      width: 180,
                      height: 100,
                      color: Colors.blue,
                      child: const Center(
                        child: Text('Buy Now',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Pushster',
                              color: Colors.white,
                            )),
                      ))
                ],
              ),
            ),
          )
        ]));
  }
}
