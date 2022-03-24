import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zomato/screens/checkbox.dart';
import 'package:zomato/screens/login.dart';
import 'package:zomato/main.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    gotoHome();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Image.asset(
          'Assets/image.png',
          width: width,
          height: height,
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<void> gotoHome() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => Home()));
    await Future.delayed(Duration(seconds: 5));
    Get.defaultDialog(
        title: 'Location access !',
        content: Column(
          children: [
            Row(
              children: [Icon(Icons.location_on)],
            ),
            Text(
              "Allow Zomato \nto access \nthis device's \nlocation?",
              style: TextStyle(letterSpacing: 2, height: 1.3),
            ),
            Row(
              children: [Index(), Text(" Dont't ask again")],
            )
          ],
        ),
        textConfirm: 'ALLOW',
        textCancel: 'DENY',
        cancelTextColor: Colors.teal,
        confirmTextColor: Colors.teal,
        buttonColor: Colors.white,
        radius: 0);
  }
}
//       
