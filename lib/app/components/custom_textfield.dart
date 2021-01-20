import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  // Variaveis
  final String currencyIcon;
  final String currencyPrefixName;

  // Construtor
  CustomTextField({
    this.currencyIcon,
    @required this.currencyPrefixName,
  });

  // ! Add um Hint ou não
  // !

  @override
  Widget build(BuildContext context) {
    //
    Widget _iconImg =
        Image.asset(currencyIcon, scale: 2.5, color: Colors.green);

    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        icon: _iconImg,
        labelText: currencyPrefixName,
      ),
    );
  }
}
