import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    required this.label,
    required this.hint,
    required this.icon, required this.obscure,
  });

  final String label;
  final String hint;
  final String icon;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 16, color: Color(0xff023047)),
          ),
          const SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Image.asset(icon)),
              prefixIconConstraints:
                  const BoxConstraints(maxHeight: 16, maxWidth: 40),
              suffixIcon: obscure ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Image.asset("assets/images/eye vector.png")):null,
              suffixIconConstraints:  const BoxConstraints(maxHeight: 16, maxWidth: 40),
              hintText: hint,
              hintStyle:
                  const TextStyle(fontSize: 16, color: Color(0xff023047)),
              filled: true,
              fillColor: const Color(0xffF6F6F6),
              enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide(color: Colors.transparent)),
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide(color: Colors.transparent)),
            ),
          ),
        ],
      ),
    );
  }
}
