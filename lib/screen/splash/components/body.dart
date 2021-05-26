import 'package:flutter/material.dart';
import 'package:mrdoc/screen/login/login_screen.dart';
import '../../../components/continuebtn.dart';
import '../components/Splashinfo.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map<String, String>> splashD = [
    {
      "text": "Get an instant checkup by experts!",
      "image": "assets/images/docsplash1.png",
    },
    {
      "text": "Get an instant checkup by experts!",
      "image": "assets/images/docsplash2.png",
    },
    {
      "text": "Get an instant checkup by experts!",
      "image": "assets/images/docsplash3.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              child: PageView.builder(
                itemCount: splashD.length,
                itemBuilder: (context, index) => SplashInfo(
                  text: splashD[index]["text"],
                  image: splashD[index]["image"],
                ),
              ),
            ),
            Continuebtn(
              text: "Continue",
              press: () {
                Navigator.pushNamed(context, Login.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
