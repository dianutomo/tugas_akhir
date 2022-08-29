import 'package:flutter/material.dart';

//import 'package:tugas_akhir/to_do.dart';
//import 'package:tugas_akhir/checkbox.dart';
import 'package:tugas_akhir/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To-Do-List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}
