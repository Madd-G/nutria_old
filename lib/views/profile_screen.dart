import 'package:flutter/material.dart';
import 'package:nutria/components/main_button.dart';
import 'package:nutria/controllers/user_controller.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);
  final UserController userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
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
                      child: Stack(children: [
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 5,
                                  color: Theme.of(context).colorScheme.primary),
                              image: const DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/profile.png'),
                              )),
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
                                color: Color(0xff3F897F)
                              ),
                              height: 30,
                              width: 30,
                              child: const Icon(Icons.add, color: Colors.white,),
                            ))
                      ]),
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
                  const Text(
                    'Username',
                    style: TextStyle(
                        color: Color(0xFFD3D3D3),
                        fontWeight: FontWeight.w500,
                        fontSize: 20.0),
                  ),
                  SizedBox(
                    height: height * 0.005,
                  ),
                  Text(
                    userController.username.value,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 20.0),
                  ),
                  SizedBox(
                    height: height * 0.004,
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
                  Text(
                    userController.email.value,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 20.0),
                  ),
                  SizedBox(
                    height: height * 0.004,
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
                    'Address',
                    style: TextStyle(
                        color: Color(0xFFD3D3D3),
                        fontWeight: FontWeight.w500,
                        fontSize: 20.0),
                  ),
                  SizedBox(
                    height: height * 0.005,
                  ),
                  Text(
                    userController.address.value,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 20.0),
                  ),
                  SizedBox(
                    height: height * 0.004,
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
                    'Language',
                    style: TextStyle(
                        color: Color(0xFFD3D3D3),
                        fontWeight: FontWeight.w500,
                        fontSize: 20.0),
                  ),
                  SizedBox(
                    height: height * 0.005,
                  ),
                  Text(
                    userController.language.value,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 20.0),
                  ),
                  SizedBox(
                    height: height * 0.004,
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
                    'Gender',
                    style: TextStyle(
                        color: Color(0xFFD3D3D3),
                        fontWeight: FontWeight.w500,
                        fontSize: 20.0),
                  ),
                  SizedBox(
                    height: height * 0.005,
                  ),
                  Text(
                    userController.gender.value,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 20.0),
                  ),
                  SizedBox(
                    height: height * 0.004,
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
                  MainButton(title: 'Edit Profile', onPressed: () {
                    Get.toNamed('/edit_profile_screen');
                  })
                ],
              ))
        ],
      ),
    );
  }
}
