import 'package:flutter/material.dart';

import '../components/custom_textfield.dart';
import '../controllers/currency_controller.dart';

class HomeView extends StatelessWidget {
  // * link com imagem provisoria
  final String img =
      "https://imagensemoldes.com.br/wp-content/uploads/2020/04/money-png.png";

  // Instanciando controllers
  final currencyController = CurrencyController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        // color: Colors.red,
        child: Padding(
          padding:
              const EdgeInsets.only(bottom: 10, left: 25, right: 25, top: 25),
          child: Column(
            children: [
              // Img
              Image.network(
                img,
                scale: 4,
              ),

              // TextField
              CustomTextField(
                controller: currencyController.realController,
                currencyIcon: 'assets/images/real.png',
                currencyPrefixName: 'BRL',
                onChanged: currencyController.realChanged,
              ),
              CustomTextField(
                controller: currencyController.dolarController,
                currencyIcon: 'assets/images/dolar.png',
                currencyPrefixName: 'USD',
                onChanged: currencyController.dolarChanged,
              ),
              CustomTextField(
                controller: currencyController.euroController,
                currencyIcon: 'assets/images/euro.png',
                currencyPrefixName: 'EUR',
                onChanged: currencyController.euroChanged,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
