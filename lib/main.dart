import 'package:flutter/material.dart';
import 'package:app/mylistview.dart';
import 'package:app/mylistviewTile.dart';
import 'package:app/myNavigate.dart';
import 'package:app/myNavigateSelect.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "App",
      home: new MyNavigateSelect(),
    );
  }
}
