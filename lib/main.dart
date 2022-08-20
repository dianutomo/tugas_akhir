import 'package:flutter/material.dart';

import 'package:tugas_akhir/to_do.dart';

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
      home: const ToDo(),
    );
  }
}
