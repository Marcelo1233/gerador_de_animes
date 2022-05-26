import 'package:flutter/material.dart';
import 'package:gerador_de_animes/inicio.dart';
import 'package:gerador_de_animes/gerador.dart';

Map<int, Color> color = {
  50: Colors.white,
  100: Colors.white,
  200: Colors.white,
  300: Colors.white,
  400: Colors.white,
  500: Colors.white,
  600: Colors.white,
  700: Colors.white,
  800: Colors.white,
  900: Colors.white,
};

MaterialColor colorCustom = MaterialColor(0xFFFFFFFF, color);

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: colorCustom),
      debugShowCheckedModeBanner: false,
      initialRoute: '/inicio',
      routes: {
        '/inicio': (context) =>  Inicio(),
        '/gerador': (context) =>  Gerador(),
      },
    );
  }
}
