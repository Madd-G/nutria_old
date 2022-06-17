import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/text_input_decoration.dart';
import '../controllers/controller.dart';
import '../controllers/translations_controller.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final Controller c = Get.put<Controller>(Controller());
    var height = MediaQuery.of(context).size.height;
    final languages = ['English', 'Indonesia'];
    final messageController = Get.put(MessagesController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Theme.of(context).colorScheme.primary,
              height: height * 0.28,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                        child: SafeArea(
                      child: Text(
                        'Nutria',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.w700),
                      ),
                    )),
                    IconButton(
                      icon: const Icon(Icons.arrow_back_ios),
                      color: Colors.white,
                      onPressed: () {
                        Get.toNamed('/screen_controller');
                      },
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    const Text(
                      "Daftar Buah",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
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
                    DropdownSearch<String>(
                        mode: Mode.MENU,
                        showSelectedItem: true,
                        items: languages,
                        label: "Language",
                        hint: "select language",
                        selectedItem: "English",
                        onChanged: (String? data) {
                          if (data == 'English') {
                            messageController.changeLanguage('en_US', 'id');
                          } else if (data == "Indonesia") {
                            messageController.changeLanguage('id', 'en_US');
                          }
                        }),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
