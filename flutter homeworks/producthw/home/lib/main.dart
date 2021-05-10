import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ("Homework"),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Product"),
        ),
        body: Container(
          alignment: Alignment.topCenter,
          child: Container(
            height: 250,
            width: 500,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
                color: Colors.blueGrey[200],
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                        "Название\nКостюм тройка\n\nМодель\nRobert Rierra \n\nАртикул модели\n2345436n\nРазмеры"),
                    Text("1234\n\nТип\n Костюм\n\nАртикул ткани\nVendor code",
                        textAlign: TextAlign.right),
                  ],
                ),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      padding: EdgeInsets.only(left: 10, top: 5),
                      width: 80,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.grey[700],
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child: Text(
                        "196/2*2",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
