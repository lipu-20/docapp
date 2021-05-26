import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  const ListCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 50,
      ),
      decoration: BoxDecoration(
          color: Colors.green.withOpacity(0.5),
          borderRadius: BorderRadius.circular(120),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 1,
                offset: Offset(4, 6))
          ]),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("assets/images/stress.jpg"),
          )
        ],
      ),
    );
  }
}
