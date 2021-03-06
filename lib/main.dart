import 'package:flutter/material.dart';
import 'package:flutter_udacity_course/courses/01_hello_rectangle/main.dart';
import 'package:flutter_udacity_course/courses/02_category_widget/main.dart';
import 'package:flutter_udacity_course/courses/03_category_route/category_route.dart'
    as c3;
import 'package:flutter_udacity_course/courses/04_navigation_task/category_route.dart'
    as c4;
import 'package:flutter_udacity_course/courses/05_stateful_widgets/category_route.dart'
    as c5;
import 'package:flutter_udacity_course/courses/06_input_task/category_route.dart'
    as c6;
import 'package:flutter_udacity_course/courses/07_backdrop/category_route.dart'
    as c7;
import 'package:flutter_udacity_course/courses/08_responsive/category_route.dart'
    as c8;
import 'package:flutter_udacity_course/courses/09_units/category_route.dart'
    as c9;
import 'package:flutter_udacity_course/courses/10_icons_fonts/category_route.dart'
    as c10;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Udacity Course',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        fontFamily: 'Raleway'
      ),
      home: CoursesWidget(),
    );
  }
}

class CoursesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Udacity Course'),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            getCourseWidget(
                context, '01 - Hello Rectangle', HelloRectangleTask()),
            getCourseWidget(
                context, '02 - Category Widget', CategoryWidgetTask()),
            getCourseWidget(context, '03 - Category Route', c3.CategoryRoute()),
            getCourseWidget(context, '04 - Navigation Task', c4.CategoryRoute()),
            getCourseWidget(context, '05 - Stateful Widget Task', c5.CategoryRoute()),
            getCourseWidget(context, '06 - Input Task', c6.CategoryRoute()),
            getCourseWidget(context, '07 - Backdrop', c7.CategoryRoute()),
            getCourseWidget(context, '08 - Responsive', c8.CategoryRoute()),
            getCourseWidget(context, '09 - Units from JSON', c9.CategoryRoute()),
            getCourseWidget(context, '10 - Icons and Fonts', c10.CategoryRoute()),
          ],
        ),
      ),
    );
  }

  ListTile getCourseWidget(BuildContext context, String text, Widget widget) {
    return ListTile(
      title: Text(text),
      onTap: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => widget)),
    );
  }
}
