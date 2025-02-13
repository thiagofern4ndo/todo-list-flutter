import 'package:first_app/pages/tasks_listpage.dart';
import 'package:flutter/material.dart';


void main () {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

@override
Widget build (BuildContext context) {
  return MaterialApp(
    title: 'Todo List',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.indigo, 
    ),
    home: const TasksListPage(),
  );
 }
}