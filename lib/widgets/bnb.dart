//widget de navegação inferior

import 'package:flutter/material.dart';

Widget Bnb(BuildContext context) {
  List<String> rotas = ["/", "/contato", "/form"];
  int currentIndex = 0;
  return BottomNavigationBar(
    items: [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.phone), label: "Contato"),
      BottomNavigationBarItem(icon: Icon(Icons.assignment),label: "Formulário",),
    ],
    currentIndex: currentIndex,
    onTap: (index) {
      currentIndex = index;
      // Navegação
      Navigator.pushNamed(context, rotas[index]);
    },
  );
}
