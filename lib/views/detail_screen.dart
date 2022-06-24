import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutria/models/fruit_vegetable_model.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key, required this.detailFruitVegetable})
      : super(key: key);
  final FruitVegetable detailFruitVegetable;

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
          children: [
            SizedBox(
              // color: Theme.of(context).colorScheme.primary,
              height: height * 0.38,
              width: double.infinity, // width: double.infinity,
              child: Hero(
                tag: widget.detailFruitVegetable.imageUrl,
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    widget.detailFruitVegetable.imageUrl,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.detailFruitVegetable.name,
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
                    widget.detailFruitVegetable.category,
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
                    widget.detailFruitVegetable.description,
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
