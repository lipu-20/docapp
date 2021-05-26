import 'package:flutter/material.dart';
import '../dimension_config.dart';

class ErrorForm extends StatelessWidget {
  const ErrorForm({
    Key key,
    @required this.errors,
  }) : super(key: key);
  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(
            errors.length, (index) => formError(error: errors[index])));
  }

  Row formError({String error}) {
    return Row(
      children: [
        Icon(
          Icons.error_outline_outlined,
          color: Colors.red,
        ),
        SizedBox(
          width: getProportionateScreenWidth(20),
        ),
        Text(error),
      ],
    );
  }
}
