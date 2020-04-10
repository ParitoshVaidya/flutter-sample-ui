import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String label;
  final Function onClickListener;

  RoundedButton(this.label, this.onClickListener);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 48,
      child: RaisedButton(
        color: new Color(0xFF699eee),
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(8.0),
        ),
        child: Text(
          label,
          style: TextStyle(fontSize: 16),
        ),
        onPressed: onClickListener,
      ),
    );
  }
}
