// ignore_for_file: file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Widget2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<Widget2> {
  var username = "Rafat";
  var password = "Raaz";
  String v = "";
  var myController1 = TextEditingController();
  var myController2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        home: Scaffold(
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                  controller: myController1,
                  decoration: const InputDecoration(
                      labelText: 'Enter Username',
                      border: OutlineInputBorder()))),
          Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                  controller: myController2,
                  decoration: const InputDecoration(
                      labelText: 'Enter Password',
                      border: OutlineInputBorder()))),
          Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  onPressed: () {
                    setState(() {
                      username = myController1.text;
                      password = myController2.text;
                      if (username == "Rafat" && password == "Raaz") {
                        v = 'Valid';
                      } else {
                        v = 'Invalid!';
                      }
                    });
                  },
                  child: const Text('Click Here!'))),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(v),
          ),
        ],
      ),
      appBar: AppBar(
        title: const Text('Assignment 02'),
      ),
    )));
  }
}
