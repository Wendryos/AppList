import 'package:flutter/material.dart';

import 'package:applist/list_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Dynamic',
      home: ListScreen(),
    );
  }
}
