import 'dart:ui';
import 'package:flutter/material.dart';
import 'Commonissues.dart';
import 'Recommend_container.dart';
import 'header_with_seachbox.dart';
import 'more_btn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recommended", press: () {}),
          Recommendcontainer(),
          TitleWithMoreBtn(title: "Common Issues", press: () {}),
          Commonissues()
        ],
      ),
    );
  }
}
