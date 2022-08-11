import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.amberAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              CircleAvatar(
                radius: 30,
                child: Icon(
                  Icons.boy,
                  size: 50,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Ram Hari"),
              SizedBox(
                height: 20,
              ),
              Text("Age:22"),
              SizedBox(
                height: 20,
              ),
              Text("Location: Texas"),
            ],
          ),
        ),
      ),
    );
  }
}
