import 'package:flutter/material.dart';

class HorizontalListExample extends StatelessWidget {
  const HorizontalListExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Horizontal List"),
      ),
      body: SizedBox(
        // Give the ListView a fixed height
        height: 150.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal, // Set to horizontal
          itemCount: 20, // Number of items in the list
          itemBuilder: (context, index) {
            return Container(
              width: 100.0, // Give each item a fixed width
              margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
              color: Colors.blue[100 * (index % 9)],
              child: Center(
                child: Text('Item $index'),
              ),
            );
          },
        ),
      ),
    );
  }
}
