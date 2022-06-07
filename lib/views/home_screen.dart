import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
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
                        Center(child: Text('Nutria', style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.w700),)),
                        SizedBox(height: 40.0,),
                        Text('Hello Alamsyah,', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),),
                        SizedBox(height: 20.0,),
                        Text("Let\'s Learn More About Fruits and Vegetables", style: TextStyle(color: Colors.white, fontSize: 15),),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 50.0,),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Container(
                        height: 90.0,
                        width: double.infinity,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      SizedBox(height: 15.0,),
                      Text('Kategori'),
                      SizedBox(height: 15.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 150,
                            width: 180,
                            color: Colors.blue,
                            ),
                          SizedBox(width: 20.0,),
                          Container(
                            height: 150,
                            width: 180,
                            color: Colors.blue,
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ));
  }
}
