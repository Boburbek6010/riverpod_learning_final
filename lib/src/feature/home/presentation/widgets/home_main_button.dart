import 'package:flutter/material.dart';

class HomeMainButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const HomeMainButton({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: const CircleBorder(),
      padding: const EdgeInsets.only(bottom: 15),
      minWidth: 80,
      height: 80,
      color: Colors.blueGrey,
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
