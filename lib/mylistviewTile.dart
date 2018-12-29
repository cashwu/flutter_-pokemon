import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class MyListViewTile extends StatefulWidget {
  @override
  _MyListViewTileState createState() => _MyListViewTileState();
}

class _MyListViewTileState extends State<MyListViewTile> {
  static int recordCount = 4;

  List<WordPair> items = generateWordPairs().take(recordCount).toList();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("app bar"),
      ),
      body: new Container(
        child: new ListView(children: _renderRows()),
      ),
    );
  }

  List<Widget> _renderRows() {
    int index = 0;

    Iterable<Widget> listTiles = items.map((wordPair) {
      index++;

      if (index == items.length) {
        return new ListTile(
          title: new Text("loading more",
          style: new TextStyle(color: Colors.deepPurpleAccent)),
          onTap: () {
            setState(() {
              items.addAll(generateWordPairs().take(recordCount));
            });
          },
        );
      }

      ListTile item = new ListTile(
        title: new Text(wordPair.asPascalCase),
        onTap: (){
          print(wordPair.asPascalCase);
        },
      );
      return item;
    });

    return listTiles.toList();
  }
}
