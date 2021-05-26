import 'package:flutter/material.dart';
import 'package:mrdoc/dimension_config.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(
        left: getProportionateScreenWidth(50),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: getProportionateScreenHeight(50),
          ),
          Image.asset(
            "assets/images/sorry.gif",
            height: 300,
          ),
          Text(
            "Payment Need To Be Added",
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: kPrimaryColor,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
