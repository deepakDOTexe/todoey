import 'package:flutter/material.dart';
import 'package:todoeyflutter/modals/task.dart';
import 'package:todoeyflutter/widgets/task_tile.dart';

class TasksList extends StatefulWidget {

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Buy a Milk'),
    Task(name: 'Buy a Coffee'),
    Task(name: 'Buy a Car'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index){
        return TaskTile(
          isChecked: tasks[index].isDone,
          taskTitle: tasks[index].name,
          checkBoxCallback : (newValue){
            setState((){
              tasks[index].isDone = newValue;
            });
            },
        );
      },
      itemCount: tasks.length,
    );
  }
}