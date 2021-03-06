import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:todoeyflutter/widgets/add_task_screen.dart';
import 'package:todoeyflutter/widgets/tasks_list.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => AddTaskScreen());
        }
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 60.0, bottom: 30.0, left: 30.0, right: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                        Icons.list,
                        size: 30.0,
                      ),
                    radius: 30.0,
                  ),
                  SizedBox(height: 10.0,),
                  Text('Todoey',
                    style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                    ),
                  ),
                  Text('12 Tasks',
                  style: TextStyle(color: Colors.white,
                  fontSize: 20.0),),
                ],
              )),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TasksList(),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}




