import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutria/controllers/gender_controller.dart';
import 'package:nutria/controllers/translations_controller.dart';
import 'package:nutria/components/gender_radio_button.dart';
import 'package:nutria/controllers/user_controller.dart';
import '../components/main_button.dart';
import '../components/text_input_decoration.dart';

class SignUpScreenFirst extends StatelessWidget {
  SignUpScreenFirst({Key? key}) : super(key: key);
  final UserController userController = Get.put(UserController());
  final languages = ['English', 'Indonesia'];
  final messageController = Get.put(MessagesController());

  @override
  Widget build(BuildContext context) {
    Get.put(
      GenderController(),
    );
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                Text(
                  "Sign Up".tr,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 40,
                      fontWeight: FontWeight.w500),
                ),
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
                    hintText: 'Username'.tr,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  keyboardType: TextInputType.streetAddress,
                  decoration: textInputDecoration.copyWith(
                    hintText: 'Address'.tr,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                DropdownSearch<String>(
                  mode: Mode.MENU,
                  showSelectedItem: true,
                  items: languages,
                  label: "Language",
                  hint: "select language",
                  selectedItem: "${userController.language}",
                  // selectedItem: "English",
                  onChanged: (String? data) {
                    if (data == 'English') {
                      messageController.changeLanguage('en_US', 'id');
                    } else if (data == "Indonesia") {
                      messageController.changeLanguage('id', 'en_US');
                    }
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    GenderRadioButton(value: 'Male', title: 'Male'.tr),
                    GenderRadioButton(value: 'Female', title: 'Female'.tr),
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                MainButton(
                  title: 'Next'.tr,
                  onPressed: () {
                    Get.toNamed('/sign_up_screen_second');
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account? '.tr,
                      style: const TextStyle(fontSize: 17),
                    ),
                    GestureDetector(
                      onTap: () => Get.toNamed('/login_screen'),
                      child: Text(
                        'Login'.tr,
                        style: TextStyle(
                            fontSize: 17,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
