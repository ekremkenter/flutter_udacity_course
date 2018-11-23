import 'package:flutter/material.dart';
import 'package:flutter_udacity_course/courses/02_category_widget/category.dart';

class CategoryWidgetTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('02 - Category Widget Task'),
      ),
      backgroundColor: Colors.green[100],
      body: Center(
        child: Category("Ekrem", Icons.flight_takeoff, Colors.green),
      ),
    );
  }
}
