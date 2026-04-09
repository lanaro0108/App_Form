//página de contato

import 'package:flutter/material.dart';
import 'package:intro_interacao/widgets/bnb.dart';

class ContatoPage extends StatefulWidget {
  const ContatoPage({super.key});

  @override
  State<ContatoPage> createState() => _ContatoPageState();
}

class _ContatoPageState extends State<ContatoPage> {
  // Atributos
  // TextEditingController
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _telefoneController = TextEditingController();
  final TextEditingController _mensagemController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contatos"), centerTitle: true),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Não usar o Form
              // Nome, Email, Telefone e Mensagem
              // Sem form não existe validator
              TextField(
                controller: _nomeController,
                decoration: InputDecoration(labelText: "Nome..."),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: "Email...",
                  hintText: "nome@email.com",
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _telefoneController,
                decoration: InputDecoration(
                  labelText: "Telefone...",
                  hintText: "(xx) xxxxx-xxxx",
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _mensagemController,
                decoration: InputDecoration(labelText: "Mensagem..."),
                maxLines: 5, // Limite de linhas
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => _enviarMensagem(),
                child: Text("Enviar Mensagem"),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Bnb(context),
    );
  }

  void _enviarMensagem() {
    // Exibir diálogo de confirmação
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Confirmação de envio"),
        content: ListBody(
          children: [
            Text("Deseja enviar a mensagem?"),
            SizedBox(height: 20),
            Text("Nome: ${_nomeController.text}"),
            Text("Email: ${_emailController.text}"),
            Text("Telefone: ${_telefoneController.text}"),
            Text("Mensagem: ${_mensagemController.text}"),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Cancelar"),
          ),
          ElevatedButton(
            onPressed: () {
              _nomeController.clear();
              _emailController.clear();
              _telefoneController.clear();
              _mensagemController.clear();
              Navigator.pop(context);
            },
            child: Text("Enviar"),
          ),
        ],
      ),
    );
  }
}
