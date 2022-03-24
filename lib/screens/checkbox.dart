import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Checkcontroller extends GetxController {
  var checkBool = false.obs;
}

class Index extends StatelessWidget {
  final Checkcontroller ctrl = Get.put(Checkcontroller());
  Index({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Checkbox(
        value: ctrl.checkBool.value,
        onChanged: (value) {
          ctrl.checkBool.value = !ctrl.checkBool.value;
          print(ctrl.checkBool.value);
        }));
  }
}
