import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutria/views/fruit_detail_screen.dart';
import '../models/fruit_vegetable_model.dart';

class RecommendationCarousel extends StatelessWidget {
  const RecommendationCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Rekomendasi',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
            ),
          ),
          GestureDetector(
            onTap: () => Get.toNamed('fruit_list_screen'),
            child: Text(
              'See All',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.0,
              ),
            ),
          ),
        ],
      ),
      Container(
          height: 200.0,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: recommendations.length,
              itemBuilder: (BuildContext context, int index) {
                FruitVegetable recommendation = recommendations[index];
                return GestureDetector(
                    onTap: () => Get.toNamed('fruit_detail_screen'),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: <Widget>[
                          Hero(
                            tag: recommendation.imageUrl,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image(
                                height: 180.0,
                                width: 180.0,
                                image: AssetImage(recommendation.imageUrl),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            // left: 10.0,
                            bottom: 10.0,
                            child: Stack(children: [
                              Container(
                                width: 70,
                                height: 23,
                                // color: Colors.white,
                                decoration: const BoxDecoration(
                                    color: Colors.white54,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(5.0),
                                        bottomRight: Radius.circular(5.0))),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5, 3, 0, 0),
                                child: Text(
                                  recommendation.title,
                                  style: const TextStyle(
                                    color: Colors.black26,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1.2,
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ));
              }))
    ]);
  }
}
