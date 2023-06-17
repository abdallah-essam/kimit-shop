import 'package:ecommerce/shared/constants/colors/my_colors.dart';
import 'package:ecommerce/shared/constants/images/my_images.dart';
import 'package:ecommerce/shared/routes/routes.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2)).then((value) {
      Navigator.pushReplacementNamed(context, Routes.onBoarding);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.splashBackground,
      body: Center(
        child: Image.asset(MyImages.splashLogo, height: 43, width: 170),
      ),
    );
  }
}
