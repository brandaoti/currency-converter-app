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
    // Widget _iconImg = Image.asset(
    //   currencyIcon,
    //   scale: 2.5,
    //   color: Colors.greenAccent,
    // );

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
      prefixIcon: _prefixIcon,
    );

    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: [
          //
          Image.asset(
            currencyIcon,
            scale: 2.5,
            color: Colors.greenAccent,
          ),

          SizedBox(width: 20),

          //
          Container(
            width: 280,
            child: TextField(
              keyboardType: TextInputType.number,
              controller: controller,
              onChanged: onChanged,
              decoration: _inputDecoration,
            ),
          ),
        ],
      ),
    );
  }
}
