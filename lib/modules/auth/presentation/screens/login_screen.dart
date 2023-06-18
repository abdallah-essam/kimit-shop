import 'package:ecommerce/modules/auth/presentation/widgets/my_checkbox.dart';
import 'package:ecommerce/modules/auth/presentation/widgets/my_textfield.dart';
import 'package:ecommerce/shared/routes/my_routes.dart';
import 'package:flutter/material.dart';

import '../../../../shared/constants/colors/my_colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backgroundColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .3 + 64),
              height: MediaQuery.of(context).size.height * .7 - 64,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    const SizedBox(height: 40, width: double.infinity),
                    const Text(
                      "Welcome Back",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                          color: MyColors.textColor),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "please Fill your data below to login",
                      style: TextStyle(fontSize: 16, color: MyColors.textColor),
                    ),
                    const SizedBox(height: 24),
                    const MyTextField(
                      label: 'Email',
                      hint: "Gaia Romano@gmail.com",
                      icon: "assets/images/email vector.png",
                      obscure: false,
                    ),
                    const SizedBox(height: 24),
                    const MyTextField(
                      label: 'Password',
                      hint: "● ● ● ● ● ● ● ● ● ● ●",
                      icon: "assets/images/password vector.png",
                      obscure: true,
                    ),
                    Row(
                      children: [
                        const MyCheckBox(),
                        const Text(
                          'Remember me',
                          style: TextStyle(
                              fontSize: 16, color: MyColors.textColor),
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, MyRoutes.forgetPassword);
                          },
                          child: const Text(
                            'Forget password?',
                            style: TextStyle(
                                fontSize: 16,
                                color: MyColors.textColor,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        const SizedBox(width: 16),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              minimumSize: const Size(double.infinity, 48),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: const Text('Login')),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Don\'t have an account?',
                          style:
                              TextStyle(fontSize: 16, color: Color(0xff0D222C)),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, MyRoutes.signup);
                          },
                          child: const Text(
                            'Sign up',
                            style: TextStyle(
                                fontSize: 16,
                                color: MyColors.primaryColor,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 64),
              child: Image.asset("assets/images/vector login.png"),
            )
          ],
        ),
      ),
    );
  }
}
