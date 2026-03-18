import 'package:todoist/models/task.dart';

final List<Task> dummyTasks = [
  Task(
    tittle: 'Camera maintenance',
    description: 'Atlantis trip camera maintenance',
    category: Category.planned,
    status: Status.created,
  ),
  Task(
    tittle: 'New Installation',
    description: 'Qiddiya camera installation',
    category: Category.newRequest,
    status: Status.created,
  ),
  Task(
    tittle: 'Sky views maintenace',
    description: 'slide and glass walk camera installtion',
    category: Category.breakDown,
    status: Status.created,
  ),
  Task(
    tittle: 'Event setup',
    description: 'Harward graduation event',
    category: Category.planned,
    status: Status.created,
  ),
  Task(
    tittle: 'Counter swap',
    description: 'Kidzania kiosk swap',
    category: Category.proActive,
    status: Status.created,
  ),
  Task(
    tittle: 'New joiner Desktop',
    description: 'New jouner workstation setup',
    category: Category.newRequest,
    status: Status.created,
  ),
];
