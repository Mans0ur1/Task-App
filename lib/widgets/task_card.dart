import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:task_app/models/task_model.dart';

class TaskCard extends StatefulWidget {
  final void Function()? deletedTask;
  final List<TaskModel> tasks;
  final int index;

  const TaskCard({
    super.key,
    required this.tasks,
    required this.index,
    required this.deletedTask,
  });

  @override
  State<TaskCard> createState() => _TaskCardState();
}
class _TaskCardState extends State<TaskCard> {
  @override
  Widget build(BuildContext context) {
    final task = widget.tasks[widget.index];

    return AnimatedContainer(
      duration: const Duration(milliseconds: 220),
      decoration: BoxDecoration(
        color: task.isCompleted ? const Color(0xFFE5F5EF) : Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: task.isCompleted
              ? const Color(0xFFB6DDD2)
              : const Color(0xFFE1EBE7),
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0x12000000),
            blurRadius: 18,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        leading: IconButton(
          style: IconButton.styleFrom(
            backgroundColor: task.isCompleted
                ? const Color(0xFF1F8A70)
                : const Color(0xFFF3F7F5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          icon: task.isCompleted
              ? const Icon(Icons.check_rounded, color: Colors.white)
              : const Icon(Icons.check_box_outline_blank_rounded),
          onPressed: () {
            setState(() {
              task.isCompleted = !task.isCompleted;
            });
          },
        ),
        title: Text(
          task.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: const Color(0xFF1B3D37),
            decoration:
                task.isCompleted ? TextDecoration.lineThrough : TextDecoration.none,
            decorationThickness: 2,
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Row(
            children: [
              const Icon(
                Icons.schedule_rounded,
                size: 16,
                color: Color(0xFF7B928C),
              ),
              const SizedBox(width: 6),
              Text(
                DateFormat('MMM dd, yyyy').format(task.startDate),
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF7B928C),
                ),
              ),
            ],
          ),
        ),
        trailing: IconButton(
          style: IconButton.styleFrom(
            backgroundColor: const Color(0xFFFFF1F1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          icon: const Icon(
            Icons.delete_outline_rounded,
            color: Color(0xFFD95C5C),
          ),
          onPressed: widget.deletedTask,
        ),
      ),
    );
  }
}
