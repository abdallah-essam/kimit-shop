import 'package:ecommerce/shared/routes/my_routes.dart';
import 'package:flutter/material.dart';

import '../../../../shared/constants/colors/my_colors.dart';
import '../widgets/my_textfield.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

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
                    "Forget Password",
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
            const SizedBox(height: 16),
            const Text(
              'Please enter your email address to verify',
              style: TextStyle(
                  fontSize: 16, color: Color(0xff5B5B5B)),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            const MyTextField(
              label: 'Enter Email',
              hint: "Gaia Romano@gmail.com",
              icon: "assets/images/email vector.png",
              obscure: false,
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, MyRoutes.createNewPassword);

                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      minimumSize: const Size(double.infinity, 48),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Text('Continue')),
            ),

          ],
        ),
      ),
    );
  }
}
