import 'package:flutter/material.dart';
import 'package:simple_weather/screens/loading_screen.dart';
import 'package:simple_weather/screens/main_screen.dart';

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
        body: LoadingScreen(),
      ),
    );
  }
}
