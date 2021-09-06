import 'package:flutter/material.dart';
import 'package:todo_app/task/Task.dart';

class TaskDate extends ChangeNotifier {
  List<Task> tasks = [
    Task(text: 'complete flutter Project', time: '5:15:'),
    Task(text: 'Reading The Book', time: '4:15'),
  ];
  int get taskCount {
    return tasks.length;
  }

  void addTask(String newTask) {
    notifyListeners();
  }
}
