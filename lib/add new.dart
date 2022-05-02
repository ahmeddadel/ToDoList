// ignore_for_file: use_key_in_widget_constructors, camel_case_types, deprecated_member_use

import 'package:flutter/material.dart';
import 'base.dart';
import 'Data.dart' as creat;

class add extends StatefulWidget {
  @override
  _addState createState() => _addState();
}

class _addState extends State<add> {
  late String _name;
  late String _date;
  late String _note;
  late String _num;

  final nameCon = TextEditingController();
  final dateCon = TextEditingController();
  final noteCon = TextEditingController();
  final numCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          "Add New List",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: nameCon,
                decoration: const InputDecoration(hintText: 'Enter your Name'),
              ),
              TextField(
                controller: dateCon,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(hintText: 'Enter the Date'),
              ),
              TextField(
                controller: noteCon,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(hintText: 'Enter your note'),
              ),
              TextField(
                controller: numCon,
                keyboardType: TextInputType.text,
                decoration:
                    const InputDecoration(hintText: 'Enter number of Tasks'),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    _name = nameCon.text;
                    _date = dateCon.text;
                    _note = noteCon.text;
                    _num = numCon.text;
                  });
                  creat.l.add(creat.Data(_name, _date, _note, int.parse(_num)));
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => const MyFirstApp()));
                },
                child: const Text("Submit"),
              ),
              const Text("Saved!")
            ],
          ),
        ),
      ),
    );
  }
}
