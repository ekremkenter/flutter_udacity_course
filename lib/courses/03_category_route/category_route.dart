// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_udacity_course/courses/03_category_route/category.dart';

final _backgroundColor = Colors.blue[100];

/// Category Route (screen).
///
/// This is the 'home' screen of the Unit Converter. It shows a header and
/// a list of [Categories].
///
/// While it is named CategoryRoute, a more apt name would be CategoryScreen,
/// because it is responsible for the UI at the route's destination.
class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  Widget _buildCategoryWidgets() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => Category(
            name: _categoryNames[index],
            color: _baseColors[index],
            iconLocation: Icons.flight_takeoff,
          ),
      itemCount: _categoryNames.length,
    );
  }

  @override
  Widget build(BuildContext context) {
    final listView = Container(
      decoration: BoxDecoration(color: _backgroundColor),
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: _buildCategoryWidgets(),
    );

    final appBar = AppBar(
      elevation: 0,
      title: Text(
        'Unit Converter',
        style: TextStyle(
          fontSize: 30,
          color: Colors.black,
        ),
      ),
      backgroundColor: _backgroundColor,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      brightness: Brightness.light,
    );

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}
