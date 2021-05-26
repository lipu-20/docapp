import 'package:flutter/material.dart';
//import '../../constants.dart';
import '../consultation/components/body.dart';

class Consult extends StatefulWidget {
  static String routeName = '/consult';
  @override
  _ConsultState createState() => _ConsultState();
}

class _ConsultState extends State<Consult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
  );
}
