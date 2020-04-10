import 'package:flutter/material.dart';

class PasswordPattern extends StatelessWidget {
  final String patternType;
  final String patternLabel;
  final bool isValid;

  PasswordPattern(this.patternType, this.patternLabel, this.isValid);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          children: [
            Text(
              patternType,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 32, color: Colors.white),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8),
            ),
            Text(
              patternLabel,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
