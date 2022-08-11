import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider_api/model/post_model.dart';

class AppState extends ChangeNotifier {
  int age = 10;
  String name = "TUKTUK";

  void updateValue(age, name) {
    this.age = age;
    this.name = name;
    notifyListeners();
  }

//Timer function
  int start = 0;
  void updateStart(start) {
    this.start = start;
    notifyListeners();
  }

  void getTimer() {
    Timer.periodic((const Duration(seconds: 1)), (timer) {
      updateStart(timer.tick);
    });
  }

  void updateName(String name) {
    this.name = name;
    notifyListeners();
  }

  Future<void> getName(String name) async {
    Future.delayed(const Duration(seconds: 3), () {
      updateName(name);
    });
  }

// widget change
  bool change = false;
  void updateWidget() {
    change = !change;
    notifyListeners();
  }

  //Provider with rest api

  List<PostModel> dataList = [];
  void updatePostModel(List<PostModel> dataList) {
    this.dataList = dataList;
    notifyListeners();
  }
}
