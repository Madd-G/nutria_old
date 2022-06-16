import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/vegetable_carousel.dart';

class VegetableListScreen extends StatelessWidget {
  const VegetableListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
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
                            Get.toNamed('/home_screen');
                          },
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        const Text(
                          "Daftar Sayuran",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () => Get.toNamed('/fruit_list_screen'),
                            child: Container(
                              height: 50,
                              width: 140,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10.0),
                                      bottomLeft: Radius.circular(10.0)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26,
                                        offset: Offset(0.0, 2.0),
                                        blurRadius: 5.0)
                                  ]),
                              child: Center(
                                  child: Text(
                                'Buah',
                                style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.w700),
                              )),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 140,
                            decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.primary,
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(10.0),
                                    bottomRight: Radius.circular(10.0)),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black26,
                                      offset: Offset(0.0, 2.0),
                                      blurRadius: 5.0)
                                ]),
                            child: const Center(
                                child: Text(
                              'Sayuran',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.w700),
                            )),
                          ),
                        ],
                      ),
                      const VegetableCarousel()
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              top: height * 0.25,
              left: MediaQuery.of(context).size.width / 14,
              right: MediaQuery.of(context).size.width / 14,
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
                  child: const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            hintText: 'Temukan sayuran favorit anda',
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 15.0),
                            prefixIcon: Icon(Icons.search),
                            border: InputBorder.none),
                      ))),
            ),
          ],
        ),
      ),
    );
  }
}
