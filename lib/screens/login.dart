import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Expanded(
      child: ListView(
        children: [
          Image.asset('Assets/image1.jpg'),
          SizedBox(
            height: 10,
          ),
          Text("India's #1 Food Delivery")
        ],
      ),
    ));
  }
}
