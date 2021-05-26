import 'package:flutter/material.dart';
import 'package:mrdoc/screen/consultation/consultScrn.dart';
import 'package:mrdoc/screen/medicine/medicinescrn.dart';
import 'package:mrdoc/screen/test/testscrn.dart';

import '../../../constants.dart';

class Recommendcontainer extends StatelessWidget {
  const Recommendcontainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Doctorcard(
            image: "assets/images/neardoc.jpg",
            title: "Doctors Near You",
            extra: "Get instant in-clinic\n appointment near you",
            press: () {
              Navigator.pushNamed(context, Consult.routeName);
            },
          ),
          Doctorcard(
            image: "assets/images/online.jpg",
            title: "Instant Video Consult ",
            extra: "Video Consultancy at \n your fingertips",
            press: () {
              Navigator.pushNamed(context, Consult.routeName);
            },
          ),
          Doctorcard(
            image: "assets/images/tests.jpg",
            title: "Checkup and Tests",
            extra: "Book and get checked\n on the go",
            press: () {
              Navigator.pushNamed(context, Tests.routeName);
            },
          ),
          Doctorcard(
            image: "assets/images/meds.jpg",
            title: "Medicines",
            extra: "Get medicines at your \n doorstep",
            press: () {
              Navigator.pushNamed(context, Medicine.routeName);
            },
          ),
        ],
      ),
    );
  }
}

class Doctorcard extends StatelessWidget {
  const Doctorcard({
    Key key,
    this.image,
    this.title,
    this.extra,
    this.press,
  }) : super(key: key);
  final String image, title, extra;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        right: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: press,
            child: (Image.asset(image)),
          ),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  )
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n",
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: "$extra",
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
