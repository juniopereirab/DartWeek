import 'package:app/app/components/CurrencyBox.dart';
import 'package:app/app/controllers/homeController.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  HomeController homeController;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();
  HomeController homeController;

  @override
  void initState() {
    super.initState();
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding:
            const EdgeInsets.only(top: 100, left: 20, right: 20, bottom: 20),
        child: ListView(
          children: [
            Image.asset(
              'assets/logo.png',
              width: 150,
              height: 150,
            ),
            SizedBox(height: 50),
            CurrencyBox(
              selectedItem: homeController.toCurrency,
              controller: toText,
              items: homeController.currencies,
              onChanged: (value) {
                setState(() {
                  homeController.toCurrency = value;
                });
              },
            ),
            SizedBox(height: 10),
            CurrencyBox(
              selectedItem: homeController.fromCurrency,
              controller: fromText,
              items: homeController.currencies,
              onChanged: (value) {
                setState(() {
                  homeController.fromCurrency = value;
                });
              },
            ),
            SizedBox(height: 50),
            RaisedButton(
              color: Colors.amber,
              onPressed: () {
                homeController.convert();
              },
              child: Text("CONVERTER"),
            ),
          ],
        ),
      ),
    ));
  }
}
