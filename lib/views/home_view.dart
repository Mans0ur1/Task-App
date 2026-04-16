import 'package:flutter/material.dart';
import 'package:task_app/models/task_management.dart';
import 'package:task_app/models/task_model.dart';
import 'package:task_app/widgets/add_task_section.dart';
import 'package:task_app/widgets/tasks_section.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController taskController = TextEditingController();
  TaskManagement taskManagement = TaskManagement(tasks: []);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 88,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('My Tasks'),
            SizedBox(height: 4),
            Text(
              'Stay focused and keep moving',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFF6D8B84),
              ),
            ),
          ],
        ),
      ),
      extendBody: true,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFDDF4EE), Color(0xFFF4F7F5), Color(0xFFF8FBFA)],
          ),
        ),
        child: SafeArea(
          top: false,
          child: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: TasksSection(taskManagement: taskManagement),
          ),
        ),
      ),
      bottomSheet: AddTaskSection(
        taskController: taskController,
        addTask: () {
          if (taskController.text.trim().isEmpty) return;

          setState(() {
            taskManagement.addTask(
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
