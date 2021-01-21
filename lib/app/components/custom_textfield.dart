import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  // Variaveis
  final String currencyIcon;
  final String currencyPrefixName;
  final Function onChanged;

  final TextEditingController controller;

  // Construtor
  CustomTextField({
    this.currencyIcon,
    @required this.currencyPrefixName,
    @required this.onChanged,
    @required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    //
    Widget _iconImg =
        Image.asset(currencyIcon, scale: 2.5, color: Colors.green);

    //
    Widget _prefixIcon = Container(
      alignment: Alignment.centerLeft,
      width: 10,
      height: 10,
      child: Text('BRL'),
    );

    //
    InputDecoration _inputDecoration = InputDecoration(
      icon: _iconImg,
      prefixIcon: _prefixIcon,
    );

    return TextField(
      keyboardType: TextInputType.number,
      controller: controller,
      onChanged: onChanged,
      decoration: _inputDecoration,
    );
  }
}
