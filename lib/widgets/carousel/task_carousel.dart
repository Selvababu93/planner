import 'package:flutter/material.dart';
import 'package:todoist/models/task.dart';
import 'package:todoist/widgets/task_card.dart';

class TaskCarousel extends StatefulWidget {
  const TaskCarousel({super.key, required this.tasks});

  final List<Task> tasks;

  @override
  State<TaskCarousel> createState() => _TaskCarouselState();
}

class _TaskCarouselState extends State<TaskCarousel> {
  // 0.8 means the center card takes 80% of the width
  final PageController _pageController = PageController(viewportFraction: 0.5);
  double _currentPage = 0.0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180, // Set based on your card design
      child: PageView.builder(
        controller: _pageController,
        itemCount: widget.tasks.length,
        itemBuilder: (context, index) {
          // Calculate relative position (0.0 when centered)
          double value = (_currentPage - index).abs();

          // Height scale: 1.0 when centered, 0.8 when on sides
          double heightScale = (1 - value * 0.2).clamp(0.8, 1.0);

          // Width scale: 1.0 when centered, 0.9 when on sides (less zoom out)
          double widthScale = (1 - value * 0.1).clamp(0.9, 1.0);

          return Transform(
            transform: Matrix4.diagonal3Values(widthScale, heightScale, 1.0),
            alignment: Alignment.center,
            child: TaskCard(
              task: widget.tasks[index],
            ),
          );
        },
      ),
    );
  }
}
