import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

final formatter = Uuid();

enum Status { created, paused, completed, running }

enum Category { newRequest, breakDown, planned, proActive }

final categoryColors = {
  Category.newRequest: Color(0xFF4EF3A4),
  Category.breakDown: Color(0xFFF34E4E),
  Category.planned: Colors.blue,
  Category.proActive: Colors.amber,
};

class Task {
  Task({
    required this.tittle,
    required this.description,
    required this.category,
    required this.status,
  }) : id = formatter.v4(),
       created = DateTime.now();
  final String id;
  final String tittle;
  final String description;
  final Category category;
  final DateTime created;
  final Status status;
}
