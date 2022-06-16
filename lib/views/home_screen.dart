import 'package:flutter/material.dart';
import 'package:nutria/components/recommendation_carousel.dart';
import '../components/category_box.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
                                fontSize: 35.0,
                                fontWeight: FontWeight.w700),
                          ),
                        )),
                        const Text(
                          'Hello Alamsyah,',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 27,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        const Text(
                          "Let's Learn More About Fruits and Vegetables",
                          style: TextStyle(
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
                                const Text(
                                  'SCAN UNTUK MENGETAHUI\nJENIS BUAH ATAU SAYURAN',
                                  style: TextStyle(
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
                      const Align(
                        child: Text(
                          'Kategori',
                          style: TextStyle(
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
                          category_box(
                              imagePath: 'assets/images/buah.png',
                              route: '/fruit_list_screen'),
                          const SizedBox(
                            width: 10.0,
                          ),
                          category_box(
                            imagePath: 'assets/images/sayuran.png',
                            route: '/vegetable_list_screen',
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
                  child: const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            hintText: 'Cari Buah dan Sayuran',
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
