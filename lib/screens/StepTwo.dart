import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutterapp/screens/StepThree.dart';
import 'package:flutterapp/widgets/Dropdown.dart';
import 'package:flutterapp/widgets/Instructions.dart';
import 'package:flutterapp/widgets/RoundedButton.dart';
import 'package:flutterapp/widgets/StepperWizard.dart';

class StepTwo extends StatefulWidget {
  static const routeName = "/StepTwo";

  @override
  State<StatefulWidget> createState() {
    return _StepTwoState();
  }
}

class _StepTwoState extends State<StepTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF427ef0),
      appBar: AppBar(
        title: Text("Create Account"),
        backgroundColor: Color(0xFF427ef0),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            StepperWizard(2),
            Expanded(
              flex: 2,
              child: Instructions(
                "Personal Information",
                "Please fill in the information below and your goal for digital saving.",
              ),
            ),
            Dropdown("Goal for activation"),
            Dropdown("Monthly income"),
            Dropdown("Monthly expense"),
            Spacer(),
            RoundedButton("Next", _onClickListener),
          ],
        ),
      ),
    );
  }

  void _onClickListener() {
    print("Button Clicked");
    Navigator.of(context).pushNamed(StepThree.routeName);
  }
}
