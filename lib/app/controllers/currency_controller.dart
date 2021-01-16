import 'package:flutter/material.dart';

import '../models/currency_model.dart';

class CurrencyController {
  // currencyModel
  final currencyModel = CurrencyModel();

  // EditControllers
  final realController = TextEditingController();
  final dolarController = TextEditingController();
  final euroController = TextEditingController();

  // Limpar campos
  void _clearFields() {
    realController.text = "";
    dolarController.text = "";
    euroController.text = "";
  }

  // Método para mudar real
  void realChanged(String value) {
    double real = double.parse(value);

    dolarController.text = (real / currencyModel.dolar).toStringAsFixed(2);
  }

  // Método para muda dolar
  void dolarChanged() {}

  // Método para muda euro
  void euroChanged() {}
}
