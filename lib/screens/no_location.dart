import 'package:flutter/material.dart';

// Implement a widget in case location was not found.
class NoLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
            children: [
              
              Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/error.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          alignment: Alignment(0.0, -0.5),
         child: Text('Please try again after some time.',style: TextStyle(fontSize: 20,color: Colors.white),),
        ),
            ],
      ),
    );
  }
}
