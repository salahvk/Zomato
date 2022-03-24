import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zomato/screens/splash_screen.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: ThemeData(
            textTheme:
                TextTheme(bodyText1: TextStyle(), bodyText2: TextStyle()).apply(
          bodyColor: Colors.black,
        )),
        debugShowCheckedModeBanner: false,
        home: Splash());
  }
}
