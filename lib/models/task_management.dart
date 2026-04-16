import 'package:task_app/models/task_model.dart';

class TaskManagement {
  final List<TaskModel> tasks;

  TaskManagement({required this.tasks});
  void addTask(TaskModel task) {
    tasks.add(task);
  }

  void deletedTask(TaskModel task) {
    tasks.remove(task);
  }

  bool get isEmpty => tasks.isEmpty;
  int get taskCount => tasks.length;
}
