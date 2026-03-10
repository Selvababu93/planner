import 'package:flutter/material.dart';
import 'package:todoist/widgets/carousel/task_carousel.dart';
import 'package:todoist/widgets/scroll/singlechild_scroll.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            Text(
              "Welcome to Notes",
              style: Theme.of(
                context,
              ).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.w500),
            ),
            Text(
              "Great nice day for managing task",
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/profile.png'),
          ),
        ],
      ),

      drawer: Drawer(),

      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 30),
            child: TaskCarousel(),
          ),
        ],
      ),
    );
  }
}
