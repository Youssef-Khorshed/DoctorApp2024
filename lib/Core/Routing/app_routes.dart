import 'package:flutter/material.dart';
import 'package:flutter_complete_project/Core/Routing/routes.dart';
import 'package:flutter_complete_project/Features/Auth/Presentation/UI/Login/LoginScreen.dart';
import 'package:flutter_complete_project/Features/Auth/Onboadrding/onboarding.dart';
import 'package:flutter_complete_project/Features/Auth/Presentation/UI/SignUp/signupScreen.dart';

class AppRoutes {
  Route generateroute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (context) => const Onboarding());
      case Routes.login:
        return MaterialPageRoute(builder: (context) => const Loginscreen());
      case Routes.register:
        return MaterialPageRoute(builder: (context) => const Signupscrenn());
      default:
        return MaterialPageRoute(
            builder: (context) => const Text('data not found'));
    }
  }
}
