import 'package:flutter/material.dart';
import 'package:task_app/models/task_model.dart';
import 'package:task_app/widgets/add_task_section.dart';
import 'package:task_app/widgets/empty_tasks_section.dart';
import 'package:task_app/widgets/tasks_section.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<TaskModel> tasks = [];
  TextEditingController taskController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff9EF2E3),
        title: Text('My Task', style: TextStyle(fontWeight: .bold)),
      ),
      body: tasks.isEmpty
          ? EmptyTasksSection()
          : TasksSection(
              tasks: tasks,
              deleteTask: (index) {
                setState(() {
                  tasks.removeAt(index);
                });
              },
              makeTaskCompleted: (index) {
                setState(() {
                  tasks[index].isCompleted = !tasks[index].isCompleted;
                });
              },
            ),
      bottomSheet: AddTaskSection(
        taskController: taskController,
        addTask: () {
          if (taskController.text.trim().isEmpty) return;

          setState(() {
            tasks.add(
              TaskModel(
                title: taskController.text,
                startDate: DateTime.now(),
                isCompleted: false,
              ),
            );
            taskController.clear();
            FocusScope.of(context).unfocus();
          });
        },
      ),
    );
  }
}
