import 'package:flutter/material.dart';
import 'package:mrdoc/screen/paymentscrn/paymentscrn.dart';
import '../../remainder/remainder.dart';
import '../../../constants.dart';
import '../../../dimension_config.dart';
import '../../consultation/consultScrn.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({
    Key key,
  }) : super(key: key);

  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int selectedValue = 1;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Welcome Mr. Kaari"),
            accountEmail: Text("testemail@gm.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/images/docsplash1.png"),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(100)),
          Padding(
            padding: EdgeInsets.only(
              left: kDefaultPadding * 1.1,
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                  value: selectedValue,
                  items: [
                    DropdownMenuItem(
                      value: 1,
                      child: Text(
                        "About You",
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    DropdownMenuItem(
                        child: Text("Appointments"), onTap: () {}, value: 2),
                    DropdownMenuItem(
                        child: Text("Test Bookings"), onTap: () {}, value: 3),
                    DropdownMenuItem(
                        child: Text("Orders"), onTap: () {}, value: 4),
                    DropdownMenuItem(
                        child: Text("My Doctor"), onTap: () {}, value: 5),
                    DropdownMenuItem(
                        child: Text("Medical Records"), onTap: () {}, value: 6),
                  ],
                  onChanged: (value) {
                    setState(() {});
                  }),
            ),
          ),
          ListTile(
            title: Text(
              "Consultation",
              style: TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.popAndPushNamed(context, Consult.routeName);
            },
          ),
          ListTile(
            title: Text(
              "Remainder",
              style: TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.popAndPushNamed(context, Remainder.routeName);
            },
          ),
          ListTile(
            title: Text(
              "Payments",
              style: TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, Payment.routeName);
            },
          ),
          ListTile(
            title: Text(
              "Explore",
              style: TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
