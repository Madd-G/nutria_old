import 'package:flutter/material.dart';

import '../components.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Icon(
              Icons.arrow_back_ios,
              color: Color(0xff58D7B7),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text("Login",
                style: TextStyle(
                    color: Color(0xff58D7B7),
                    fontSize: 40,
                    fontWeight: FontWeight.w500)),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Enter your email address and\npassword to access your account",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 45,
            ),
            TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: textInputDecoration.copyWith(hintText: 'Email')),
            const SizedBox(height: 20),
            TextField(
                keyboardType: TextInputType.text,
                decoration: textInputDecoration.copyWith(hintText: 'Password')),
          ],
        ),
      ),
    ));
  }
}
