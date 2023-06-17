import 'package:ecommerce/shared/constants/colors/my_colors.dart';
import 'package:flutter/material.dart';


class MyCheckBox extends StatefulWidget {
  const MyCheckBox({super.key});

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool _checkBoxVal = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: MyColors.primaryColor,
      onChanged: (bool? value) {
        if (value != null) {
          setState(() => _checkBoxVal = value);
        }
      },
      value: _checkBoxVal,
    );
  }
}
