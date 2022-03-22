import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    double wid = width.toDouble();

    return Scaffold(
        body: ListView(
      children: [
        Image.asset(
          'Assets/image1.jpg',
          fit: BoxFit.fitHeight,
          height: height * 0.45,
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "India's #1 Food Delivery \nand Dining App",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 30,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Divider(
                indent: wid * 0.06,
                color: Colors.black,
                thickness: 0.6,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 3, right: 3),
              child: Text(
                'Log in or sign up',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            Expanded(
              child: Divider(
                color: Colors.black,
                thickness: 0.6,
                endIndent: wid * 0.06,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Container(
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade300),
              child: CountryCodePicker(
                initialSelection: 'IN',
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
                child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: 'Enter phone number',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            )),
            SizedBox(
              width: 20,
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: ElevatedButton(
            onPressed: () {},
            child: Text('Continue'),
            style: ElevatedButton.styleFrom(primary: Colors.red),
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Divider(
                indent: wid * 0.06,
                color: Colors.black,
                thickness: 0.6,
              ),
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 3, right: 3),
              child: Text(
                'or',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            Expanded(
              child: Divider(
                color: Colors.black,
                thickness: 0.6,
                endIndent: wid * 0.06,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: EdgeInsets.only(left: wid * 0.4),
          child: Row(
            children: [
              InkWell(
                onTap: () {},
                focusColor: Colors.black,
                highlightColor: Colors.black,
                borderRadius: BorderRadius.circular(10),
                radius: 20,
                child: Ink(
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 10,
                    foregroundImage: AssetImage('Assets/image2.png'),
                  ),
                ),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'By continuing, you agree to our \nTerms of service Privacy Policy Content Policy',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey.shade800),
        ),
      ],
    ));
  }
}
