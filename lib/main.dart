import 'package:app/myDrawer.dart';
import 'package:app/myTabs.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "App",
      home: MyDrawer(),
    );
  }
}
