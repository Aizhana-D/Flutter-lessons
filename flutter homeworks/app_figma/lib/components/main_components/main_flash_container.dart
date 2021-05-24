import 'package:app_figma/constans/custom_text.dart';
import 'package:app_figma/constans/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainFlashContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width - 32,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(left: 27, top: 14, right: 4, bottom: 16),
            child: Container(
                width: 64,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.yellow[600],
                    borderRadius: BorderRadius.circular(64)),
                child: Image.asset(
                  TaskImages.mainFlash,
                  width: 27,
                  height: 32,
                )),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Начните зарабатывать!", style: TaskTexts.regular15),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Приобретите тариф Behype-PRO \nи начните свою карьеру!",
                  style: TextStyle(color: Colors.black, fontSize: 10),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
