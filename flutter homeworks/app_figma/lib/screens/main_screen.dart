import 'package:app_figma/components/main_components/main_bottom_container.dart';
import 'package:app_figma/components/main_components/main_flash_container.dart';
import 'package:app_figma/constans/custom_text.dart';
import 'package:app_figma/constans/images.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff9F8A8A),
      body: Container(
        child: Stack(
          children: [
            Image.asset(TaskImages.mainShape),
            Container(
                child: Column(
              //  crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 52),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Главная",
                    style: TaskTexts.regular20.copyWith(color: Colors.white),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.only(left: 18, right: 18),
                  child: MainFlashContainer(),
                ),
                SizedBox(height: 60),
                Container(
                  child: MainBottomContainer(),
                  decoration: BoxDecoration(
                    color: Color(0xffF9F8FF),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0)),
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
