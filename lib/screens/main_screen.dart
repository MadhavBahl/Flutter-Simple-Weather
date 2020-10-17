import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
