import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/screen/task_brain.dart';

class AddTaskScreen extends StatelessWidget {
  String? get textFieldText => null;

  @override
  Widget build(context) {
    return Container(
      color: Colors.grey,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30.0),
                topLeft: Radius.circular(30.0))),
        child: Column(
          children: [
            Text(
              'Add Task',
              style: TextStyle(
                color: Colors.lightBlue,
                fontSize: 30.0,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Card(
              elevation: 6,
              color: Colors.grey,
              child: TextField(
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                ),
                decoration: InputDecoration(
                    labelText: 'task',
                    labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w900),
                    hintText: 'New Task',
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    )),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Card(
              color: Colors.lightBlue,
              child: FloatingActionButton(
                  onPressed: () {
                    Provider.of<TaskDate>(context).addTask(textFieldText!);
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Add',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.5,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
