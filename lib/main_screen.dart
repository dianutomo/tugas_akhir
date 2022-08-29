import 'package:flutter/material.dart';

import 'package:tugas_akhir/to_do.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final List<Widget> myList = [
    TextButton(
      onPressed: () {},
      child: const Text(
        'Tasks',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
    ),
    Container(
      height: 300,
      width: 200,
      color: Colors.amber,
    ),
    Container(
      height: 300,
      width: 200,
      color: Colors.green,
    ),
    Container(
      height: 300,
      width: 200,
      color: Colors.blue,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('TUGAS AKHIR: To Do List'),
          backgroundColor: Colors.amber,
        ),
        body: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const ToDo();
            }));
          },
          child: Card(
            child: Row(
              children: const [
                Text(
                  'TASK',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
