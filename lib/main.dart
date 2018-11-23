import 'package:flutter/material.dart';
import 'package:flutter_udacity_course/courses/01_hello_rectangle/main.dart';
import 'package:flutter_udacity_course/courses/02_category_widget/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Udacity Course',
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
      body: ListView(
        children: <Widget>[
          getCourseWidget(
              context, '01 - Hello Rectangle', HelloRectangleTask()),
          getCourseWidget(
              context, '02 - Category Widget', CategoryWidgetTask()),
        ],
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
