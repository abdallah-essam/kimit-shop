import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F4F0),
      body: Stack(
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
            child: const Column(
              children: [
                SizedBox(height: 40,width: double.infinity),
                Text("Welcome Back",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 24,color: Color(0xff023047)),),
                SizedBox(height: 8,),
                Text("please Fill your data below to login",style: TextStyle(fontSize: 16,color: Color(0xff023047)),),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 64),
            child: Image.asset("assets/images/vector login.png"),
          )
        ],
      ),
    );
  }
}
