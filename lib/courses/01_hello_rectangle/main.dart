import 'package:flutter/material.dart';

class HelloRectangleTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('01 - Hello Rectangle'),
      ),
      body: Center(
        child: Container(
          color: Colors.greenAccent,
          height: 400.0,
          width: 300.0,
          child: Center(
            child: Text(
              'Hello!',
              style: TextStyle(fontSize: 40.0),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
