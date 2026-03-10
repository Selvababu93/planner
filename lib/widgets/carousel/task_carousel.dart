import 'package:flutter/material.dart';
import 'package:todoist/widgets/task_card.dart';

class TaskCarousel extends StatefulWidget {
  const TaskCarousel({super.key});

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
        itemCount: 3,
        itemBuilder: (context, index) {
          // 1. Lower multiplier (0.05) makes the transition smoother
          // 2. Higher clamp (0.95) makes side cards larger/less "zoomed out"
          double scale = (1 - (_currentPage - index).abs() * 0.05).clamp(0.95, 1.0);
          return Transform.scale(
            scale: scale,
            child: TaskCard(
              // color: index == 1 ? Colors.redAccent : Colors.tealAccent,
              // title: index == 1 ? "Mobile App Design" : "Website Design",
            ),
          );
        },
      ),
    );
  }
}
