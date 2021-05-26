import 'package:flutter/material.dart';
import 'components/body.dart';

class Tests extends StatelessWidget {
  static String routeName = "/tests";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test| Book Your CheckUp Appointment Now"),
      ),
      body: Body(),
    );
  }
}
