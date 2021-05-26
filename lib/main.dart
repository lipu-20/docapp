import 'package:flutter/material.dart';
import 'themes.dart';
import 'package:mrdoc/route.dart';
import 'package:mrdoc/screen/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mr. Doctor',
      theme: theme1(),
      initialRoute: Splash.routeName,
      routes: routes,
    );
  }
}
