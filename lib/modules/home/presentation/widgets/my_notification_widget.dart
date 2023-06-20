import 'package:flutter/material.dart';

class MyNotificationWidget extends StatelessWidget {
  const MyNotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xffF6F4F0),
            borderRadius: BorderRadius.circular(4)),
        child: Row(
          children: [
            SizedBox(
                height: 40,
                child: Image.asset("assets/images/notification.png"))
          ],
        ),
      ),
    );
  }
}
