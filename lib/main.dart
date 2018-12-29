import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(new MaterialApp(
    title: "my flutter app",
    home: new Center(
        child: new Scaffold(
      appBar: new AppBar(
        title: new Text("App bar"),
      ),
      body: new Center(
        child: new Text(WordPair.random().asCamelCase,
            style: new TextStyle(fontSize: 20, color: Colors.blue)),
      ),
    )),
  ));
}
