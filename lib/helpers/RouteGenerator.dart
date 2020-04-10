import 'package:flutter/material.dart';
import 'package:flutterapp/screens/StepThree.dart';
import 'package:flutterapp/screens/StepTwo.dart';

import '../screens/StepOne.dart';
import '../screens/WelcomeScreen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => WelcomeScreen());
      case StepOne.routeName:
        return MaterialPageRoute(builder: (_) => StepOne());
      case StepTwo.routeName:
        return MaterialPageRoute(builder: (_) => StepTwo());
      case StepThree.routeName:
        return MaterialPageRoute(builder: (_) => StepThree());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
