import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_api/state/app_state.dart';
import 'package:provider_api/view/home_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => AppState(),
        child: const MaterialApp(
            debugShowCheckedModeBanner: false, home: HomeState()));
  }
}
