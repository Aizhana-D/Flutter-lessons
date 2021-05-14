import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _chosenValue;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Types of Flutter Buttons'),
            centerTitle: true,
          ),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(25),
                child: TextButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.purple),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.red[500])),
                  child: Text(
                    'Text Button',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  onPressed: () {
                    print("Text button");
                  },
                ),
              ),
              Container(
                child: TextButton(
                  child: Text(
                    'by default',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  onPressed: () {
                    print("by default");
                  },
                ),
              ),
              Container(
                child: ElevatedButton(
                  child: Text(
                    'ElavatedButton',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  onPressed: () {
                    print("ElavatedButton");
                  },
                ),
              ),
              Container(
                child: FloatingActionButton(
                  child: Icon(Icons.add),
                  backgroundColor: Colors.cyan,
                  onPressed: () {
                    print("FloatingActionButton");
                  },
                ),
              ),
              Container(
                child: DropdownButton<String>(
                  value: _chosenValue,
                  style: TextStyle(color: Colors.black),
                  items: <String>['Red', 'Black', 'Purple', 'Green']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  hint: Text(
                    "Please choose a color",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  onChanged: (String value) {
                    setState(() {
                      _chosenValue = value;
                    });
                  },
                ),
              ),
              Container(
                child: IconButton(
                  icon: Icon(Icons.fact_check_outlined),
                  iconSize: 60,
                  color: Colors.purple,
                  onPressed: () {
                    print("IconButton");
                  },
                ),
              ),
              Container(
                child: InkWell(
                  splashColor: Colors.black,
                  highlightColor: Colors.green,
                  child: Icon(Icons.build_circle_outlined, size: 50),
                  onTap: () {
                    print("InkWell");
                  },
                ),
              ),
              Container(
                child: PopupMenuButton(
                  itemBuilder: (context) => <PopupMenuEntry<Object>>[
                    PopupMenuItem(
                      child: Text(
                        "06:00",
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                      value: 1,
                    ),
                    PopupMenuItem(
                      child: Text(
                        "08:00",
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                      value: 1,
                    ),
                  ],
                  icon: Icon(
                    Icons.access_alarm,
                    size: 50,
                    color: Colors.orange,
                  ),
                ),
              ),
            ],
          ))),
    );
  }
}
