import 'package:flutter/material.dart';

class EmptyTasksSection extends StatelessWidget {
  const EmptyTasksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 32),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.82),
          borderRadius: BorderRadius.circular(28),
          boxShadow: const [
            BoxShadow(
              color: Color(0x12000000),
              blurRadius: 20,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.task_alt_rounded, color: Color(0xFF8BC7B8), size: 88),
            SizedBox(height: 18),
            Text(
              'No tasks yet',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w800,
                color: Color(0xFF3B5952),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Your next goal starts with a single task.\nAdd one below to get going.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
                color: Color(0xFF7D918B),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
