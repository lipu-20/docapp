import 'package:flutter/material.dart';
import 'package:mrdoc/screen/signup/singupscrn.dart';
import '../../../constants.dart';
import '../../../dimension_config.dart';

class RedirectSignUp extends StatelessWidget {
  const RedirectSignUp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have account?",
          style: TextStyle(fontSize: getProportionateScreenWidth(15)),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, Signup.routeName);
          },
          child: Text(
            "Sign Up",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(15),
              color: kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
