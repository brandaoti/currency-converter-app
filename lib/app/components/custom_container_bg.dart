import 'package:flutter/material.dart';

// ! Criando um Gradient para usar como background do app
class CustomContainerBG extends StatelessWidget {
  //
  final Widget child;
  final double height;
  final double width;

  const CustomContainerBG({
    this.height,
    this.width,
    @required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
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
