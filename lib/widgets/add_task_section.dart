import 'package:flutter/material.dart';

class AddTaskSection extends StatelessWidget {
  final void Function() addTask;
  const AddTaskSection({
    super.key,
    required this.taskController,
    required this.addTask,
  });

  final TextEditingController taskController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: .all(8),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                controller: taskController,
                decoration: InputDecoration(
                  hint: Text(
                    'Add a new task...',
                    style: TextStyle(fontSize: 20),
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          CircleAvatar(
            backgroundColor: Color(0xffDEE4E2),
            radius: 32,
            child: IconButton(
              onPressed: addTask,
              icon: Icon(Icons.add, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
