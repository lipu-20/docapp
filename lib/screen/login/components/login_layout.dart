import 'package:flutter/material.dart';
import 'package:mrdoc/components/continuebtn.dart';
import 'package:mrdoc/components/error_form.dart';
import 'package:mrdoc/screen/forgot_pass/forgot_pass.dart';
import 'package:mrdoc/screen/home/home_screen.dart';
import '../../../constants.dart';
import '../../../dimension_config.dart';

class Loginform extends StatefulWidget {
  @override
  _LoginformState createState() => _LoginformState();
}

class _LoginformState extends State<Loginform> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String mobile;
  String password;
  bool remember = false;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(40)),
            buildTextFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildPasswordFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            Row(
              children: [
                Checkbox(
                    value: remember,
                    activeColor: kPrimaryColor,
                    onChanged: (value) {
                      setState(() {
                        remember = value;
                      });
                    }),
                Text("Remember me"),
                Spacer(),
                GestureDetector(
                  onTap: () =>
                      Navigator.pushNamed(context, ForgotPassScrn.routeName),
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
            ErrorForm(errors: errors),
            SizedBox(height: getProportionateScreenHeight(30)),
            Continuebtn(
              text: "Login",
              press: () {
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                  Navigator.pushNamed(context, HomeScreen.routeName);
                }
              },
            ),
          ],
        ));
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassEmpty)) {
          setState(() {
            errors.remove(kPassEmpty);
          });
        } else if (value.length >= 8 && errors.contains(kPassShort)) {
          setState(() {
            errors.remove(kPassShort);
          });
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kPassEmpty)) {
          setState(() {
            errors.add(kPassEmpty);
          });
        } else if (value.length < 8 && !errors.contains(kPassShort)) {
          setState(() {
            errors.add(kPassShort);
          });
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter Your Password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(
          Icons.lock_open_rounded,
          color: kPrimaryColor,
        ),
      ),
    );
  }

  TextFormField buildTextFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => mobile = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailEmpty)) {
          setState(() {
            errors.remove(kEmailEmpty);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kEmailInvalid)) {
          setState(() {
            errors.remove(kEmailInvalid);
          });
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kEmailEmpty)) {
          setState(() {
            errors.add(kEmailEmpty);
          });
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kEmailInvalid)) {
          setState(() {
            errors.add(kEmailInvalid);
          });
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Mobile",
        hintText: "Enter Registered Mobile No.",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(
          Icons.phone_android_outlined,
          color: kPrimaryColor,
        ),
      ),
    );
  }
}
