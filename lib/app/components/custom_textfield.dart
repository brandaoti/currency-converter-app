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
      height: 20,
      width: 20,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(shape: BoxShape.circle),
      child: Text(currencyPrefixName),
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