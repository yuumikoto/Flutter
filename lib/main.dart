import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  )); //Metodo que vai inflar nosso app(executar)
} //um Widget que já vem com bastante coisas de configurações prontas.

class HomePage extends StatelessWidget {
  //Classe StatelessWidget (Sem Estado)
  @override
  Widget build(BuildContext context) {
    //método que irá "Buildar" toda nossa view
    //passando o context (ajuda a indentificar nossa arvore) e retornando um Widget.
    return Scaffold(
      //esqueleto do app, sempre interessante ter 1 em cada Page
      //appBar: AppBar(), //Widget do proprio flutter para a AppBar
      backgroundColor: Colors.black,
      body: Center(
        //Widget para centralizar dentro do espaço disponivel
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Oi, where are you?',
              style: TextStyle(color: Colors.white),
            ),
            const Text(
              'Grindania, crafting stuff... come here',
              style: TextStyle(color: Colors.white),
            ),
            Image.network(
              'https://img2.finalfantasyxiv.com/accimg/e4/6f/e46f80bd9726cd69048203027f8fda11b81190a2.jpg',
              height: 500,
              // width: 500,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                print('Fui clicado');
              },
              child: const Text('Log In'),
            ),
            const Text(
              'New Grindania',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ), //Widget para mostrar um texto na tela
      ),
    );
  }
}
