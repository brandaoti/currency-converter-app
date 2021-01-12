import 'package:flutter/material.dart';

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
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text('Conversor de moedas'),
        ),
      ),
    );
  }
}
