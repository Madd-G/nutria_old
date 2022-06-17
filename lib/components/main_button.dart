import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const MainButton(
      {required this.color, required this.title, required this.onPressed});

  final Color color;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: onPressed,
        height: 50,
        minWidth: double.infinity,
        color: color,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Text(title,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w700)));
  }
}
