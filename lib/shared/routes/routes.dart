import 'package:ecommerce/modules/on_boarding/presentation/screens/on_boarding_screen.dart';
import 'package:ecommerce/modules/splash/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class MyRoutes {
  static const String splash = '/';
  static const String onBoarding = 'onBoarding';
  static const String login = 'onBoarding';

  static Route<dynamic>? onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case onBoarding:
        return MaterialPageRoute(
            builder: (context) => const OnBoardingScreen());
      default:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
    }
  }
}
