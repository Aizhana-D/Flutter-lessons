import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:employee_app/model/list_employee.dart';

class DetailedScreen extends StatefulWidget {
  final int index;
  DetailedScreen({Key key, this.index}) : super(key: key);

  @override
  _DetailedScreenState createState() => _DetailedScreenState();
}

class _DetailedScreenState extends State<DetailedScreen> {
  _showModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            decoration: BoxDecoration(
                color: Color(0xffE5E5E5),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: SingleChildScrollView(
              child: Container(
                height: 400,
                padding: EdgeInsets.only(left: 16, right: 32, top: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Позвонить",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            padding: EdgeInsets.all(4),
                            child: Icon(Icons.close),
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(32)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    buildINFO(TextStyle(color: Colors.black, fontSize: 20),
                        MainAxisAlignment.start, Alignment.centerLeft),
                    SizedBox(
                      height: 32,
                    ),
                    InkWell(
                      onTap: () {
                        _callnumber(
                            list.employeesList[widget.index].emMainPhone);
                      },
                      child: buildPhone("Основной Телефон",
                          list.employeesList[widget.index].emMainPhone),
                    ),
                    InkWell(
                      onTap: () {
                        _callnumber(
                            list.employeesList[widget.index].emWorkPhone);
                      },
                      child: buildPhone(
                        "Рабочий Телефон",
                        list.employeesList[widget.index].emWorkPhone,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        _callnumber(
                            list.employeesList[widget.index].emWhatsAppPhone);
                      },
                      child: buildPhone(
                        "WhatsApp",
                        list.employeesList[widget.index].emWhatsAppPhone,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  void _callnumber(String phonenumber) async {
    String number = phonenumber;
    bool res = await FlutterPhoneDirectCaller.callNumber(number);
  }

  ListEmployees list = new ListEmployees();
  @override
  Widget build(BuildContext context) {
    print(widget.index);
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 44),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 32,
                )),
            SizedBox(
              height: 20,
            ),
            Container(
              padding:
                  EdgeInsets.only(left: 123, right: 123, top: 10, bottom: 0),
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 57,
                backgroundImage: AssetImage(
                  list.employeesList[widget.index].emImage,
                ),
              ),
            ),
            SizedBox(height: 22),
            buildINFO(TextStyle(color: Colors.black, fontSize: 20),
                MainAxisAlignment.center, Alignment.center),
            SizedBox(height: 12),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              child: Text(list.employeesList[widget.index].emPosition,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                  )),
            ),
            SizedBox(
              height: 44,
            ),
            buildInfo(
              "Направление",
              list.employeesList[widget.index].emNavigation,
            ),
            buildInfo(
              "Отдел",
              list.employeesList[widget.index].emDepartment,
            ),
            buildInfo(
              "Email",
              list.employeesList[widget.index].emEmail,
            ),
            buildInfo(
              "Дата рождения",
              list.employeesList[widget.index].emBirthday,
            ),
            buildInfo(
              "Email",
              list.employeesList[widget.index].emEmail,
            ),
            InkWell(
                onTap: () {
                  _showModalBottomSheet(context);
                },
                child: buildPhone("Основной Телефон",
                    list.employeesList[widget.index].emMainPhone)),
            InkWell(
              onTap: () {
                _showModalBottomSheet(context);
              },
              child: buildPhone(
                "Рабочий Телефон",
                list.employeesList[widget.index].emWorkPhone,
              ),
            ),
            InkWell(
              onTap: () {
                _showModalBottomSheet(context);
              },
              child: buildPhone(
                "WhatsApp",
                list.employeesList[widget.index].emWhatsAppPhone,
              ),
            )
          ],
        ),
      )),
    );
  }

  Widget buildINFO(TextStyle style, MainAxisAlignment mainAxisAlignment,
      Alignment alignment) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: mainAxisAlignment,
          children: [
            Container(
              alignment: Alignment.center,
              child: Text("${list.employeesList[widget.index].emSurname}  ",
                  style: style),
            ),
            Container(
              alignment: Alignment.center,
              child: Text("${list.employeesList[widget.index].emName}  ",
                  style: style),
            ),
          ],
        ),
        Container(
          alignment: alignment,
          child: Text("${list.employeesList[widget.index].emFatherName}  ",
              style: style),
        ),
      ],
    );
  }

  Widget buildPhone(String title, String info) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildInfo(title, info),
        Icon(
          Icons.phone,
          color: Colors.green,
        )
      ],
    );
  }

  Widget buildInfo(
    String title,
    String information,
  ) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 14,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 12, color: Colors.grey),
        ),
        SizedBox(height: 4),
        Text(information.toString(),
            style: TextStyle(color: Colors.black, fontSize: 16)),
      ]),
    ]);
  }
}
