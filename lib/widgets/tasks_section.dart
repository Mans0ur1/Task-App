import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:task_app/models/task_model.dart';

class TasksSection extends StatelessWidget {
  const TasksSection({
    super.key,
    required this.tasks,
    required this.deleteTask,
    required this.makeTaskCompleted,
  });
  final void Function(int) deleteTask;
  final void Function(int) makeTaskCompleted;
  final List<TaskModel> tasks;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 3,
            child: ListTile(
              tileColor: Color(0xffEFF5F3),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              leading: IconButton(
                icon: tasks[index].isCompleted
                    ? Icon(Icons.check_box, color: Color(0xff026A5E))
                    : Icon(Icons.check_box_outline_blank),
                onPressed: () => makeTaskCompleted(index),
              ),
              title: Text(
                tasks[index].title,
                style: TextStyle(
                  decoration: tasks[index].isCompleted
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                ),
              ),
              subtitle: Text(
                DateFormat('yyyy-MM-dd').format(tasks[index].startDate),
              ),
              trailing: IconButton(
                icon: Icon(Icons.delete_outline, color: Colors.red),
                onPressed: () => deleteTask(index),
              ),
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(height: 0);
      },
    );
  }
}
