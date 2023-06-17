import 'package:ecommerce/modules/auth/presentation/screens/login.dart';
import 'package:ecommerce/modules/on_boarding/presentation/screens/on_boarding_screen.dart';
import 'package:ecommerce/modules/splash/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class MyRoutes {
  static const String splash = '/';
  static const String onBoarding = 'onBoarding';
  static const String login = 'login';

  static Route<dynamic>? onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case onBoarding:
        return MaterialPageRoute(
            builder: (context) => const OnBoardingScreen());
        case login:
        return MaterialPageRoute(
            builder: (context) => const LoginScreen());
      default:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
    }
  }
}
