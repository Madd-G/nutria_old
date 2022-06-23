import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/main_button.dart';
import '../controllers/translations_controller.dart';
import '../controllers/user_controller.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({Key? key}) : super(key: key);
  final UserController userController = Get.put(UserController());
  final languages = ['English', 'Indonesia'];
  final messageController = Get.put(MessagesController());

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    final TextEditingController _username_controller =
        TextEditingController(text: userController.username.value);
    final TextEditingController _email_controller =
        TextEditingController(text: userController.email.value);
    final TextEditingController _address_controller =
        TextEditingController(text: userController.address.value);
    final TextEditingController _gender_controller =
        TextEditingController(text: userController.gender.value);

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
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SafeArea(
                      child: Center(
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 5,
                                    color:
                                        Theme.of(context).colorScheme.primary),
                                image: const DecorationImage(
                                  fit: BoxFit.fill,
                                  image:
                                      AssetImage('assets/images/profile.png'),
                                ),
                              ),
                              height: 100,
                              width: 100,
                              padding: const EdgeInsets.all(8.0),
                            ),
                            Positioned(
                                bottom: 7,
                                right: 7,
                                child: Container(
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xff3F897F)),
                                  height: 30,
                                  width: 30,
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                    Text(
                      userController.username.value,
                      style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Username'.tr,
                    style: const TextStyle(
                        color: Color(0xFFD3D3D3),
                        fontWeight: FontWeight.w500,
                        fontSize: 20.0),
                  ),
                  SizedBox(
                    height: height * 0.005,
                  ),
                  TextField(
                    controller: _username_controller,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        hintText: userController.username.value),
                  ),
                  Container(
                    height: 2.0,
                    width: double.infinity,
                    color: const Color(0xFFD3D3D3),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  const Text(
                    'Email',
                    style: TextStyle(
                        color: Color(0xFFD3D3D3),
                        fontWeight: FontWeight.w500,
                        fontSize: 20.0),
                  ),
                  SizedBox(
                    height: height * 0.005,
                  ),
                  TextField(
                    controller: _email_controller,
                    keyboardType: TextInputType.text,
                    decoration:
                        InputDecoration(hintText: userController.email.value),
                  ),
                  Container(
                    height: 2.0,
                    width: double.infinity,
                    color: const Color(0xFFD3D3D3),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Text(
                    'Address'.tr,
                    style: const TextStyle(
                        color: Color(0xFFD3D3D3),
                        fontWeight: FontWeight.w500,
                        fontSize: 20.0),
                  ),
                  SizedBox(
                    height: height * 0.005,
                  ),
                  TextField(
                    controller: _address_controller,
                    keyboardType: TextInputType.text,
                    decoration:
                        InputDecoration(hintText: userController.address.value),
                  ),
                  Container(
                    height: 2.0,
                    width: double.infinity,
                    color: const Color(0xFFD3D3D3),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Text(
                    'Language'.tr,
                    style: const TextStyle(
                        color: Color(0xFFD3D3D3),
                        fontWeight: FontWeight.w500,
                        fontSize: 20.0),
                  ),
                  SizedBox(
                    height: height * 0.005,
                  ),
                  DropdownSearch<String>(
                    mode: Mode.MENU,
                    showSelectedItem: true,
                    items: languages,
                    hint: "select language".tr,
                    selectedItem: "${userController.language}",
                    onChanged: (String? data) {
                      if (data == 'English') {
                        messageController.changeLanguage('en_US', 'id');
                      } else if (data == "Indonesia") {
                        messageController.changeLanguage('id', 'en_US');
                      }
                    },
                    dropdownSearchDecoration:
                        const InputDecoration(border: InputBorder.none),
                  ),
                  Container(
                    height: 2.0,
                    width: double.infinity,
                    color: const Color(0xFFD3D3D3),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Text(
                    'Gender'.tr,
                    style: const TextStyle(
                        color: Color(0xFFD3D3D3),
                        fontWeight: FontWeight.w500,
                        fontSize: 20.0),
                  ),
                  SizedBox(
                    height: height * 0.005,
                  ),
                  TextField(
                    controller: _gender_controller,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        // label: Text('${userController.gender.value}'),
                        hintText: userController.gender.value),
                  ),
                  Container(
                    height: 2.0,
                    width: double.infinity,
                    color: const Color(0xFFD3D3D3),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  MainButton(title: 'Save'.tr, onPressed: () {})
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
