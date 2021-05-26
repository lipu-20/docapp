import 'package:flutter/widgets.dart';
import 'package:mrdoc/screen/consultation/consultScrn.dart';
import 'package:mrdoc/screen/doctor/doctorscrn.dart';
import 'package:mrdoc/screen/forgot_pass/forgot_pass.dart';
import 'package:mrdoc/screen/home/home_screen.dart';
import 'package:mrdoc/screen/login/login_screen.dart';
import 'package:mrdoc/screen/medicine/medicinescrn.dart';
import 'package:mrdoc/screen/paymentscrn/paymentscrn.dart';
import 'package:mrdoc/screen/remainder/remainder.dart';
import 'package:mrdoc/screen/signup/singupscrn.dart';
import 'package:mrdoc/screen/splash/splash_screen.dart';
import 'package:mrdoc/screen/test/testscrn.dart';

final Map<String, WidgetBuilder> routes = {
  Splash.routeName: (context) => Splash(),
  Login.routeName: (context) => Login(),
  ForgotPassScrn.routeName: (context) => ForgotPassScrn(),
  HomeScreen.routeName: (context) => HomeScreen(),
  Signup.routeName: (context) => Signup(),
  Consult.routeName: (context) => Consult(),
  Medicine.routeName: (context) => Medicine(),
  Remainder.routeName: (context) => Remainder(),
  Tests.routeName: (context) => Tests(),
  Payment.routeName: (context) => Payment(),
  Doctor.routeName: (context) => Doctor(),
};
