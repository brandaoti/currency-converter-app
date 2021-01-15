import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeView extends StatelessWidget {
  // * link com imagem provisoria
  final String img =
      "https://imagensemoldes.com.br/wp-content/uploads/2020/04/money-png.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        // color: Colors.red,
        child: Padding(
          padding:
              const EdgeInsets.only(bottom: 10, left: 25, right: 25, top: 25),
          child: Column(
            children: [
              // Img
              Image.network(
                img,
                scale: 4,
              ),

              // TextField
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  //hintText: 'Entre com o valor',
                  labelText: 'Real',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              SizedBox(height: 5),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  //hintText: 'Entre com o valor',
                  labelText: 'Dolar',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              SizedBox(height: 5),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  //hintText: 'Entre com o valor',
                  labelText: 'Euro',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
