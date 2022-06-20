import 'package:flutter/material.dart';
import 'package:nutria/models/fruit_vegetable_model.dart';

class FruitDetailScreen extends StatefulWidget {
  const FruitDetailScreen({Key? key, required this.detailFruitVegetable})
      : super(key: key);
  final FruitVegetable detailFruitVegetable;

  @override
  State<FruitDetailScreen> createState() => _FruitDetailScreenState();
}

class _FruitDetailScreenState extends State<FruitDetailScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // color: Theme.of(context).colorScheme.primary,
              height: height * 0.38,
              width: double.infinity, // width: double.infinity,
              child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    widget.detailFruitVegetable.imageUrl,
                  )),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.detailFruitVegetable.title,
                      style: const TextStyle(
                          fontSize: 35.0, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: height * 0.025,
                    ),
                    const Text(
                      'Kategori',
                      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text(
                      widget.detailFruitVegetable.category,
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(
                      height: height * 0.025,
                    ),
                    const Text('Deskripsi',
                        style:
                            TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600)),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text(widget.detailFruitVegetable.description,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(fontSize: 16.0, overflow: TextOverflow.clip,)),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
