import 'package:flutter/material.dart';

class WeatherColor {
  String? description;
  Color? color;
  WeatherColor(this.description, this.color);
}

List<WeatherColor> mycolors = [
  WeatherColor("clear sky", Colors.orange[400]),
  WeatherColor("few clouds", Colors.lightBlue[600]),
  WeatherColor("scattered clouds", Colors.lightBlue[500]),
  WeatherColor("broken clouds", Colors.lightBlue[700]),
  WeatherColor("shower rain", Colors.cyan[300]),
  WeatherColor("rain", Colors.indigo[500]),
  WeatherColor("thunderstorm", Colors.indigo[800]),
  WeatherColor("snow", Colors.cyan[600]),
  WeatherColor("mist", Colors.blueGrey[500])
];

Color myColor(String s) {
  for (int i = 0; i < mycolors.length; i++) {
    if (s == mycolors[i].description) {
      return mycolors[i].color!;
    }
  }
  return Colors.white;
}
