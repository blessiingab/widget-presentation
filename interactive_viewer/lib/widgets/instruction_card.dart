import 'package:flutter/material.dart';

class InstructionCard extends StatelessWidget {
  final IconData icon;
  final String title;

  const InstructionCard({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.blue,
              size: 30,
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(fontSize: 17),
              ),
            )
          ],
        ),
      ),
    );
  }
}