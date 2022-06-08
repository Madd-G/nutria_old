import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutria/components/recommendation_carousel.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [ Column(
            children: [
              Container(
                color: Theme.of(context).colorScheme.primary,
                height: 250,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Center(
                          child: SafeArea(
                        child: Text(
                          'Nutria',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                              fontWeight: FontWeight.w700),
                        ),
                      )),
                      SizedBox(
                        height: 40.0,
                      ),
                      Text(
                        'Hello Alamsyah,',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "Let\'s Learn More About Fruits and Vegetables",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40.0,
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
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    const Align(
                      child: Text('Kategori'),
                      alignment: Alignment.centerLeft,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 150,
                          width: 180,
                          color: Colors.blue,
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Container(
                          height: 150,
                          width: 180,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const RecommendationCarousel(),
                  ],
                ),
              )
            ],
          ),
            Positioned(
              top: 220,
              left: MediaQuery.of(context).size.width/12,
              right: MediaQuery.of(context).size.width/12,
              // right: width/2,
              // left: -175,
              child: GestureDetector(
                onTap: () => Get.toNamed('/login_screen'),
                child: Container(
                  height: 60.0,
                  width: 300.0,
                  decoration:  BoxDecoration(
                      color: Colors.red,
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                ),
              ),
            ),
    ],

        ),
      ),
    );
  }
}
