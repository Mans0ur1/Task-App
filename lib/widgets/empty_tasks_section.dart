import 'package:flutter/material.dart';

class EmptyTasksSection extends StatelessWidget {
  const EmptyTasksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.task_alt, color: Color(0xffADD0CC), size: 90),
          Text(
            'No task yet',
            style: TextStyle(fontSize: 25, color: Color(0xff818785)),
          ),
          Text(
            'Add a task to get started',
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
