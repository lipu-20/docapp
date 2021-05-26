import 'package:flutter/material.dart';
import '../components/screeningtest.dart';
import 'package:mrdoc/screen/consultation/components/title.dart';
import '../../../dimension_config.dart';
import 'categorycard.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          TitleBtn(title: "Book From Top Categories", press: () {}),
          Categorycard(
              text: "CBC Test",
              text2: "400",
              icon: ImageIcon(AssetImage("assets/icons/diabetes2.png"))),
          Categorycard(
              text: "Liver Function Test",
              text2: "235",
              icon: ImageIcon(AssetImage("assets/icons/twiit.png"))),
          Categorycard(
              text: "Thyroid",
              text2: "220",
              icon: ImageIcon(AssetImage("assets/icons/twiit.png"))),
          Categorycard(
              text: "Hba1c",
              text2: "320",
              icon: ImageIcon(AssetImage("assets/icons/twiit.png"))),
          Categorycard(
              text: "Vitamin B12",
              text2: "480",
              icon: ImageIcon(AssetImage("assets/icons/twiit.png"))),
          SizedBox(height: getProportionateScreenHeight(30)),
          TitleBtn(title: "Screening tests"),
          buildScreening()
        ],
      ),
    );
  }
}
