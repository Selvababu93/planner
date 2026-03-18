import 'package:flutter/material.dart';
import 'package:todoist/models/task.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({super.key, required this.task});

  final Task task;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      color: categoryColors[task.category],
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Icon(Icons.mobile_friendly), Icon(Icons.more_time_outlined)],
            ),
            Text(task.tittle, style: TextStyle(fontWeight: FontWeight.bold)),
            Text(task.description),
            const Spacer(), // Pushes the progress section to the bottom
            Row(
              children: [
                const Expanded(child: LinearProgressIndicator()),
                const SizedBox(width: 10),
                Stack(children: const [Icon(Icons.person)]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
