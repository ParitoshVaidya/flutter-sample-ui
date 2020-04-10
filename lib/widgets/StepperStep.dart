import 'package:flutter/material.dart';

class StepperStep extends StatelessWidget {
  final int stepNumber;
  final int currentStep;

  StepperStep(this.stepNumber, this.currentStep);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 60.0,
        height: 60.0,
        decoration: new BoxDecoration(
          color: stepNumber <= currentStep ? Colors.green : Colors.white,
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.black,
            width: 2,
          ),
        ),
        child: Center(
          child: Text(
            stepNumber.toString(),
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
