import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: ("Lesson 19"),
    debugShowCheckedModeBanner: false,
    home: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.all(0),
            children: <Widget>[
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.purple[800],
                ),
                accountEmail: Text("aizhan.dzhumabekova@com"),
                accountName: Text("Aizhan"),
                currentAccountPicture: CircleAvatar(
                  child: Text("AD",
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  backgroundColor: Colors.purple[200],
                ),
              ),
              ListTile(
                  leading: Icon(Icons.wb_sunny, color: Colors.purple[800]),
                  title: Text("My day",
                      style: TextStyle(
                        color: Colors.purple[800],
                      )),
                  onTap: () {
                    print("My dat Clicked");
                  }),
              ListTile(
                leading: Icon(Icons.stars, color: Colors.purple[800]),
                title: Text("Important",
                    style: TextStyle(
                      color: Colors.purple[800],
                    )),
                onTap: () {
                  print("important Clicked");
                },
              ),
              ListTile(
                leading: Icon(Icons.content_paste, color: Colors.purple[800]),
                title: Text("Planned",
                    style: TextStyle(
                      color: Colors.purple[800],
                    )),
                onTap: () {
                  print("Planned Clicked");
                },
              ),
              ListTile(
                leading: Icon(Icons.calendar_today_outlined,
                    color: Colors.purple[800]),
                title: Text("Calendar",
                    style: TextStyle(
                      color: Colors.purple[800],
                    )),
                onTap: () {
                  print("Calendar Clicked");
                },
              ),
              ListTile(
                leading: Icon(Icons.info, color: Colors.purple[800]),
                title: Text("About Us",
                    style: TextStyle(
                      color: Colors.purple[800],
                    )),
                onTap: () {
                  print("About Clicked");
                },
              ),
              ListTile(
                leading: Icon(Icons.share, color: Colors.purple[800]),
                title: Text("Share with Friends",
                    style: TextStyle(
                      color: Colors.purple[800],
                    )),
                onTap: () {
                  print("Share Clicked");
                },
              ),
              ListTile(
                leading: Icon(Icons.flag, color: Colors.purple[800]),
                title: Text("Privacy Policy",
                    style: TextStyle(
                      color: Colors.purple[800],
                    )),
                onTap: () {
                  print("Privacy Clicked");
                },
              ),
            ],
          ),
        ),
        backgroundColor: Colors.purple[800],
        appBar: AppBar(
          backgroundColor: Colors.purple[800],
          centerTitle: true,
          title: Text("Tasks"),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              onPressed: () {
                print("not. Clicked");
              },
            )
          ],
        ),
        /* shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
        bottomLeft:Radius.circular(30),),),*/
        body: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(60))),
          alignment: Alignment.center,
          child: ListView(children: <Widget>[
            Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Rainbow-diagram-ROYGBIV.PNG/800px-Rainbow-diagram-ROYGBIV.PNG"),
            Text("Good morning!!!", textAlign: TextAlign.center),
            Image.network(
                "https://avatanplus.ru/files/resources/original/57b89792ded2c156a91015e1.png")
          ]),
        )),
  ));
}
