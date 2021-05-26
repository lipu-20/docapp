import 'package:flutter/material.dart';
import 'package:mrdoc/dimension_config.dart';

import 'components/body.dart';

class Splash extends StatelessWidget {
  static String routeName = '/splscrn';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
