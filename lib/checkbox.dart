import 'package:flutter/material.dart';

import 'package:tugas_akhir/checkbox_state.dart';

class TestCheckList extends StatefulWidget {
  const TestCheckList({Key? key}) : super(key: key);

  @override
  State<TestCheckList> createState() => _TestCheckListState();
}

class _TestCheckListState extends State<TestCheckList> {
  //bool value = false;

  final notifications = [
    CheckBoxState(title: 'Check1'),
    CheckBoxState(title: 'Check2'),
    CheckBoxState(title: 'Check3'),
    CheckBoxState(title: 'Check4'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Test Checklist',
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          ...notifications.map(buildSingleCheckBox).toList(),
        ],
      ),
    );
  }

  Widget buildSingleCheckBox(CheckBoxState checkbox) => CheckboxListTile(
        // untuk memindahkan checkbox dari belakang ke depan
        controlAffinity: ListTileControlAffinity.leading,
        //Warna checkbox
        activeColor: Colors.blue,
        value: checkbox.value,
        title: Text(
          checkbox.title,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        onChanged: (value) {
          setState(() {
            checkbox.value = value!;
          });
        },
      );
}
