import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
    hintText: 'hint text',
    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
    fillColor: Color(0xffE3E3E3),
    filled: true,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xff58D7B7), width: 2.0),
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ));

class SplashButton extends StatelessWidget {
  const SplashButton({required this.color, required this.title, required this.onPressed});

  final Color color;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      height: 50,
      minWidth: double.infinity,
      child: Text(
          title
      ), color: color,);
  }
}