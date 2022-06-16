import 'package:flutter/material.dart';
import 'package:get/get.dart';

class category_box extends StatelessWidget {
  final imagePath;
  final route;

  category_box({required this.imagePath, required this.route});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(route),
      child: Container(
        height: 150,
        width: MediaQuery.of(context).size.width * 0.45,
        // width: 195,
        // color: Colors.white,
        child: Image.asset(
          imagePath,
          fit: BoxFit.fill,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0.0, 2.0),
                  blurRadius: 5.0)
            ]),
      ),
    );
  }
}