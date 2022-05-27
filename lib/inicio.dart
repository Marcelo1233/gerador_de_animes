import 'package:flutter/material.dart';
import 'package:gerador_de_animes/lista_animes.dart';
void main() => runApp(Inicio());

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'inicio',
      home: Scaffold(
        body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Seja bem vindo',style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 32),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
                    Navigator.push(
                      context,
                       MaterialPageRoute(
                         builder: (context) => ListaAnimes(),
                    ),
                    );
                  },
        child: const Icon(Icons.arrow_right_alt),
      ), 
      ),
    );
  }
}