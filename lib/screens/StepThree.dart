import 'package:flutter/material.dart';
import 'package:flutterapp/widgets/Dropdown.dart';
import 'package:flutterapp/widgets/Instructions.dart';
import 'package:flutterapp/widgets/RoundedButton.dart';
import 'package:flutterapp/widgets/StepperWizard.dart';

class StepThree extends StatefulWidget {
  static const routeName = "/StepThree";

  @override
  State<StatefulWidget> createState() {
    return _StepThreeState();
  }
}

class _StepThreeState extends State<StepThree> {
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
            StepperWizard(3),
            Expanded(
              flex: 2,
              child: Instructions("Schedule Video Call",
                  "Choose the date and time that you preferred, we will send a link via email to make a video call on the scheduled date and time."),
            ),
            Dropdown("Date"),
            Dropdown("Time"),
            Spacer(),
            RoundedButton("Next", _onClickListener),
          ],
        ),
      ),
    );
  }

  void _onClickListener() {
    print("Button Clicked");
  }
}
