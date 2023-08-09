import 'package:flutter/material.dart';
import 'package:todo_list/components/task_input.dart';

import 'task_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _tasks = [];

  void _onSumit(String task) {
    setState(() {
      _tasks.add(task);
    });
  }

  void _onDelete(String task) {
    setState(() {
      _tasks.remove(task);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lista de tarefas"),),
      body: Column(
        children: [
          TaskInput(callback: _onSumit),
          TaskList(tasks: _tasks, onDelete: _onDelete),
        ],
      ),   
    );
  }
}