import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutria/models/fruit_vegetable_model.dart';

import '../models/model.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({this.detailFruitVegetable, this.model});

  final FruitVegetable? detailFruitVegetable;
  final Model? model;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              // color: Theme.of(context).colorScheme.primary,
              height: height * 0.38,
              width: double.infinity,
              child: Hero(
                tag: widget.model!.name,
                child: const Image(
                  // image: AssetImage(fruit.imageUrl),
                  image: AssetImage("assets/images/apel.png"),
                  fit: BoxFit.cover,
                ),
                // Image(
                //   fit: BoxFit.cover,
                //   image: AssetImage(
                //     widget.detailFruitVegetable!.imageUrl,
                //   ),
                // ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.model!.name,
                    style: const TextStyle(
                        fontSize: 35.0, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: height * 0.025,
                  ),
                  Text(
                    'Category'.tr,
                    style: const TextStyle(
                        fontSize: 20.0, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text(
                    widget.model!.category,
                    style: const TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(
                    height: height * 0.025,
                  ),
                  Text(
                    'Description'.tr,
                    style: const TextStyle(
                        fontSize: 20.0, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text(
                    widget.model!.description,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                      fontSize: 16.0,
                      overflow: TextOverflow.clip,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
