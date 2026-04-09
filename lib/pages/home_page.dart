//tela inicial
// vai ter botões de navegação para outras telas

import 'package:flutter/material.dart';
import 'package:intro_interacao/widgets/bnb.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Meu Aplicativo Interativo")),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Center(
          //centraliza elementos na horizontal
          child: Column(
            //alinhamento do eixo vertical
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo do aplicativo
              Image.network(
                "https://i.pinimg.com/736x/b5/74/04/b574045f483218530f7f284802a03ec7.jpg",
                width: 150,
                height: 150,
              ),
              //bloco de espaçamento
              SizedBox(height: 20),
              //botoes de navegação
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, "/form"),
                child: Text("Responder Formulário"),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, "/contato"),
                child: Text("Entre em Contato"),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Bnb(context),

    );
  }
}
