import 'package:flutter/material.dart';

const kAnimationTime = Duration(milliseconds: 200);
const kPrimaryColor = Color(0xFF0C9869);
const kSecondryColor = Color(0xFF979797);
const kTextColor = Color(0xFF3C4046);
const kBackgroundColor = Color(0xFFF9F8FD);
const kGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kGradientColor2 = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFF57C84D), Color(0xFFABE098)],
);
const double kDefaultPadding = 20.0;

//Errors_formats
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]");
const String kEmailEmpty = "Please Enter Your Mobile No.";
const String kEmailInvalid = "Please Enter Correct Mobile No.";
const String kPassEmpty = "Please Enter Your Password";
const String kPassInvalid = "Please Enter Correct Password";
const String kPassShort = "Password Too Short";
