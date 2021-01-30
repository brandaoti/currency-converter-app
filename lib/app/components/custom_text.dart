import 'package:flutter/material.dart';

// ! Custom Text, vai servir para exibir uma mensagem de informação
// * Caso aja necessidade, pode ser melhorado, passando informações como parametro

class CustomText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Container(
        color: Colors.green,
        padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
        child: FittedBox(
          child: Text(
            'Veja a cotação atual do Dolar e Euro',
            style: TextStyle(
              color: Colors.grey[50],
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
