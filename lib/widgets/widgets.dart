import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpField extends StatelessWidget {
  const OtpField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(6),
        width: 40,
        height: 50,
        child: TextField(
          keyboardType: TextInputType.number,
          maxLength: 1,
          autofocus: true,
          decoration: InputDecoration(
              counterText: '',
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      BorderSide(width: 1, color: Colors.grey.shade500)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(width: 2))),
        ),
      ),
    );
  }
}
