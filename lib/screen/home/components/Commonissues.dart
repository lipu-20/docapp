import 'package:flutter/material.dart';

import '../../../constants.dart';

class Commonissues extends StatelessWidget {
  const Commonissues({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Issues(
            image: "assets/images/preg.png",
            press: () {},
          ),
          Issues(
            image: "assets/images/bone.jpg",
            press: () {},
          ),
          Issues(
            image: "assets/images/diabetes.jpg",
            press: () {},
          ),
          Issues(
            image: "assets/images/stress.jpg",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class Issues extends StatelessWidget {
  const Issues({
    Key key,
    this.image,
    this.press,
  }) : super(key: key);
  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          top: kDefaultPadding / 2,
          left: kDefaultPadding,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
