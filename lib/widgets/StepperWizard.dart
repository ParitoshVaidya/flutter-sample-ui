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
          Expanded(
            child: Divider(
              thickness: 2,
              color: Colors.black,
            ),
          ),
          StepperStep(2, currentStep),
          Expanded(
            child: Divider(
              thickness: 2,
              color: Colors.black,
            ),
          ),
          StepperStep(3, currentStep),
          Expanded(
            child: Divider(
              thickness: 2,
              color: Colors.black,
            ),
          ),
          StepperStep(4, currentStep),
        ],
      ),
    );
  }
}
