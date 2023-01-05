import 'package:flutter/material.dart';
import 'package:projeto_pessoal_gui/components/task.dart';
import 'package:projeto_pessoal_gui/data/tasks_service.dart';

import 'package:projeto_pessoal_gui/pages/form_task.dart';

class Home extends StatefulWidget {
  late List<Task> newListTask;
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Task> listTask = [];
  TasksService service = TasksService();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Disciple',
        ),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: service.getFutureList(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Task> newListTask = snapshot.data as List<Task>;
            listTask = newListTask;
            return ListView(children: listTask);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      // child: ,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (newContext) => FormTask(
                      taskContext: context,
                    )),
          ).then((value) => {
                setState(
                  () => {},
                ),
              });
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.cyan,
      ),
    );
  }
}
