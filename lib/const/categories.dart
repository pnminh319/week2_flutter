import 'package:flutter/material.dart';

@immutable
class CategoriesText extends StatelessWidget {
  final String text;
  final String image;
  final Color color;
  const CategoriesText({
    Key? key,
    required this.text,
    required this.color,
    required this.image,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.only(right: 40),
        child: Column(children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.transparent),
              shape: BoxShape.circle,
              color: color,
            ),
            child: Center(
              child: Image.asset(
                "assets/images/" + image,
                width: 20,
                height: 20,
                color: Colors.white,
              ),
            ),
          ),
          Center(
            child: Text(
              text,
              style: TextStyle(
                  fontFamily: 'Pushster',
                  color: color,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          )
        ]),
      ),
    );
  }
}
