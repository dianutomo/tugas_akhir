import 'package:flutter/material.dart';

import 'package:tugas_akhir/to_do.dart';
//import 'package:tugas_akhir/checkbox.dart';

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
        //Mengganti warna kotak checkbox
        unselectedWidgetColor: Colors.white,
      ),
      home: const ToDo(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
