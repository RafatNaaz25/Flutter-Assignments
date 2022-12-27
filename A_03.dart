import 'package:flutter/material.dart';

class Widget03 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<Widget03> {
  var myconterller1 = TextEditingController();
  String v = '';
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            width: 500,
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 25, top: 20, bottom: 20),
              child: Text(
                v,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: (() {
                    setState(() {
                      v += '1';
                    });
                  }),
                  child: const Text(
                    '1',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: (() {
                    setState(() {
                      v += '2';
                    });
                  }),
                  child: const Text(
                    '2',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: (() {
                    setState(() {
                      v += '3';
                    });
                  }),
                  child: const Text(
                    '3',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: (() {
                    setState(() {
                      v += '+';
                    });
                  }),
                  child: const Text(
                    '+',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    )));
  }
}
