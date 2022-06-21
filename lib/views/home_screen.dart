import 'package:flutter/material.dart';
import 'package:nutria/components/recommendation_carousel.dart';
import '../components/category_box.dart';
import '../controllers/user_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final UserController userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  color: Theme.of(context).colorScheme.primary,
                  height: 250,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Center(
                            child: SafeArea(
                          child: Text(
                            'Nutria',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 35.0,
                                fontWeight: FontWeight.w700),
                          ),
                        )),
                        SizedBox(
                          height: height * 0.025,
                        ),
                        Text(
                          'Hello '.trParams({'username' : '${userController.username.value}'}),
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 27,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text(
                          'Let\'s Learn More About Fruits and Vegetables'.tr,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.06,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(13.0),
                        child: Container(
                          height: 90.0,
                          width: double.infinity,
                          color: Theme.of(context).colorScheme.primary,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/images/scan.png'),
                                const SizedBox(
                                  width: 18.0,
                                ),
                                Text(
                                  'SCAN TO KNOW THE TYPE\nOF FRUIT OR VEGETABLE'.tr,
                                  style: const TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Align(
                        child: Text(
                          'Category'.tr,
                          style: const TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w600),
                        ),
                        alignment: Alignment.centerLeft,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CategoryBox(
                              imagePath: 'assets/images/buah.png',
                              route: '/fruit_list_screen', label: 'Fruit'.tr,),
                          const SizedBox(
                            width: 10.0,
                          ),
                          CategoryBox(
                            imagePath: 'assets/images/sayuran.png',
                            route: '/vegetable_list_screen',
                            label: 'Vegetable'.tr,
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      const RecommendationCarousel(),
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              top: 220,
              left: width / 14,
              right: width / 14,
              // right: width/2,
              // left: -175,
              child: Container(
                  height: 60.0,
                  width: 320.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 1.0,
                            blurStyle: BlurStyle.outer,
                            offset: Offset.fromDirection(1.0),
                            spreadRadius: 1.0)
                      ],
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            hintText: 'Find fruits or vegetables'.tr,
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 15.0),
                            prefixIcon: const Icon(Icons.search),
                            border: InputBorder.none),
                      ))),
            ),
          ],
        ),
      ),
    );
  }
}
