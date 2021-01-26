import 'package:flutter/material.dart';

// ! Criando um Gradient para usar como background do app
class CustomContainer extends StatelessWidget {
  //
  final Widget child;

  const CustomContainer({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.red,
            Colors.blue,
            Colors.green,
          ],
        ),
      ),
      child: child,
    );
  }
}
