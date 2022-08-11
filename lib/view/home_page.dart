import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_api/state/app_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Provider"),
        ),
        body: Consumer<AppState>(builder: (context, value, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "My name is ${value.name}",
                style: const TextStyle(fontSize: 20),
              ),
              CupertinoButton(
                  color: Colors.blue,
                  child: const Text("Press Event"),
                  onPressed: () {
                    value.getName("Huraaaay");
                  })
            ],
          );
        }));
  }
}
