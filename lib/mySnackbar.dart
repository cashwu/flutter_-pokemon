import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class MySnackbar extends StatefulWidget {
  @override
  _MySnackbarState createState() => _MySnackbarState();
}

class _MySnackbarState extends State<MySnackbar> {
  static int recordCount = 100;

  List<WordPair> items = generateWordPairs().take(recordCount).toList();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("bar"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(10.0),
        decoration: new BoxDecoration(
          color: Colors.amberAccent,
        ),
        child: new ListView.builder(itemBuilder: (context, index) {
          if (index > items.length - 1) {
            items.addAll(generateWordPairs().take(recordCount));
          }
          print("index $index");

          return new ListTile(
              title: new Text(
                items[index].asPascalCase,
                style: new TextStyle(fontSize: 20, color: Colors.black),
              ),
              onTap: () {
                SnackBar snackbar = new SnackBar(
                  content: new Text(
                    items[index].asPascalCase,
                    style: new TextStyle(fontSize: 20),
                  ),
                  backgroundColor: Colors.green,
                  duration: new Duration(milliseconds: 1000),
                  action: new SnackBarAction(
                      label: "OK",
                      onPressed: () {
                        print(items[index]);
                      }),
                );
                Scaffold.of(context).showSnackBar(snackbar);
              });
        }),
      ),
    );
  }
}
