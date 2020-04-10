import 'package:flutter/material.dart';

import 'StepperStep.dart';

class StepperWizard extends StatelessWidget {
  final int currentStep;

  StepperWizard(this.currentStep);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        children: <Widget>[
          StepperStep(1, currentStep),
          CustomPaint(painter: HorizontalLine()),
          StepperStep(2, currentStep),
          CustomPaint(painter: HorizontalLine()),
          StepperStep(3, currentStep),
          CustomPaint(painter: HorizontalLine()),
          StepperStep(4, currentStep),
        ],
      ),
    );
  }
}

class HorizontalLine extends CustomPainter {
  Paint _paint;

  HorizontalLine() {
    _paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(Offset(-15.0, 0.0), Offset(30.0, 0.0), _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
