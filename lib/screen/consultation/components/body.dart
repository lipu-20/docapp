import 'package:flutter/material.dart';
import 'package:mrdoc/screen/consultation/components/problemcard.dart';
import 'package:mrdoc/screen/consultation/components/title.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        Scroll(),
        TitleBtn(title: "Select Health Problem"),
        ProblemCard(),
        ProblemCard2(),
        ProblemCard3(),
        ProblemCard4(),
        ProblemCard5(),
      ],
    ));
  }
}
