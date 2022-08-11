import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  int age = 10;
  String name = "TUKTUK";

  void updateValue(age, name) {
    this.age = age;
    this.name = name;
    notifyListeners();
  }
}
