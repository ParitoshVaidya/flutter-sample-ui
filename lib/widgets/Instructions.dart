import 'package:flutter/material.dart';

class Instructions extends StatelessWidget {
  final String title;
  final String details;

  Instructions(this.title, this.details);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 16.0),
          child: Text(
            details,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }
}
