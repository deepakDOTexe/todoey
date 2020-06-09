import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:Text(
        'Buy Milk',
        style: TextStyle(
            color: Colors.black54,
            fontSize: 20.0
        ),
      ),
      trailing: Checkbox(
        value: false,
      ),
    );
  }
}