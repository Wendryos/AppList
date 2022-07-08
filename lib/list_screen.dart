import 'dart:math';

import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  List<String> todos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Dynamic'),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: ListView.separated(
        separatorBuilder: (BuildContext context, index) =>
            const Divider(color: Colors.deepPurple),
        itemCount: todos.length,
        itemBuilder: (BuildContext context, index) {
          return ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.deepPurple,
              child: IconTheme(
                data: IconThemeData(color: Colors.white),
                child: Icon(Icons.boy_rounded),
              ),
            ),
            title: Text(
              todos[index],
              style: const TextStyle(color: Colors.deepPurple),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        onPressed: _addTodo,
        child: const Icon(Icons.add),
      ),
    );
  }

  void _addTodo() {
    setState(() {
      int randomNumber = Random().nextInt(100);
      todos.add("Task $randomNumber");
    });
  }
}
