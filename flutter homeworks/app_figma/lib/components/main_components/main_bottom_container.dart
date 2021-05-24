import 'package:app_figma/constans/custom_text.dart';
import 'package:app_figma/constans/images.dart';
import 'package:flutter/material.dart';

class MainBottomContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 18, right: 18, top: 18),
      height: 557,
      width: 500,
      child: ListView(
        children: [
          Text(
            "Категории",
            style: TaskTexts.regular18.copyWith(color: Colors.black),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(1),
                height: 125,
                width: 107,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  gradient: LinearGradient(
                      colors: [Color(0xffF90640), Color(0xff8F00FF)]),
                ),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          TaskImages.mainMiddle1,
                          width: 60,
                          height: 60,
                        ),
                        SizedBox(height: 5),
                        Text("Реклама", style: TaskTexts.regular13),
                        Text(
                          "106 компаний",
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                      ],
                    )),
              ),
              Container(
                padding: EdgeInsets.all(1),
                height: 125,
                width: 107,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  gradient: LinearGradient(colors: [
                    Color(0xff8F00FF),
                    Color(0xffF90640),
                    Color(0xffF90fff)
                  ]),
                ),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          TaskImages.mainMiddle2,
                          width: 60,
                          height: 60,
                        ),
                        SizedBox(height: 5),
                        Text("Взаимопиар", style: TaskTexts.regular13),
                        Text(
                          "56 заявок",
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                      ],
                    )),
              ),
              Container(
                padding: EdgeInsets.all(1),
                height: 125,
                width: 107,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  gradient: LinearGradient(
                      colors: [Color(0xffF90640), Color(0xff8F00FF)]),
                ),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          TaskImages.mainMiddle3,
                          width: 60,
                          height: 60,
                        ),
                        SizedBox(height: 5),
                        Text("Бартер", style: TaskTexts.regular13),
                        Text(
                          "245 заявок",
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                      ],
                    )),
              ),
            ],
          ),
          SizedBox(height: 49),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Рекламные компании",
                style: TaskTexts.regular18.copyWith(color: Colors.black),
              ),
              OutlinedButton(
                child: Text(
                  "Все",
                  style: TaskTexts.regular12.copyWith(color: Colors.white),
                ),
                onPressed: () {
                  print(
                    'Все',
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xffF90640)),
                  minimumSize: MaterialStateProperty.all<Size>(Size(38, 18)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 34),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 124,
                width: 160,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(1),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: Offset(1, 3), // changes position of shadow
                      ),
                    ],
                    gradient: LinearGradient(
                        colors: [Color(0xffD96DFF), Color(0xff6322E0)]),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12),
                        topLeft: Radius.circular(12))),
                child: Image.asset(
                  TaskImages.mainBottom,
                  width: 178,
                  height: 124,
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(12),
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: Offset(1, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Text("В новом обновлении", style: TaskTexts.regular13),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
