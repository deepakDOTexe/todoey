import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:Text(
        'Buy Milk',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
          color: Colors.black54,
          fontSize: 20.0
        ),
      ),
      trailing: TaskCheckBox(
        checkBoxState: isChecked,
        toggleCheckboxState: (newValue){
          setState(() {
            isChecked = newValue;
          });
        },
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {

  final bool checkBoxState;
  final Function toggleCheckboxState;
  TaskCheckBox({this.checkBoxState, this.toggleCheckboxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkBoxState,
      onChanged:toggleCheckboxState,
    );
  }
}
