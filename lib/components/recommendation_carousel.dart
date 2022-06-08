import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutria/models/recommendations_model.dart';
import 'package:nutria/views/fruit_detail_screen.dart';

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
      SizedBox(
          height: 200.0,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: recommendations.length,
              itemBuilder: (BuildContext context, int index) {
                // Recommendation recommendation = recommendations[index];
                return GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const FruitDetailScreen())),
                  child: Container(
                      margin: const EdgeInsets.all(10.0),
                      width: 200,
                      height: 150,
                      color: Theme.of(context).colorScheme.primary,
                      child: const Text('Check')),
                );
              }))
    ]);
  }
}
