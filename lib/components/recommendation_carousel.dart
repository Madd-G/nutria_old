import 'package:flutter/material.dart';
import 'package:nutria/models/recommendations_model.dart';
import 'package:nutria/views/fruit_detail_screen.dart';
import 'package:nutria/views/home_screen.dart';

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
            onTap: () => print('See All'),
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
                Recommendation recommendation = recommendations[index];
                return GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (_) => FruitDetailScreen())),
                  child: Container(
                      margin: EdgeInsets.all(10.0),
                      width: 200,
                      height: 150,
                      color: Colors.blue,
                      child: const Text('Check')),
                );
              }))
    ]);
  }
}
