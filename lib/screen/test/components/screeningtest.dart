import 'package:flutter/material.dart';

import '../../../dimension_config.dart';

SingleChildScrollView buildScreening() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    padding: EdgeInsets.only(top: getProportionateScreenHeight(20)),
    child: GestureDetector(
      onTap: () {},
      child: Row(
        children: <Widget>[
          Column(
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("assets/images/docsplash1.png"),
                backgroundColor: Colors.red,
              ),
              Text(
                "Diabetes",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(width: getProportionateScreenWidth(40)),
          Column(
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("assets/images/docsplash2.png"),
                backgroundColor: Colors.red,
              ),
              Text(
                "Skin",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(width: getProportionateScreenWidth(40)),
          Column(
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("assets/images/docsplash3.png"),
                backgroundColor: Colors.red,
              ),
              Text(
                "Bone",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(width: getProportionateScreenWidth(40)),
          Column(
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("assets/images/docsplash1.png"),
                backgroundColor: Colors.red,
              ),
              Text(
                "Teeth",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(width: getProportionateScreenWidth(40)),
          Column(
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("assets/images/docsplash2.png"),
                backgroundColor: Colors.red,
              ),
              Text(
                "Cough or \n   illness",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
      ),
    ),
  );
}
