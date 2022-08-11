import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:provider_api/state/app_state.dart';
import 'package:provider_api/view/fisrt_page.dart';
import 'package:provider_api/view/second_page.dart';

class HomeState extends StatelessWidget {
  const HomeState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var changeProvider = Provider.of<AppState>(context);
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            changeProvider.updateWidget();
          },
          child: const Icon(Icons.change_circle),
        ),
        appBar: AppBar(
          title: const Text("Provider with Screens"),
        ),
        body: Consumer<AppState>(builder: ((context, value, child) {
          return value.change ? const SecondPage() : const FirstPage();
        })));
  }
}
