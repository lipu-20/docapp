import 'package:flutter/material.dart';
import '../../constants.dart';
import 'components/body.dart';
import 'components/navbar.dart';
import 'components/sidemenu.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/homescrn';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      drawer: SideMenu(),
      body: Body(),
      bottomNavigationBar: Navbar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: kPrimaryColor,
    );
  }
}
