import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  // Variaveis
  final String currencyIcon;
  final String currencyPrefixText;
  final Function onChanged;

  final TextEditingController controller;

  // Construtor
  CustomTextField({
    this.currencyIcon,
    @required this.currencyPrefixText,
    @required this.onChanged,
    @required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    //
    Widget _iconImg =
        Image.asset(currencyIcon, scale: 2.5, color: Colors.green);

    return TextField(
      keyboardType: TextInputType.number,
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        icon: _iconImg,
        prefixText: currencyPrefixText,
      ),
    );
  }
}
