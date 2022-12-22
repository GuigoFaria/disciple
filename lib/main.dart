import 'package:flutter/material.dart';

import 'data/task_inherited.dart';
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
      home: TaskInherited(
        child: Home(),
      ),
    );
  }
}
