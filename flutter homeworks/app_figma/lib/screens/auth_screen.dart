import 'package:app_figma/constans/colors.dart';
import 'package:app_figma/constans/custom_text.dart';
import 'package:flutter/material.dart';
import 'main_screen.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: TaskColors.authback,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 18, right: 18),
        color: TaskColors.authback,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Вход", style: TaskTexts.regular20),
            SizedBox(height: 36),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: TaskColors.textfieldBack,
                border: InputBorder.none,
                hintText: "E-mail",
                hintStyle: TextStyle(color: TaskColors.textfieldText),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: TaskColors.textfieldBorder),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.visibility_off_outlined,
                      color: Color(0xffA98CE1)),
                ),
                filled: true,
                fillColor: TaskColors.textfieldBack,
                border: InputBorder.none,
                hintText: "Пароль",
                hintStyle: TextStyle(color: TaskColors.textfieldText),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: TaskColors.textfieldBorder),
                ),
              ),
            ),
            SizedBox(height: 66),
            ElevatedButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MainScreen())),
              child: Text("Войти"),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(Size(132, 50)),
                padding: MaterialStateProperty.all(
                    EdgeInsets.only(left: 18, right: 18)),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xffF90640)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
                elevation: MaterialStateProperty.all(3.5),
                shadowColor: MaterialStateProperty.all(Color(0xfff9063f)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
