import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/screen/task_brain.dart';
import 'package:todo_app/screen/addTaskscreen.dart';

class TodoApp extends StatefulWidget {
  @override
  _TodoAppState createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {

  bool checkbox = false;

  @override
  Widget build(buildContext) {
    return Scaffold(
      floatingActionButton:FloatingActionButton(
          child: Icon(Icons.add),
           onPressed: () {
    showModalBottomSheet(context:buildContext,
    builder: (context)=>AddTaskScreen(),
    );
    },),
      backgroundColor: Colors.lightBlue,
      body: SafeArea(
        child: Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
              Container(
                margin: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Todo List",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 40.0,
                      child: Icon(Icons.list),
                    ),
                    Text(
                      '${Provider.of<TaskDate>(context).taskCount} Task',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                  ),
                  child:Consumer<TaskDate>(
                    builder: (context,task,child) {
                      return ListView.builder(
                        itemBuilder: (context, index) {
                          return Card(
                              color: Colors.lightBlue,
                              margin: EdgeInsets.all(10.0),
                              elevation: 6,
                              child: ListTile(
                                title: Text(
                                  task.tasks[index].text,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w900),
                                ),
                                subtitle: Text(
                                  task.tasks[index].time,
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w900),
                                ),
                                trailing: Checkbox(
                                  value: checkbox,
                                  onChanged: (value) {
                                    setState(() {
                                      checkbox;
                                    });
                                  },
                                ),
                              )
                          );
                        },

                        itemCount: task.tasks.length,
                      );
                    },
                  ),
                ),
              )
            ])),
      ),
    );
  }
}
