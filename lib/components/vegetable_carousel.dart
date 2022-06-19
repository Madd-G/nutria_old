import 'package:flutter/material.dart';
import '../models/fruit_vegetable_model.dart';

class VegetableCarousel extends StatelessWidget {
  const VegetableCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
        height: 600,
        child: ListView.builder(
          reverse: false,
            scrollDirection: Axis.vertical,
            itemCount: vegetables.length,
            itemBuilder: (BuildContext context, int index) {
              FruitVegetable vegetable = vegetables[index];
              return Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(
                      height: height * 0.16,
                      width: width * 0.43,
                      image: AssetImage(vegetable.imageUrl),
                      fit: BoxFit.cover,
                    ),
                    Container(
                      color: Colors.white,
                      height: height * 0.16,
                      width: width * 0.45,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            vegetable.title,
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
                            vegetable.category,
                            style: const TextStyle(fontSize: 12.0),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          const Text('Deskripsi',
                              style: TextStyle(
                                  color: Color(0xffA1A8B9), fontSize: 13.0)),
                          Flexible(
                            child: Text(vegetable.description,
                                style: const TextStyle(fontSize: 12.0, overflow: TextOverflow.clip)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            }));
  }
}
