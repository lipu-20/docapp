import 'package:flutter/material.dart';
import 'package:mrdoc/dimension_config.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: getProportionateScreenHeight(50),
          ),
          buildPositionSearch(),
          SizedBox(
            height: getProportionateScreenHeight(90),
          ),
          Image.asset(
            "assets/images/sorry.gif",
            height: 300,
          ),
          Text(
            "Sorry For The Inconvenience",
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: kPrimaryColor,
              fontSize: 20,
            ),
          ),
          Text(
            "We don't ship in your area currently",
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }

  Positioned buildPositionSearch() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        height: 54,
        decoration: BoxDecoration(
          gradient: kGradientColor2,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 50,
              color: kPrimaryColor.withOpacity(0.23),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                onChanged: (value) {},
                decoration: InputDecoration(
                  hintText: "Enter Your Pincode",
                  hintStyle: TextStyle(
                    color: kSecondryColor,
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
