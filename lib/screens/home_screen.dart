import 'package:flutter/material.dart';
import 'package:to_do_app/screens/todo_list_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo List"),
      ),
      body: TodoListScreen(),
    );
  }
}
