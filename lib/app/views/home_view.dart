import 'package:flutter/material.dart';

import '../components/custom_textfield.dart';
import '../controllers/currency_controller.dart';

class HomeView extends StatefulWidget {
  // Instanciando controllers
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
              const EdgeInsets.only(bottom: 10, left: 25, right: 25, top: 75),
          child: Column(
            children: [
              // Img
              Image.asset('assets/images/logo.png', scale: 3),

              SizedBox(height: 20.0),

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
