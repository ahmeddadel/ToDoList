// ignore_for_file: avoid_print, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:todolist/Data.dart';
import 'Data.dart' as creat;
import 'settings screen.dart';
import 'view list.dart';
import 'add new.dart';

class MyFirstApp extends StatefulWidget {
  const MyFirstApp({Key? key}) : super(key: key);

  @override
  _MyFirstAppState createState() => _MyFirstAppState();
}

class _MyFirstAppState extends State<MyFirstApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Card(
          color: Colors.white38,
          child: Container(
            color: Colors.white38,
            child: ListView(
              children: [
                for (int i = 0; i < l.length; i++)
                  Card(
                    color: Colors.white,
                    child: ListTile(
                      trailing: FlatButton(
                        child: const Icon(
                          Icons.delete_forever,
                          color: Colors.red,
                        ),
                        onPressed: () {
                          setState(() {
                            creat.l.removeAt(i);
                          });
                        },
                      ),
                      leading: CircleAvatar(
                        backgroundColor: Colors.teal,
                        child: Text(l[i].name[0].toString().toUpperCase()),
                        foregroundColor: Colors.white,
                      ),
                      subtitle: Text(l[i].note + "... "),
                      title: Text(
                        "List ${i + 1}",
                        style: const TextStyle(fontSize: 20),
                      ),
                      onTap: () {
                        print("This is list number ${i + 1}");
                        creat.x = i - 1;
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => v()));
                      },
                    ),
                  ),
              ],
            ),
          ),
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.teal,
            child: ListView(
              children: [
                Container(
                  color: Colors.teal,
                  child: UserAccountsDrawerHeader(
                    currentAccountPicture: Image.asset(
                      "assets/img/user.png",
                    ),
                    accountName: const Text(
                      "Ahmed Adel",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    accountEmail: const Text(
                      "ahmedd.adell@outlook.com",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  shadowColor: Colors.green,
                  child: ListTile(
                    title: const Text("Settings"),
                    leading: const Icon(
                      Icons.settings,
                      color: Colors.black,
                    ),
                    onTap: () {
                      print("My Settings");
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => sett()));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text(
            "To-Do List",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.add),
              color: Colors.black,
              onPressed: () {
                print("Add new list");
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => add()));
              },
            ),
            IconButton(
              icon: const Icon(Icons.backspace_outlined),
              color: Colors.black,
              onPressed: () {
                print("Delete last list");
                setState(() {
                  l.removeLast();
                });
              },
            ),
          ],
        ));
  }
}
