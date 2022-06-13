import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/fruit_vegetable_model.dart';
import '../views/fruit_detail_screen.dart';

class FruitCarousel extends StatelessWidget {
  const FruitCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
        height: 600,
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: fruits.length,
            itemBuilder: (BuildContext context, int index) {
              FruitVegetable fruits = recommendations[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Hero(
                      tag: fruits.imageUrl,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image(
                          height: 145.0,
                          width: width * 0.43,
                          image: AssetImage(fruits.imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      height: 145.0,
                      width: width * 0.45,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            fruits.title,
                            style: const TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 7.0,
                          ),
                          const Text(
                            'Kategori',
                            style: TextStyle(
                                color: Color(0xffA1A8B9), fontSize: 13.0),
                          ),
                          Text(
                            fruits.category,
                            style: TextStyle(fontSize: 12.0),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          const Text('Deskripsi',
                              style: TextStyle(
                                  color: Color(0xffA1A8B9), fontSize: 13.0)),
                          Text(fruits.description,
                              style: TextStyle(fontSize: 12.0))
                        ],
                      ),
                    )
                  ],
                ),
              );
            }));
  }
}
