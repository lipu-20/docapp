import 'package:flutter/material.dart';
import 'package:mrdoc/dimension_config.dart';
import '../../../constants.dart';

class ProblemCard extends StatefulWidget {
  const ProblemCard({
    Key key,
  }) : super(key: key);

  @override
  _ProblemCardState createState() => _ProblemCardState();
}

class _ProblemCardState extends State<ProblemCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: kDefaultPadding * 2,
        top: kDefaultPadding * 1.2,
      ),
      child: Row(children: <Widget>[
        Card(
          icon: ImageIcon(AssetImage("assets/icons/skin.png")),
          text: "Skin",
        ),
        Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(45))),
        Card(
          icon: ImageIcon(AssetImage("assets/icons/teeth.png")),
          text: "Teeth",
        ),
      ]),
    );
  }
}

class ProblemCard2 extends StatefulWidget {
  const ProblemCard2({
    Key key,
  }) : super(key: key);

  @override
  _ProblemCard2State createState() => _ProblemCard2State();
}

class _ProblemCard2State extends State<ProblemCard2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: kDefaultPadding * 2,
        top: kDefaultPadding * 1.2,
      ),
      child: Row(children: <Widget>[
        Card(
          icon: ImageIcon(AssetImage("assets/icons/lungs.png")),
          text: "Lungs",
        ),
        Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(45))),
        Card(
          icon: ImageIcon(AssetImage("assets/icons/stomach.png")),
          text: "Stomach",
        ),
      ]),
    );
  }
}

class ProblemCard3 extends StatefulWidget {
  const ProblemCard3({
    Key key,
  }) : super(key: key);

  @override
  _ProblemCard3State createState() => _ProblemCard3State();
}

class _ProblemCard3State extends State<ProblemCard3> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: kDefaultPadding * 2,
        top: kDefaultPadding * 1.2,
      ),
      child: Row(children: <Widget>[
        Card(
          icon: ImageIcon(AssetImage("assets/icons/hair.png")),
          text: "Hair",
        ),
        Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(45))),
        Card(
          icon: ImageIcon(AssetImage("assets/icons/bone.png")),
          text: "Bone",
        ),
      ]),
    );
  }
}

class ProblemCard4 extends StatefulWidget {
  const ProblemCard4({
    Key key,
  }) : super(key: key);

  @override
  _ProblemCard4State createState() => _ProblemCard4State();
}

class _ProblemCard4State extends State<ProblemCard4> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: kDefaultPadding * 2,
        top: kDefaultPadding * 1.2,
      ),
      child: Row(children: <Widget>[
        Card(
          icon: ImageIcon(AssetImage("assets/icons/diabetes2.png")),
          text: "Diabetes",
        ),
        Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(45))),
        Card(
          icon: ImageIcon(AssetImage("assets/icons/headache.png")),
          text: "Headache",
        ),
      ]),
    );
  }
}

class ProblemCard5 extends StatefulWidget {
  const ProblemCard5({
    Key key,
  }) : super(key: key);

  @override
  _ProblemCard5State createState() => _ProblemCard5State();
}

class _ProblemCard5State extends State<ProblemCard5> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: kDefaultPadding * 2,
        top: kDefaultPadding * 1.2,
      ),
      child: Row(children: <Widget>[
        Card(
          icon: ImageIcon(AssetImage("assets/icons/pregnancy.png")),
          text: "Pregnancy",
        ),
        Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(45))),
        Card(
          icon: ImageIcon(AssetImage("assets/icons/child.png")),
          text: "Children",
        ),
      ]),
    );
  }
}

class Card extends StatelessWidget {
  const Card({Key key, this.text, this.icon, this.press}) : super(key: key);
  final String text;
  final ImageIcon icon;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
          padding: EdgeInsets.all(kDefaultPadding / 2),
          width: getProportionateScreenWidth(110),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: kGradientColor2,
            boxShadow: [
              BoxShadow(
                offset: Offset(4, 10),
                blurRadius: 50,
                color: kPrimaryColor.withOpacity(0.23),
              )
            ],
          ),
          child: Row(
            children: <Widget>[
              icon,
              Spacer(),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: text,
                      style: Theme.of(context).textTheme.button,
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
