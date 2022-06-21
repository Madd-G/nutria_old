import 'package:flutter/material.dart';
import 'package:nutria/controllers/controller.dart';
import 'package:get/get.dart';
import '../components/main_button.dart';
import '../components/text_input_decoration.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Controller c = Get.put<Controller>(Controller());
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 45,
              ),
              Text("Login".tr,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 40,
                      fontWeight: FontWeight.w500)),
              const SizedBox(
                height: 50,
              ),
              Text(
                "Enter your email address and\npassword to access your account"
                    .tr,
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 35,
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
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text('Forgot Password?'.tr,
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary)),
              ),
              const SizedBox(
                height: 70,
              ),
              MainButton(
                  title: 'Login'.tr,
                  onPressed: () {
                    Get.toNamed('/screen_controller');
                  }),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account? '.tr,
                    style: const TextStyle(fontSize: 17),
                  ),
                  GestureDetector(
                    onTap: () => Get.toNamed('/sign_up_screen_first'),
                    child: Text('Sign Up'.tr,
                        style: TextStyle(
                            fontSize: 17,
                            color: Theme.of(context).colorScheme.primary)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
