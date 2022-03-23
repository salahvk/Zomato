import 'package:flutter/material.dart';
import 'package:zomato/widgets/widgets.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Text(
            'OTP Verification',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 25,
            ),
            Text(
              'We have sent a verification code to',
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  OtpField(),
                  OtpField(),
                  OtpField(),
                  OtpField(),
                  OtpField(),
                  OtpField()
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white, onPrimary: Colors.grey),
                        onPressed: () {},
                        child: Text('Resend SMS in ')),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white, onPrimary: Colors.grey),
                          onPressed: () {},
                          child: Text('Call me in ')))
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Try other login methods',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            )
          ],
        ));
  }
}
