import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../dimension_config.dart';

class Categorycard extends StatelessWidget {
  const Categorycard({Key key, this.text, this.text2, this.icon, this.press})
      : super(key: key);
  final String text, text2;
  final ImageIcon icon;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.only(
            left: getProportionateScreenHeight(20),
            right: getProportionateScreenHeight(20)),
        margin: EdgeInsets.only(top: getProportionateScreenHeight(20)),
        width: getProportionateScreenWidth(300),
        height: getProportionateScreenHeight(50),
        decoration: BoxDecoration(
            gradient: kGradientColor, borderRadius: BorderRadius.circular(50)),
        child: Row(
          children: <Widget>[
            icon,
            Title(
                color: kSecondryColor,
                child: Text(
                  text,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
            Spacer(),
            Title(
                color: kSecondryColor,
                child: Text(
                  text2,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
    );
  }
}
