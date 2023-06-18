import 'package:flutter/material.dart';

import '../../../../shared/constants/colors/my_colors.dart';
import '../../../../shared/routes/my_routes.dart';
import '../widgets/my_checkbox.dart';
import '../widgets/my_textfield.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 72, width: double.infinity),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 24),
                SizedBox(
                  width: 24,
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 18,
                      )),
                ),
                const Expanded(
                  child: Text(
                    "Sign Up",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                        color: MyColors.textColor),
                  ),
                ),
                const SizedBox(width: 48),
              ],
            ),
            const SizedBox(height: 24),
            const MyTextField(
              label: 'Full Name',
              hint: "Gaia Romano",
              icon: "assets/images/person.png",
              obscure: false,
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
            const SizedBox(height: 24),
            Row(
              children: [
                const MyCheckBox(),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 64,
                  child: const Text(
                    'By signing up, I agree that I have read and accepted the Terms of Use and Privacy Policy.',
                    style: TextStyle(fontSize: 16, color: MyColors.textColor),
                  ),
                ),
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
                  child: const Text('Sign up')),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account?',
                  style: TextStyle(fontSize: 16, color: Color(0xff0D222C)),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        MyRoutes.login, (route) => false);
                  },
                  child: const Text(
                    'Sign in',
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
    );
  }
}
