

import 'dart:math';

import 'package:flutter/material.dart';

class Gerador extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Gerador> {
  var _animes = [
    "Konosuba: Após uma morte prematura e embaraçosa, Kazuma Satō, um adolescente japonês hikikomori e NEET, conhece uma deusa chamada Aqua, que se oferece para reencarnar-lo em um mundo paralelo com elementos de MMORPG controlado por um rei demoníaco, onde ele pode viver aventuras e batalha contra monstros.",
    "Plunderer: Em um mundo pós-apocalíptico, os humanos já nascem com um contador em seus braços que, quando chega ao zero, os envia para um abismo infinito. Hina sofreu com a terrível morte de sua mãe pelo abismo e prometeu cumprir sua promessa: encontrar um famoso herói de guerra, conhecido como Barão Vermelho.",
    "Kakegurui: Hyaka Academy é um instituto para desenvolvimento das habilidades de jogos de azar. Yumeko é uma nova aluna que chega com um apetite voraz e pronta para ganhar tudo.",
    "Horimiya:  Embora admirada na escola por sua bondade e habilidade acadêmica, a estudante Kyouko Hori esconde outro lado dela. Com os pais muitas vezes longe de casa devido ao trabalho, Hori tem que cuidar do irmão mais novo e fazer as tarefas domésticas, sem ter tempo para socializar fora da escola.",
    "Mirai Nikki: Yukiteru é um garoto de 14 anos que poderia ser considerado estranho. Com dificuldade para fazer amigos, para ele a vida não passa de um grande reality show, onde ele é mais um espectador. Tudo que ele vê, resolve anotar em seu celular, fazendo dele seu diário.",
    "Tokyo revengers: Tokyo Revengers gira em torno de Takemichi Hanagaki, um homem de 26 anos mal sucedido na vida em todos os âmbitos, desde o profissional à relações amorosas. Um certo dia, ao assistir um jornal na TV, Takemichi descobre que sua primeira namorada havia sido morta num incidente que envolvia gangues de Tokyo.",
    "Tokyo Ghoul: Ken Kaneki tenta se proteger no Café Anteiku e se aproximar dos ghouls ao seu redor. Quando o Shu Tsukiyama decide saborear sua carne, porém, todo seu treinamento é posto à prova.",
  ];

  var _fraseGerada = "Clique abaixo para gerar um novo anime!";

  void _gerarAnime() {
    var numeroSorteado = Random().nextInt(_animes.length);

    setState(() {
      _fraseGerada = _animes[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
        child: Text("Gerador de animes",style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),
      ),
      elevation: 1,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/logo.jpeg'),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 17,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
              ElevatedButton(
                child: const Text(
                  "Novo anime",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: _gerarAnime,
                style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 10, 202, 250),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 9),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
