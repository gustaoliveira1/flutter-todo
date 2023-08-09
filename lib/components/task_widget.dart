import 'package:flutter/material.dart';

class TaskWidget extends StatelessWidget {
  final String task;
  final void Function(String) callback;

  const TaskWidget({Key? key, required this.task, required this.callback}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[50],
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              task,
              style: const TextStyle(fontSize: 24),
            ),
            IconButton(
              onPressed: () {
                callback(task);
              },
              icon: const Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }

}