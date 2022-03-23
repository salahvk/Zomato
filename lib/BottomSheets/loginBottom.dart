import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

Widget sheet({title, icon}) {
  return ListTile(
    title: Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.black26)),
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          Text(title),
        ],
      ),
    ),
  );
}
