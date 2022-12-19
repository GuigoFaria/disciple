import 'package:flutter/material.dart';
import 'package:projeto_pessoal_gui/pages/form_task.dart';
import 'pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Disciple',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: FormTask(),
    );
  }
}
