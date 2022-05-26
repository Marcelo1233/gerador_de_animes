import 'package:flutter/material.dart';
import 'package:gerador_de_animes/gerador.dart';
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
          children:  <Widget>[
            const Text(
              'Seja bem vindo',style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 32),
            ),
            const SizedBox(
                height: 20,),
            ElevatedButton(
                  child: const Text(
                    'Continuar',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                       MaterialPageRoute(
                         builder: (context) => Gerador(),
                    ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary:const Color.fromARGB(255, 9, 103, 245),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 80, vertical: 10),
                  )),
          ],
        ),
      ),
      ),
    );
  }
}