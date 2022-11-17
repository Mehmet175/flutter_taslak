import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoginButtonWidget extends StatelessWidget {
  String text;
  VoidCallback onTab;
  LoginButtonWidget({super.key, required this.text, required this.onTab});

  final ButtonStyle _style =
      ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: _style,
      onPressed: onTab,
      child: Text(text),
    );
  }
}
