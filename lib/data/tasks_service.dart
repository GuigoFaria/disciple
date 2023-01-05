import 'package:projeto_pessoal_gui/components/task.dart';
import 'package:projeto_pessoal_gui/data/entities/task_entity.dart';
import 'package:projeto_pessoal_gui/data/shared_prefs.dart';

class TasksService {
  SharedPrefs sharedPref = SharedPrefs();

  Future<List<Task>> getFutureList() async {
    try {
      List<dynamic> list = await sharedPref.read('tasks');
      List<TaskEntity> listEntity = [];
      List<Task> taskList = [];
      list.forEach(
        (e) => listEntity.add(TaskEntity.fromJson(e)),
      );
      listEntity.forEach(
        (entity) => taskList.add(
          Task(entity.name, entity.priority),
        ),
      );
      return taskList;
    } catch (Exception) {
      return [];
    }
  }

  Future<dynamic> saveTask(task) async {
    try {
      List<dynamic> list = await sharedPref.read('tasks');
      list.add(task);
      return sharedPref.save('tasks', list);
    } catch (Exception) {
      return sharedPref.save('tasks', [task]);
    }
  }
}
