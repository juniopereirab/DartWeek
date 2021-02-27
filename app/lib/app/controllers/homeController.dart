import 'package:app/app/models/Currency.dart';
import 'package:flutter/material.dart';

class HomeController {
  List<Currency> currencies;

  TextEditingController toText = TextEditingController();
  TextEditingController fromText = TextEditingController();

  Currency toCurrency;
  Currency fromCurrency;

  HomeController() {
    currencies = Currency.getCurrencies();
    toCurrency = currencies[0];
    fromCurrency = currencies[1];
  }

  void convert() {
    String text = toText.text;
    double value = double.tryParse(text) ?? 1.0;
    double returnValue = 0;

    if (fromCurrency.name == 'Real') {
      returnValue = value * toCurrency.real;
    } else if (fromCurrency.name == 'Dolar') {
      returnValue = value * toCurrency.dolar;
    } else if (fromCurrency.name == 'Euro') {
      returnValue = value * toCurrency.euro;
    } else if (fromCurrency.name == 'Bitcoin') {
      returnValue = value * toCurrency.bitcoin;
    }

    fromText.text = returnValue.toStringAsFixed(2);
  }
}
