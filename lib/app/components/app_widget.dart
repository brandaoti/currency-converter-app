import 'package:flutter/material.dart';

import '../routes/app_routes.dart';
import '../views/home_view.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //  Estrutura do Material
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Conversor de moedas',
      theme: ThemeData(
        accentColor: Colors.yellow,
        brightness: Brightness.dark,
      ),

      // home: HomeView(),
      routes: {
        AppRoutes.HOME: (ctx) => HomeView(),
      },
    );
  }
}
