import 'package:flutter/material.dart';
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
            Container(
              // color: Theme.of(context).colorScheme.primary,
              height: height * 0.38,
              width: double.infinity, // width: double.infinity,
              child: Hero(
                tag: widget.detailFruitVegetable.imageUrl,
                child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      widget.detailFruitVegetable.imageUrl,
                    )),
              ),
              // decoration: const BoxDecoration(
              //   boxShadow: [
              //     BoxShadow(
              //       color: Colors.black26,
              //       offset: Offset(0.0, 1.0),
              //       blurRadius: 2.0,
              //     ),
              //   ],
              // ),
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
                      style: TextStyle(
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
                    const Text('Deskripsi',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w600)),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text(widget.detailFruitVegetable.description,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                          fontSize: 16.0,
                          overflow: TextOverflow.clip,
                        )),
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
