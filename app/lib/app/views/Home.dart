import 'package:app/app/components/CurrencyBox.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding:
            const EdgeInsets.only(top: 100, left: 20, right: 20, bottom: 20),
        child: Column(
          children: [
            Image.asset(
              'assets/logo.png',
              width: 150,
              height: 150,
            ),
            SizedBox(height: 50),
            CurrencyBox(),
            SizedBox(height: 10),
            CurrencyBox(),
            SizedBox(height: 50),
            RaisedButton(
              color: Colors.amber,
              onPressed: () {},
              child: Text("Converter"),
            ),
          ],
        ),
      ),
    ));
  }
}
