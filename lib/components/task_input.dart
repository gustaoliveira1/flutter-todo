import 'package:flutter/material.dart';

class TaskInput extends StatelessWidget {
  final void Function(String) callback;

  TaskInput({Key? key, required this.callback}) : super(key: key);

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: TextField(controller: controller)),
          IconButton(
            onPressed: () {
              final task = controller.text;
              callback(task);
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}