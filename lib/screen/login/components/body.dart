import 'package:flutter/material.dart';
import 'package:mrdoc/constants.dart';
import 'package:mrdoc/dimension_config.dart';
import 'RedirectSingup.dart';
import 'login_layout.dart';
import 'socialmedia.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(26)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  "Welcome",
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: getProportionateScreenWidth(26),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Login with your Email or any other\n social media platform",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Loginform(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Socialmedi(
                      icons: "assets/icons/gmal.png",
                      press: () {},
                    ),
                    Socialmedi(
                      icons: "assets/icons/fbok.png",
                      press: () {},
                    ),
                    Socialmedi(
                      icons: "assets/icons/twiit.png",
                      press: () {},
                    )
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                RedirectSignUp()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
