import 'package:flutter/material.dart';
import 'package:projeto_pessoal_gui/components/task.dart';

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Disciple',
        ),
        centerTitle: true,
      ),
      body: ListView(children: [
        Task('Tomar banho', 1),
        Task('Ler a bíblia', 2),
        Task('Estudar guitarra', 3),
        Task('Acordar sem pegar o celular', 4),
        Task('Estudar flutter', 5),
      ]),
    );
  }
}
