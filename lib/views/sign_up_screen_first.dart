import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutria/controllers/translations_controller.dart';
import '../components.dart';

class SignUpScreenFirst extends StatelessWidget {
  SignUpScreenFirst({Key? key}) : super(key: key);

  final messageController = Get.put(MessagesController());

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
            IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
              ),
              color: Theme.of(context).colorScheme.primary,
              onPressed: () {
                Get.offNamed('/login_screen');
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Text("Sign Up",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 40,
                    fontWeight: FontWeight.w500)),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Please fill information to create an\naccount and sign up to continue"
                  .tr,
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 45,
            ),
            TextField(
                keyboardType: TextInputType.name,
                decoration: textInputDecoration.copyWith(
                    hintText: 'Username',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.primary)))),
            const SizedBox(height: 20),
            TextField(
                keyboardType: TextInputType.streetAddress,
                decoration: textInputDecoration.copyWith(
                    hintText: 'Address',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.primary)))),
            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () =>
                      messageController.changeLanguage('en_US', 'id'),
                  child: const Text('English'),
                ), ElevatedButton(
                  onPressed: () =>
                      messageController.changeLanguage('id', 'en_US'),
                  child: const Text('Indonesia'),
                ),
              ],
            ),


            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text('Forgot Password?',
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary)),
            ),
            const SizedBox(
              height: 70,
            ),
            MainButton(
                color: Theme.of(context).colorScheme.primary,
                title: 'Login',
                onPressed: () {
                  Get.toNamed('/home-screen');
                }),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account? ',
                  style: TextStyle(fontSize: 17),
                ),
                GestureDetector(
                  onTap: () => Get.toNamed('/sign_up_screen_first'),
                  child: Text('Sign Up',
                      style: TextStyle(
                          fontSize: 17,
                          color: Theme.of(context).colorScheme.primary)),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
