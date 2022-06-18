import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/main_button.dart';

class UploadProfilePhotoScreen extends StatelessWidget {
  const UploadProfilePhotoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 35,
              ),
              Text("Upload profile photo",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 37,
                      fontWeight: FontWeight.w500)),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Have a favorite photo?\nUpload now",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 35,
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          width: 5,
                          color: Theme.of(context).colorScheme.primary),
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/profile.png'),
                      )),
                  height: 300,
                  width: 300,
                  padding: const EdgeInsets.all(8.0),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              MainButton(title: 'Upload', onPressed: () {}),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: GestureDetector(
                  onTap: () => Get.toNamed('/screen_controller'),
                  child: const Text('Skip', style: TextStyle(fontSize: 17)),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
