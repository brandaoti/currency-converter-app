import 'package:flutter/material.dart';

import '../views/home_view.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //  Estrutura do Material
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Conversor de moedas',
      theme: ThemeData(
        primaryColor: Colors.green,
        accentColor: Colors.yellow,
        brightness: Brightness.dark,
      ),
      home: HomeView(),
    );
  }
}
