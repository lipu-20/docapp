import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../dimension_config.dart';

class SplashInfo extends StatelessWidget {
  const SplashInfo({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Column(
            children: <Widget>[
              Spacer(
                flex: 2,
              ),
              Text(
                "Mr. Doctor",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(36),
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                text,
                textAlign: TextAlign.center,
              ),
              Spacer(),
              Image.asset(
                image,
                height: getProportionateScreenHeight(286),
                width: getProportionateScreenWidth(400),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: SizedBox(),
        ),
      ],
    );
  }
}
