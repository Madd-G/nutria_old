import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryBox extends StatelessWidget {
  final String imagePath;
  final String route;
  final String label;

  // ignore: use_key_in_widget_constructors
  const CategoryBox(
      {required this.imagePath, required this.route, required this.label});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(route),
      child: Container(
        height: 150,
        width: MediaQuery.of(context).size.width * 0.45,
        child: Column(
          children: [
            Image.asset(
              imagePath,
              fit: BoxFit.fill,
            ),
            Text(
              label,
              style:
                  const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
            )
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: const [
            BoxShadow(
                color: Colors.white, offset: Offset(0.0, 2.0), blurRadius: 5.0)
          ],
        ),
      ),
    );
  }
}
