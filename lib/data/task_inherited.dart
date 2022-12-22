import 'package:flutter/material.dart';
import 'package:projeto_pessoal_gui/components/task.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  final List<Task> taskList = [];
  void addNewTask(Task task) {
    taskList.add(task);
  }

  void removeTask(Task task) {
    taskList.remove(task);
  }

  void updateTask(Task newTask, int index) {
    taskList.removeAt(index);
    taskList.add(newTask);
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result = context.dependOnInheritedWidgetOfExactType();
    assert(result != null, 'No TaskInherited found for context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
