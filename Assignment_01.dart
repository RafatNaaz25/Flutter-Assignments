// ignore_for_file: no_logic_in_create_state, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class Widget1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<Widget1> {
  double i = 0;
  double j = 0;
  double k = 0;
  double a = 255;
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        home: Scaffold(
        backgroundColor: Color.fromARGB(a.toInt(), i.toInt(), j.toInt(), k.toInt()),
        body: Column(
        children: [
          Padding(
              padding: EdgeInsets.all(20),
              child: Slider(
                  min: 0,
                  max: 255,
                  divisions: 10,
                  value: i,
                  onChanged: (value) {
                    setState(() {
                      i = value;
                    });
                  })),
          Padding(
              padding: EdgeInsets.all(20),
              child: Slider(
                  min: 0,
                  max: 255,
                  divisions: 10,
                  value: j,
                  onChanged: (value) {
                    setState(() {
                      j = value;
                    });
                  })),
          Padding(
              padding: EdgeInsets.all(20),
              child: Slider(
                  min: 0,
                  max: 255,
                  divisions: 10,
                  value: k,
                  onChanged: (value) {
                    setState(() {
                      k = value;
                    });
                  })),
        ],
      ),
        appBar: AppBar(
        title: const Text('Assignment 01'),
      ),
    )));
  }
}
