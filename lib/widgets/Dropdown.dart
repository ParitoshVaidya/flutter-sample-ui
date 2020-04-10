import 'package:flutter/material.dart';

class Dropdown extends StatelessWidget {
  final String title;
  String selectedOption = "- Choose Option -";

  Dropdown(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24.0),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8),
              ),
              Text(
                selectedOption,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          Icon(Icons.keyboard_arrow_down)
        ],
      ),
    );
  }
}
