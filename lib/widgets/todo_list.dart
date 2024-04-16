import 'package:flutter/material.dart';
import 'package:lesson1/models/todo.dart';

class TodoTile extends StatelessWidget {
  Todo todo;
  TodoTile({super.key,required this.todo});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:Icon(todo.isDone ? Icons.check_box : Icons.check_box_outline_blank),
      title: Text(todo.text),
      trailing: Icon(Icons.delete),
    );
  }
}
