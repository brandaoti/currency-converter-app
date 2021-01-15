import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  // * link com imagem provisoria
  final String img =
      "https://imagensemoldes.com.br/wp-content/uploads/2020/04/money-png.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network(
            img,
          ),
        ],
      ),
    );
  }
}
