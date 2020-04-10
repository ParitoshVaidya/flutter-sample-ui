import 'package:flutter/material.dart';

import 'PasswordPattern.dart';

class PasswordChecker extends StatelessWidget {
  final int step;

  PasswordChecker(this.step);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        children: <Widget>[
          PasswordPattern("a", "Lowercase", false),
          PasswordPattern("A", "Uppercase", false),
          PasswordPattern("123", "Number", false),
          PasswordPattern("9+", "Characters", false),
        ],
      ),
    );
  }
}
