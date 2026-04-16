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
    return Material(
      color: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 14, 16, 22),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.96),
          borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
          boxShadow: const [
            BoxShadow(
              color: Color(0x1A000000),
              blurRadius: 24,
              offset: Offset(0, -8),
            ),
          ],
        ),
        child: SafeArea(
          top: false,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF1F5F3),
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(color: const Color(0xFFD6E5DF)),
                  ),
                  child: TextField(
                    controller: taskController,
                    decoration: const InputDecoration(
                      hintText: 'Add a new task...',
                      hintStyle: TextStyle(
                        fontSize: 17,
                        color: Color(0xFF88A19B),
                        fontWeight: FontWeight.w500,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF1F8A70), Color(0xFF35B497)],
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x3321A587),
                      blurRadius: 18,
                      offset: Offset(0, 8),
                    ),
                  ],
                ),
                child: IconButton(
                  onPressed: addTask,
                  icon: const Icon(
                    Icons.add_rounded,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
