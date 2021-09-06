import 'package:flutter/material.dart';
import 'package:todo_app/screen/task_brain.dart';
import 'screen/todo_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: ChangeNotifierProvider
      (create: (BuildContext context)=>TaskDate() ,
    child: TodoApp(),),

    );
  }
}
