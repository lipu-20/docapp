import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../dimension_config.dart';

class Doctor extends StatelessWidget {
  static String routeName = '/doctor';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(kDefaultPadding / 2),
                width: getProportionateScreenWidth(110),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: kGradientColor2,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(4, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
