import 'package:flutter/material.dart';
import '../../home/components/Commonissues.dart';
import '../../../constants.dart';

class TitleBtn extends StatelessWidget {
  const TitleBtn({
    Key key,
    this.title,
    this.press,
  }) : super(key: key);
  final String title;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      child: Row(
        children: [
          TitleWithCustomUnderline(text: title),
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: kDefaultPadding / 4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}

class Scroll extends StatelessWidget {
  const Scroll({
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
        ));
  }
}
