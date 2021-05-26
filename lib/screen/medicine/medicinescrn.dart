import 'package:flutter/material.dart';
//import '../../constants.dart';
import 'components/body.dart';

class Medicine extends StatelessWidget {
  static String routeName = '/medicine';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Get Medicines At Your Doorstep",
          textAlign: TextAlign.center,
        ),
      ),
      body: Body(),
    );
  }
}
