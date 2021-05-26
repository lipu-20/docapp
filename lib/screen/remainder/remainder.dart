import 'package:flutter/material.dart';

import '../../constants.dart';

class Remainder extends StatelessWidget {
  static String routeName = "/remainder";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Remainder"),
        actions: <Widget>[
          IconButton(
              icon: Image.asset("assets/icons/add.png"), onPressed: () {}),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Image.asset(
              "assets/images/sorry.gif",
              height: 400,
            ),
            Text(
              "No Remainder Added Yet",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: kSecondryColor,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
