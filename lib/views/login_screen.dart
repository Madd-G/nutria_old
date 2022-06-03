import 'package:flutter/material.dart';

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
          children: const [
            SizedBox(
              height: 30,
            ),
            Icon(
              Icons.arrow_back_ios,
              color: Color(0xff58D7B7),
            ),
            SizedBox(
              height: 15,
            ),
            Text("Login",
                style: TextStyle(
                    color: Color(0xff58D7B7),
                    fontSize: 40,
                    fontWeight: FontWeight.w500)),
            SizedBox(
              height: 25,
            ),
            Text(
              "Enter your email address and\npassword to access your account",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 45,
            ),
            TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: 'Email',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    fillColor: Color(0xffE3E3E3),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xff58D7B7), width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ))),
            SizedBox(height: 20),
            TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Password',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  fillColor: Color(0xffE3E3E3),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xff58D7B7), width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                )),
          ],
        ),
      ),
    ));
  }
}
