import 'package:flutter/material.dart';
import 'package:flutterapp/widgets/PasswordValidator.dart';
import 'package:flutterapp/widgets/StepperWizard.dart';
import 'package:flutterapp/widgets/PasswordField.dart';

import '../widgets/RoundedButton.dart';
import 'StepTwo.dart';

class StepOne extends StatefulWidget {
  static const routeName = "/StepOne";

  @override
  State<StatefulWidget> createState() {
    return _StepOneState();
  }
}

class _StepOneState extends State<StepOne> {
  String _password;
  final _passwordFieldKey = GlobalKey<FormFieldState<String>>();

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
            StepperWizard(1),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Create Password",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text(
                      "Password will be used to login to account",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            PasswordField(
              fieldKey: _passwordFieldKey,
              hintText: "Create Password",
              onFieldSubmitted: (String value) {
                setState(() {
                  this._password = value;
                });
              },
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Complexity:",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(
              child: PasswordChecker(1),
            ),
            Spacer(),
            RoundedButton("Next", _onClickListener),
          ],
        ),
      ),
    );
  }

  void _onClickListener() {
    print("Button Clicked");
    Navigator.of(context).pushNamed(StepTwo.routeName);
  }
}
