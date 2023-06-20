import 'package:flutter/material.dart';

class MyChooseLocationWidget extends StatelessWidget {
  const MyChooseLocationWidget({super.key, required this.location});


  final String location;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(children: [
        SizedBox(
            height: 16,
            child: Image.asset("assets/images/location.png")),
        const Text(" Deliver to "),
         Text(
          location,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        SizedBox(
            height: 8, child: Image.asset("assets/images/drop.png")),
      ]),
    );
  }
}
