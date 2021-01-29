import 'package:flutter/material.dart';

import '../components/custom_textfield.dart';
import '../components/currency_logo.dart';
import '../controllers/currency_controller.dart';
import '../components/custom_container_bg.dart';
import '../utils/currency_api.dart';

class HomeView extends StatefulWidget {
  // Instanciando controllers
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final currencyController = CurrencyController();
  final currencyApi = CurrencyApi();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: currencyApi.getCurrency(),
        builder: (context, snapshot) {
          // ! Verificar conexão da  API

          switch (snapshot.connectionState) {
            case ConnectionState.none:

            case ConnectionState.waiting:
              return Center(
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Carregando dados...', textScaleFactor: 1.5),
                      CircularProgressIndicator(),
                    ],
                  ),
                ),
              );

            default:
              if (snapshot.hasError) {
                return Center(child: Text('Erro ao carregar dados!'));
              } else {
                //* Recuperar valores da API
                currencyController.dolar =
                    snapshot.data["results"]["currencies"]["USD"]["buy"];
                currencyController.euro =
                    snapshot.data["results"]["currencies"]["EUR"]["buy"];

                return Container(
                  // * MediaQuery
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,

                  child: Padding(
                    padding: const EdgeInsets.only(
                        bottom: 10, left: 25, right: 25, top: 75),
                    child: Column(
                      children: [
                        // Instanciando logo do app
                        CurrencyLogo(),

                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Container(
                            color: Colors.green,
                            padding: EdgeInsets.symmetric(
                                horizontal: 5.0, vertical: 3.0),
                            child: FittedBox(
                              child: Text(
                                'Veja a cotação atual do Dolar e Euro',
                                style: TextStyle(
                                  color: Colors.grey[50],
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ),

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
                );
              }
          }
        },
      ),
    );
  }
}
