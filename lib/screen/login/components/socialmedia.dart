import 'package:flutter/material.dart';
import '../../../dimension_config.dart';

class Socialmedi extends StatelessWidget {
  const Socialmedi({
    Key key,
    this.icons,
    this.press,
  }) : super(key: key);

  final String icons;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        padding: EdgeInsets.all(getProportionateScreenWidth(12)),
        height: getProportionateScreenHeight(50),
        width: getProportionateScreenWidth(50),
        decoration: BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: Image.asset(
          icons,
        ),
      ),
    );
  }
}
