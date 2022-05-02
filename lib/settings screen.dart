// ignore_for_file: file_names, use_key_in_widget_constructors, camel_case_types, avoid_print

import 'package:flutter/material.dart';
import 'Data.dart' as creat;
import 'base.dart';

class sett extends StatefulWidget {
  @override
  _settState createState() => _settState();
}

class _settState extends State<sett> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          "Settings",
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
      ),
      body: Card(
        color: Colors.white,
        shadowColor: Colors.green,
        child: ListTile(
          title: const Text(
            "Delete All Lists",
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          leading: const Icon(
            Icons.highlight_remove,
            color: Colors.black,
          ),
          onTap: () {
            print("Reset To-Do List");
            setState(() {
              creat.l.clear();
            });
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => const MyFirstApp()));
          },
        ),
      ),
    );
  }
}
