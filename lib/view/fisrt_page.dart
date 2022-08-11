import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,

          //padding: const EdgeInsets.all(20),
          color: Colors.grey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleAvatar(
                radius: 30,
                child: Icon(
                  Icons.girl,
                  size: 50,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Sita Kumari"),
              SizedBox(
                height: 20,
              ),
              Text("Age:20"),
              SizedBox(
                height: 20,
              ),
              Text("Location: London"),
            ],
          ),
        ),
      ),
    );
  }
}
