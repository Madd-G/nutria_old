import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../views/camera_screen.dart';
import '../views/home_screen.dart';
import '../views/profile_screen.dart';

class ScreenController extends StatelessWidget {
  ScreenController({Key? key}) : super(key: key);

  final RxInt _currentIndex = 1.obs;

  final screens = [
    const CameraScreen(),
    HomeScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() => screens[_currentIndex.value]),
        bottomNavigationBar: Obx(() => (BottomNavigationBar(
              currentIndex: _currentIndex.value,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  icon: const Icon(Icons.camera_alt),
                  label: 'SCAN'.tr,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.home),
                  label: 'HOME'.tr,
                ),
                BottomNavigationBarItem(
                    icon: const Icon(Icons.person), label: 'PROFILE'.tr),
              ],
              onTap: (index) {
                _currentIndex.value = index;
              },
            ))));
  }
}
