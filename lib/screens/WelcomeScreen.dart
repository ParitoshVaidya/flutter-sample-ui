import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutterapp/screens/StepOne.dart';
import 'package:flutterapp/widgets/RoundedButton.dart';
import 'package:flutterapp/widgets/StepperWizard.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WelcomeScreenState();
  }
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Color(0xFF407cec),
            ),
            height: 200,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: StepperWizard(0),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Color(0xFFf5f5f5),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Welcome to",
                  style: Theme.of(context).textTheme.headline,
                ),
                Row(
                  children: [
                    Text(
                      "GIN ",
                      style: Theme.of(context).textTheme.headline,
                    ),
                    Text(
                      "Finans",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF417eeb)),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child: Text(
                    "Welcome to The Bank of The Future. Manage and track your accounts on the go.",
                    style: Theme.of(context).textTheme.title,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(16.0),
            padding: EdgeInsets.all(12),
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.white,
            ),
            child: TextField(
              style: TextStyle(
                fontSize: 14,
              ),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: new OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                fillColor: Color(0xFFF5F5F5),
                prefixIcon: Icon(Icons.email),
                hintText: "Email",
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: RoundedButton("Next", _onClickListener),
          )
        ],
      ),
    );
  }

  void _onClickListener() {
    print("Button Clicked");
    Navigator.of(context).pushNamed(StepOne.routeName);
  }
}
