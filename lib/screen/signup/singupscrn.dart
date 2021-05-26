import 'package:flutter/material.dart';

import 'components/body.dart';

class Signup extends StatelessWidget {
  static String routeName = "/signup";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
      ),
      body: Body(),
    );
  }
}
