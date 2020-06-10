import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.only(top: 50.0, left: 30.0, right: 30.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(20.0), topLeft: Radius.circular(20.0))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 24.0
              ),
            ),
            SizedBox(height: 20.0,),
            TextField(
              autofocus: true,
              decoration: InputDecoration(),
            ),
            SizedBox(height: 20.0,),
            FlatButton(
              onPressed: (){},
              color: Colors.lightBlueAccent,
              disabledColor: Colors.lightBlueAccent,
              padding: EdgeInsets.all(10.0),
              child: Text('Add', style: TextStyle(color: Colors.white,
                  fontWeight: FontWeight.w300, fontSize: 20.0), ),
            ),
          ],
        ),
      ),
    );
  }
}
