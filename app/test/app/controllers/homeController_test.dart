import 'package:app/app/controllers/homeController.dart';
import 'package:app/app/models/Currency.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();
  final homeController = HomeController(toText: toText, fromText: fromText);

  test('Should convert from Real to Dollar with dot', () {
    toText.text = '2.0';
    homeController.convert();
    expect(fromText.text, '0.36');
  });
  test('Should convert from Real to Dollar with comma', () {
    toText.text = '2,0';
    homeController.convert();
    expect(fromText.text, '0.36');
  });
  test('Should convert from Dollar to Real', () {
    toText.text = '1.0';
    homeController.toCurrency = Currency(
        name: 'Dolar', real: 5.65, dolar: 1.0, euro: 0.85, bitcoin: 0.000088);
    homeController.fromCurrency = Currency(
        name: 'Real', real: 1.0, dolar: 0.18, euro: 0.15, bitcoin: 0.000016);
    homeController.convert();
    expect(fromText.text, '5.65');
  });
}
