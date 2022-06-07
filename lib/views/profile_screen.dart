import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () => Get.toNamed('/camera_screen'),
                  child: const Icon(Icons.camera_alt)),
              label: 'SCAN'),
          BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: () => Get.toNamed('/'),
                child: const Icon(Icons.home)),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () => Get.toNamed('/profile_screen'),
                  child: const Icon(Icons.person)),
              label: 'PROFILE',
              activeIcon: Icon(
                Icons.person,
                color: Theme.of(context).colorScheme.primary,
              )),
        ],
      ),
    );
  }
}
