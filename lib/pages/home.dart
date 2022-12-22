import 'package:flutter/material.dart';
import 'package:projeto_pessoal_gui/data/task_inherited.dart';

import 'package:projeto_pessoal_gui/pages/form_task.dart';

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Disciple',
        ),
        centerTitle: true,
      ),
      body: ListView(children: TaskInherited.of(context).taskList),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (newContext) => FormTask(
                      taskContext: context,
                    )),
          );
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.cyan,
      ),
    );
  }
}
