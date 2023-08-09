import 'package:flutter/material.dart';

import 'task_widget.dart';

class TaskList extends StatelessWidget {
  final List<String> tasks;
  final void Function(String) onDelete;

  const TaskList({Key? key, required this.tasks, required this.onDelete}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return Padding(padding: const EdgeInsets.all(12.0),
          child: TaskWidget(task: tasks[index], callback: onDelete),
          );
        },
      ),
    );
  }

}