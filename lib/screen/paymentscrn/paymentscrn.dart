import 'package:flutter/material.dart';
//import '../../constants.dart';
import 'components/body.dart';

class Payment extends StatelessWidget {
  static String routeName = '/payment';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Choose From Different Payment Options",
          textAlign: TextAlign.center,
        ),
      ),
      body: Body(),
    );
  }
}
