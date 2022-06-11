import 'package:flutter/material.dart';

import '../components/recommendation_carousel.dart';

class FruitListScreen extends StatelessWidget {
  const FruitListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  color: Theme.of(context).colorScheme.primary,
                  height: 230,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Center(
                            child: SafeArea(
                          child: Text(
                            'Nutria',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.w700),
                          ),
                        )),
                        SizedBox(
                          height: 15.0,
                        ),
                        Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          "Daftar Buah",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 25.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 55,
                            width: 140,
                            decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.primary,
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    bottomLeft: Radius.circular(10.0)),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black26,
                                      offset: Offset(0.0, 2.0),
                                      blurRadius: 5.0)
                                ]),
                          ),
                          Container(
                            height: 55,
                            width: 140,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10.0),
                                    bottomRight: Radius.circular(10.0)),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black26,
                                      offset: Offset(0.0, 2.0),
                                      blurRadius: 5.0)
                                ]),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              top: 200,
              left: MediaQuery.of(context).size.width / 14,
              right: MediaQuery.of(context).size.width / 14,
              // right: width/2,
              // left: -175,
              child: Container(
                  height: 60.0,
                  width: 320.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 1.0,
                            blurStyle: BlurStyle.outer,
                            offset: Offset.fromDirection(1.0),
                            spreadRadius: 1.0)
                      ],
                      borderRadius: BorderRadius.circular(30.0)),
                  child: const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            hintText: 'Temukan buah favorit anda',
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 15.0),
                            prefixIcon: Icon(Icons.search),
                            border: InputBorder.none),
                      ))),
            ),
          ],
        ),
      ),
    );
  }
}
