import 'package:flutter/material.dart';
import 'package:lesson1/models/todo.dart';
import 'package:lesson1/widgets/todo_list.dart';

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({
    super.key,
  });

  List<Todo>todos=[
    Todo(id: '1', text: 'Shower'),
    Todo(id: '2', text: 'Exercise'),
    Todo(id: '3', text: 'Breakfast'),
    Todo(id: '4', text: 'Work'),
    Todo(id: '5', text: 'Lunch'),
    Todo(id: '6', text: 'Uni'),
    Todo(id: '7', text: 'CS'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey[200],
            title: Text("TodoApp"),
            centerTitle: true,
          ),
          body: ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context,i){
                return TodoTile(todo:todos[i]);
              },
          )
      ),
    );
  }
}