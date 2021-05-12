import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _pwdController = TextEditingController();
  //String value = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ("Homework"),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey[100],
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.lightBlue[500],
          title: Text("Welcome"),
        ),
        body: Center(
          child: Container(
            height: 320,
            margin: EdgeInsets.only(top: 100),
            padding: EdgeInsets.all(35),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Container(
                  height: 50,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    controller: _emailController,
                    onChanged: (text) {
                      //  value = text;
                      print(_emailController.text);
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Password",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text("Forgot password?",
                        style: TextStyle(fontSize: 15, color: Colors.blue)),
                  ],
                ),
                SizedBox(
                  height: 3,
                ),
                Container(
                  height: 70,
                  child: TextField(
                    maxLength: 5,
                    controller: _pwdController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Container(
                  child: Container(
                    padding: EdgeInsets.only(top: 15),
                    width: 318,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue[400],
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Text("Log in",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white),
                        textAlign: TextAlign.center),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          alignment: Alignment.bottomCenter,
          height: 250,
          child: Container(
            alignment: Alignment.topCenter,
            child: RichText(
              text: TextSpan(
                text: 'Don\'t have an account?',
                style: TextStyle(color: Colors.black, fontSize: 16),
                children: <TextSpan>[
                  TextSpan(
                    text: ' Sign up',
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
