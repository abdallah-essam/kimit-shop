import 'package:flutter/material.dart';


class MySearchWidget extends StatelessWidget {
  const MySearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: const Color(0xffF6F4F0),
            borderRadius: BorderRadius.circular(4)),
        child: Row(
          children: [
            SizedBox(
                height: 16,
                child: Image.asset("assets/images/search.png")),
            const SizedBox(width: 8),
            const Text("Search")
          ],
        ),
      ),
    );
  }
}
