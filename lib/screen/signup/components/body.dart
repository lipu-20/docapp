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
  String mobile;
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
                  "Mobile Verification",
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
                  keyboardType: TextInputType.number,
                  onSaved: (newValue) => mobile = newValue,
                  decoration: InputDecoration(
                    labelText: "Mobile",
                    hintText: "Enter Your Mobile No.",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    suffixIcon: Icon(
                      Icons.phone,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                TextButton(
                  onPressed: () {},
                  child: Text("Get OTP"),
                ),
                SizedBox(height: getProportionateScreenHeight(40)),
                TextFormField(
                  keyboardType: TextInputType.number,
                  onSaved: (newValue) => mobile = newValue,
                  decoration: InputDecoration(
                    labelText: "Enter OTP",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(100)),
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
