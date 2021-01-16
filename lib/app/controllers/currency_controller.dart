import 'package:flutter/material.dart';

class CurrencyController {
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
  void realChanged() {}

  // Método para muda dolar
  void dolarChanged() {}

  // Método para muda euro
  void euroChanged() {}
}
