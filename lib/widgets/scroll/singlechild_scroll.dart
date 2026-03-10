import 'package:flutter/material.dart';

class TaskScroll extends StatelessWidget {
  const TaskScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200, // Important: ListView needs a height in a horizontal layout
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5, // Number of cards
        itemBuilder: (context, index) {
          return SizedBox(
            width: 250, // Fixed width for each task card
            child: Card(
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Icon(Icons.mobile_friendly), Icon(Icons.more_time_outlined)],
                    ),
                    const Text('Title', style: TextStyle(fontWeight: FontWeight.bold)),
                    const Text("Description"),
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
            ),
          );
        },
      ),
    );
  }
}
