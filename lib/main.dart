import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(new MyApp());
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _MyHomePage();
  }
}

class _MyHomePage extends State<MyHomePage> {
  WordPair wordPair = WordPair.random();

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text(
            wordPair.asPascalCase,
            style: new TextStyle(fontSize: 20, color: Colors.blue),
          ),
          new RaisedButton(
            onPressed: _onPressedFun,
            child: new Text("Button"),
          )
        ],
      ),
    );
  }

  void _onPressedFun() {
    setState(() {
      wordPair = WordPair.random();
    });
    print(wordPair);
  }
}

class MyApp extends StatelessWidget {
  WordPair wordPair = WordPair.random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "my flutter app",
        home: new Scaffold(
          appBar: new AppBar(title: new Text("app bar")),
          body: new MyHomePage(),
        ));
  }

  void _onPressedFun() {
    wordPair = WordPair.random();
    print(wordPair);
  }
}
