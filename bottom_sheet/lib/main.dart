import 'package:flutter/material.dart';
import 'package:bottom_sheet/home_page.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Bottom Sheet",
      theme: new ThemeData(primarySwatch: Colors.teal
      ),
      home: new HomePage(),

    );
  }
}
