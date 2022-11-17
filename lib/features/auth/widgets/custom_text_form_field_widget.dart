import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  String hintText;
  TextEditingController tec;
  CustomTextFormField({super.key, required this.hintText, required this.tec});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: tec,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: hintText,
      ),
    );
  }
}
