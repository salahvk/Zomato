import 'package:flutter/material.dart';

class OtpField extends StatelessWidget {
  final bool first = true, last = false;
  OtpField({
    required bool first,
    last,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(6),
        width: 40,
        height: 50,
        child: TextFormField(
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            // if (value.length == 0 && first == false) {
            //   FocusScope.of(context).previousFocus();
            // }
          },
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
