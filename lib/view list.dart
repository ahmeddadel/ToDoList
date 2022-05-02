// ignore_for_file: use_key_in_widget_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'Data.dart' as creat;

class v extends StatelessWidget {
  int y = creat.x + 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(children: [
              Text(
                "Name: " + creat.l[y].name,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                ),
              ),
            ]),
            Row(children: [
              Text(
                "Date: " + creat.l[y].date + "/2021",
                style: const TextStyle(fontSize: 18, color: Colors.black87),
              ),
            ]),
            Row(children: [
              Text(
                "Note: " + creat.l[y].note,
                style: const TextStyle(fontSize: 18, color: Colors.black87),
              ),
            ]),
            Row(children: [
              Text(
                "Number of Tasks: " + creat.l[y].num.toString(),
                style: const TextStyle(fontSize: 18, color: Colors.black87),
              ),
            ]),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          "List ${y + 1}",
          style: const TextStyle(fontSize: 20),
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}
