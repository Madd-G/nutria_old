import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

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
            const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text('Test')
            )
          ],
        ),
      ),
    );
  }
}
