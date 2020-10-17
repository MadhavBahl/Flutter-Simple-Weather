import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/sunny.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Text('WEATHER APP'),
            ],
          ),
        ),
      ),
    );
  }
}
