import 'package:flutter/material.dart';

import '../models/currency_model.dart';

class CurrencyController {
  // currencyModel
  final currencyModel = CurrencyModel();

  // EditControllers
  final realController = TextEditingController();
  final dolarController = TextEditingController();
  final euroController = TextEditingController();

  double dolar;
  double euro;

  // Limpar campos
  void _clearFields() {
    realController.text = "";
    dolarController.text = "";
    euroController.text = "";
  }

  // Método para mudar real
  void realChanged(String value) {
    // * Verifica e limpar os campos
    if (value.isEmpty) {
      _clearFields();
    }

    // * Armazena o valor em Real passado no campo
    double real = double.parse(value);

    dolarController.text = (real / this.dolar).toStringAsFixed(2);
    euroController.text = (real / this.euro).toStringAsFixed(2);
  }

  // Método para muda dolar
  void dolarChanged(String value) {
    // * Verifica e limpar os campos
    if (value.isEmpty) {
      _clearFields();
    }

    // * Armazena o valor em Dolar passado no campo
    double dolar = double.parse(value);

    realController.text = (dolar * this.dolar).toStringAsFixed(2);
    euroController.text = (dolar * this.dolar / this.euro).toStringAsFixed(2);
  }

  // Método para muda euro
  void euroChanged(String value) {
    // * Verifica e limpar os campos
    if (value.isEmpty) {
      _clearFields();
    }

    // * Armazena o valor em Euro passado no campo
    double euro = double.parse(value);

    realController.text = (euro * this.euro).toStringAsFixed(2);
    dolarController.text = (euro * this.euro / this.dolar).toStringAsFixed(2);
  }
}
