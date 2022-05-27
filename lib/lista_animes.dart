import 'package:flutter/material.dart';
import 'package:gerador_de_animes/gerador.dart';

class ListaAnimes extends StatefulWidget {
  const ListaAnimes({Key? key}) : super(key: key);

  @override
  _ListaAnimesState createState() => _ListaAnimesState();
}

class _ListaAnimesState extends State<ListaAnimes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(child: Text("Gerador de Animes",
        style: TextStyle( fontSize: 18)),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      //2appbar
      body: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Center(
            child: Text("Escolha um gênero",
                style: TextStyle(color: Colors.black, fontSize: 24)),
          ),
          elevation: 0,
          automaticallyImplyLeading: false,
        ),
        body: ListView(
            children: [
              Column(
                children: [
              const SizedBox(
                height: 10,
              ),
              
              ElevatedButton(
                  child: const Text(
                    'Harem',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  onPressed: () { Navigator.push(
                      context,
                       MaterialPageRoute(
                         builder: (context) => Gerador(),
                    ),
                    );},
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 222, 236, 231),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 140, vertical: 30,),
                  )),
              //botao
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  child: const Text(
                    'Comédia',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 222, 236, 231),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 131, vertical: 30,),
                  )),
              //botao
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  child: const Text(
                    'Isekai',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary:const Color.fromARGB(255, 222, 236, 231),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 140, vertical: 30),
                  )),
              //botao
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  child: const Text(
                    'Hentai',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 222, 236, 231),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 140, vertical: 30),
                  )),
              //botaO
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  child: const Text(
                    'Iyashikei',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 222, 236, 231),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 140, vertical: 30),
                  )),
                  const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  child: const Text(
                    'Terror',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 222, 236, 231),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 140, vertical: 30),
                  )),
              //botao
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  child: const Text(
                    'Ação',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 222, 236, 231),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 140, vertical: 30),
                  )),
              //bt
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  child: const Text(
                    'Romançe',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 222, 236, 231),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 140, vertical: 30),
                  )),
              //jgyf
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  child: const Text(
                    'Shonen',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 222, 236, 231),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 140, vertical: 30),
                  )),
            ],
          ),
            ], 
        ),
        ),
      
    );
  }
}
