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

  // ! Add um Hint ou não
  // !

  @override
  Widget build(BuildContext context) {
    //
    Widget _iconImg = Image.asset(image, scale: 2.5, color: Colors.green);

    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        icon: _iconImg,
        labelText: name,
      ),
    );
  }
}
