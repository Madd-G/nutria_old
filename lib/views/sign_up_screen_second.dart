import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/main_button.dart';
import '../components/text_input_decoration.dart';
import '../controllers/controller.dart';

class SignUpScreenSecond extends StatelessWidget {
  const SignUpScreenSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Controller c = Get.put<Controller>(Controller());
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
                Get.offNamed('sign_up_screen_first');
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
            const Text(
              "Please fill information to create an\naccount and sign up to continue",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 45,
            ),
            TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: textInputDecoration.copyWith(
                    hintText: 'Email',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.primary)))),
            const SizedBox(height: 20),
            Obx(
              () => TextField(
                keyboardType: TextInputType.text,
                obscureText: c.isHidden.value ? true : false,
                decoration: textInputDecoration.copyWith(
                  suffixIconColor: Theme.of(context).colorScheme.primary,
                  hintText: 'Password',
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.primary)),
                  suffixIcon: GestureDetector(
                    onTap: () => c.toggleVisibility(),
                    child: Icon(c.isHidden.value == true
                        ? Icons.visibility_off
                        : Icons.visibility),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Obx(
              () => TextField(
                keyboardType: TextInputType.text,
                obscureText: c.isHidden.value ? true : false,
                decoration: textInputDecoration.copyWith(
                  suffixIconColor: Theme.of(context).colorScheme.primary,
                  hintText: 'Password',
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.primary)),
                  suffixIcon: GestureDetector(
                    onTap: () => c.toggleVisibility(),
                    child: Icon(c.isHidden.value == true
                        ? Icons.visibility_off
                        : Icons.visibility),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            MainButton(
                color: Theme.of(context).colorScheme.primary,
                title: 'Sign Up',
                onPressed: () {
                  Get.toNamed('/upload_profile_photo_screen');
                }),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account? ',
                  style: TextStyle(fontSize: 17),
                ),
                GestureDetector(
                  onTap: () => Get.toNamed('/login_screen'),
                  child: Text('Login',
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
