import 'package:employee_app/model/model_employee.dart';
import 'package:employee_app/screens/detailed_screen.dart';
import 'package:flutter/material.dart';
import 'package:employee_app/model/list_employee.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ListEmployees list = new ListEmployees();
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 16, right: 18, top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Сотрудники",
              style: TextStyle(
                  fontFamily: 'Museo Sans Cyrl',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff2C2C2C)),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: Color(0xfff5f5f5),
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 17),
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  hintText: 'Поиск',
                  contentPadding: EdgeInsets.all(17),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "У кого сегодня день рождения",
              style: TextStyle(
                  fontFamily: 'Museo Sans Cyrl',
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.blue),
            ),
            SizedBox(height: 14),
            Container(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  for (int i = 0; i < list.employeesList.length; i++)
                    buildAvatar(list.employeesList[i], i, context),
                ],
              ),
            ),
            SizedBox(
              height: 23,
            ),
            Container(
              child: Text(
                "У кого завтра день рождение",
                style: TextStyle(
                    fontFamily: 'Museo Sans Cyrl',
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            SizedBox(height: 14),
            Container(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  for (int i = 1; i < list.employeesList.length; i++)
                    buildAvatar(list.employeesList[i], i, context)
                ],
              ),
            ),
            SizedBox(
              height: 26,
            ),
            Container(
              child: Text(
                "Все сотрудники",
                style: TextStyle(
                    fontFamily: 'Museo Sans Cyrl',
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            for (int i = 0; i < list.employeesList.length; i++)
              buildEmployees(list.employeesList[i], i, context),
          ],
        ),
      ),
    );
  }
}

//---------------------------
Widget buildAvatar(ModelEmployees list, int index, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailedScreen(index: index)));
    },
    child: Row(children: [
      Container(
        width: 60,
        height: 60,
        child: CircleAvatar(
          radius: 40,
          backgroundColor: Colors.blue,
          child: CircleAvatar(
            radius: 23.0,
            backgroundImage: AssetImage(
              list.emImage,
            ),
          ),
        ),
      ),
    ]),
  );
}

//-------------------------
Widget buildEmployees(ModelEmployees list, int index, BuildContext context) {
  return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailedScreen(index: index)));
      },
      child: Container(
        padding: EdgeInsets.only(bottom: 8),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CircleAvatar(
                radius: 23,
                backgroundImage: AssetImage(
                  list.emImage,
                ),
              ),
              Container(
                //color: Colors.red,
                width: 250,
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("${list.emSurname} " + list.emName,
                            style: TextStyle(
                              fontFamily: 'Museo Sans Cyrl',
                              fontSize: 20,
                              color: Colors.black,
                            )),
                      ],
                    ),
                    Text(list.emFatherName,
                        style: TextStyle(
                          fontFamily: 'Museo Sans Cyrl',
                          fontSize: 20,
                          color: Colors.black,
                        )),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.phone,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ));
}
