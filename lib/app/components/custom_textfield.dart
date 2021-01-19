import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  // Variaveis
  final String name;
  final String image;

  // Construtor
  CustomTextField({
    this.image,
    @required this.name,
  });

  // ! Add Icon com imagem
  // ! Add um Hint ou não
  // !

  @override
  Widget build(BuildContext context) {
    //
    Widget _iconImg =
        Image.asset("assets/images/real.png", scale: 2.5, color: Colors.green);

    return Container(
      color: Colors.amber,
      //padding: const EdgeInsets.all(4.0),
      child: TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          icon: _iconImg,
          labelText: name,
        ),
      ),
    );
  }
}
