import 'package:flutter/material.dart';
import 'package:mrdoc/components/continuebtn.dart';
import '../../../constants.dart';
import '../../../dimension_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String email;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
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
                  "Forgot Password",
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: getProportionateScreenWidth(26),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Enter a valid Mobile No.\n to get OTP",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  onSaved: (newValue) => email = newValue,
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
                      Icons.phone,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SizedBox(height: getProportionateScreenHeight(20)),
                Continuebtn(
                  text: "Continue",
                  press: () {
                    if (_formKey.currentState.validate()) {
                      _formKey.currentState.save();
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
