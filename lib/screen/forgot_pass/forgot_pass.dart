import 'package:flutter/material.dart';

import 'components/body.dart';

class ForgotPassScrn extends StatelessWidget {
  static String routeName = "/forgot_pass";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
      ),
      body: Body(),
    );
  }
}
