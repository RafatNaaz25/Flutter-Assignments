// ignore_for_file: file_names, use_key_in_widget_constructors, no_logic_in_create_state, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class Widget3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<Widget3> {
  var x = TextEditingController();
  String v = "";
  String v1 = "";
  String op = "";
  double r = 0;
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Calculator'),
        ),
        body: Column(
          children: [
            Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  controller: x,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder()))),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding:const  EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: (() {
                        setState(() {
                          
                          x.text+='1';
                        });
                      }),
                      child: const Text(
                        '1',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                Padding(
                    padding:const  EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: (() {
                        setState(() {
                         
                          x.text+='2';
                        });
                      }),
                      child: const Text(
                        '2',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                 Padding(
                    padding:const EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: (() {
                        setState(() {
                           
                          x.text+='3';
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
                          v =x.text;
                          x.text="";
                          op='+';
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
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding:const  EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: (() {
                        setState(() {
                          
                          x.text+='4';
                        });
                      }),
                      child: const Text(
                        '4',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                Padding(
                    padding:const  EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: (() {
                        setState(() {
                          
                          x.text+='5';
                        });
                      }),
                      child: const Text(
                        '5',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                Padding(
                    padding:const  EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: (() {
                        setState(() {
                          
                          x.text+='6';
                        });
                      }),
                      child: const Text(
                        '6',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                Padding(
                    padding: const EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: (() {
                        setState(() {
                          v =x.text;
                          x.text="";
                           op='-';
                        });
                      }),
                      child: const Text(
                        '-',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  )
                ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding:const  EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: (() {
                        setState(() {
                          
                          x.text+='7';
                        });
                      }),
                      child: const Text(
                        '7',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                Padding(
                    padding:const  EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: (() {
                        setState(() {
                          
                          x.text+='8';
                        });
                      }),
                      child: const Text(
                        '8',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                Padding(
                    padding:const  EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: (() {
                        setState(() {
                          
                          x.text+='9';
                        });
                      }),
                      child: const Text(
                        '9',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                Padding(
                    padding:const  EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: (() {
                        setState(() {
                          v =x.text;
                          x.text="";
                           op='x';
                        });
                      }),
                      child: const Text(
                        'x',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Padding(
                    padding:const  EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: (() {
                        setState(() {
                          
                          x.text+='0';
                        });
                      }),
                      child: const Text(
                        '0',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
              Padding(
                    padding: const EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: (() {
                        setState(() {
                          v =x.text;
                          x.text="";
                           op='/';
                        });
                      }),
                      child: const Text(
                        '/',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
              Padding(
                    padding: const EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: (() {
                        setState(() {
                          v1 =x.text;
                          int z= 0 ;
                          if(op=='+'){
                            z=int.parse(v)+int.parse(v1);
                            x.text=""+z.toString();
                          }
                          else if( op=='-'){
                            z=int.parse(v)-int.parse(v1);
                            x.text=""+z.toString();
                          }
                          else if( op=='x'){
                            z=int.parse(v)*int.parse(v1);
                            x.text=""+z.toString();
                          }
                          else if( op=='/'){
                            r=int.parse(v)/int.parse(v1);
                            x.text=""+r.toString();
                          }  
                        });
                      }),
                      child: const Text(
                        '=',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
              Padding(
                    padding: const EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: (() {
                        setState(() {
                          v =x.text;
                          x.text="";
                        });
                      }),
                      child: const Text(
                        'AC',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
