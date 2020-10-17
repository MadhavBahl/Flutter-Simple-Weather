import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.purple, Colors.blue],
        ),
      ),
      child: Center(
        child: SpinKitRipple(
          color: Colors.white,
          size: 150.0,
          duration: Duration(milliseconds: 1200),
        ),
      ),
    );
  }
}
