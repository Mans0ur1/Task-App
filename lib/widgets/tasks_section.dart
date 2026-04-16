import 'package:flutter/material.dart';
import 'package:task_app/models/task_management.dart';
import 'package:task_app/widgets/empty_tasks_section.dart';
import 'package:task_app/widgets/task_card.dart';

class TasksSection extends StatefulWidget {
  const TasksSection({super.key, required this.taskManagement});
  final TaskManagement taskManagement;

  @override
  State<TasksSection> createState() => _TasksSectionState();
}

class _TasksSectionState extends State<TasksSection> {
  @override
  Widget build(BuildContext context) {
    return widget.taskManagement.isEmpty
        ? const EmptyTasksSection()
        : ListView.separated(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 132),
            itemCount: widget.taskManagement.taskCount,
            itemBuilder: (context, index) {
              return TaskCard(
                tasks: widget.taskManagement.tasks,
                index: index,
                deletedTask: () {
                  setState(() {
                    widget.taskManagement.deletedTask(
                      widget.taskManagement.tasks[index],
                    );
                  });
                },
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(height: 14);
            },
          );
  }
}

