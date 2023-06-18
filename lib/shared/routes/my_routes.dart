import 'package:ecommerce/modules/auth/presentation/screens/create_new_password_screen.dart';
import 'package:ecommerce/modules/auth/presentation/screens/forget_password_screen.dart';
import 'package:ecommerce/modules/auth/presentation/screens/login_screen.dart';
import 'package:ecommerce/modules/auth/presentation/screens/signup_screen.dart';
import 'package:ecommerce/modules/on_boarding/presentation/screens/on_boarding_screen.dart';
import 'package:ecommerce/modules/splash/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class MyRoutes {
  static const String splash = '/';
  static const String onBoarding = 'onBoarding';
  static const String login = 'login';
  static const String signup = 'sign up';
  static const String forgetPassword = 'forget password';
  static const String createNewPassword = 'create new password';

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
        case signup:
        return MaterialPageRoute(
            builder: (context) => const SignupScreen());
        case forgetPassword:
        return MaterialPageRoute(
            builder: (context) => const ForgetPasswordScreen());
        case createNewPassword:
        return MaterialPageRoute(
            builder: (context) => const CreateNewPasswordScreen());
      default:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
    }
  }
}
