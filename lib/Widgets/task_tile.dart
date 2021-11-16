import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  final bool isChecked;
  final String taskTitle;
  final Function checkCallBack;
  final Function longPressCallBack;

  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkCallBack,
      required this.longPressCallBack});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {
        longPressCallBack();
      },
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (newValue) {
          checkCallBack(newValue);
        },

      ),
    );
  }
}
