import 'package:flutter/material.dart';

import '../constants.dart';

// this file have an customised icon ( circle avatar) for numbers.
// with modified listTile ( as is has modified padding of leading in source).

class IconContent_2 extends StatelessWidget {
  final int number;
  final String label3;
  IconContent_2({
    @required this.number,
    @required this.label3,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 20.0,
        child: Text(
          number.toString(),
          style: TextStyle(
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      title: Text(
        label3,
        style: kLabelTextStyle,
      ),
    );
  }
}
