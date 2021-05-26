import 'package:flutter/material.dart';
import '../constants.dart';
import '../dimension_config.dart';

class Continuebtn extends StatelessWidget {
  const Continuebtn({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: kDefaultPadding * 1.5,
        left: kDefaultPadding * 1.5,
        bottom: kDefaultPadding,
      ),
      child: SizedBox(
        width: double.infinity,
        height: getProportionateScreenHeight(50),
        child: TextButton(
          onPressed: press,
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(kPrimaryColor)),
          child: Text(
            text,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(17),
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
