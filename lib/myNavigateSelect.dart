import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class MyNavigateSelect extends StatefulWidget {
  @override
  _MyNavigateSelectState createState() => _MyNavigateSelectState();
}

class _MyNavigateSelectState extends State<MyNavigateSelect> {
  static int recordCount = 4;

  List<WordPair> items = generateWordPairs().take(recordCount).toList();
  List<WordPair> _checks = new List();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("app bar select"),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.list),
              onPressed: () {
                Route<Object> route = new MaterialPageRoute(builder: (context) {
                  Iterable<Widget> items = _checks.map((w) {
                    return new Text(
                      w.asPascalCase,
                      style: new TextStyle(
                          fontSize: 20, color: Colors.deepPurpleAccent),
                    );
                  });

                  return new Scaffold(
                    appBar: new AppBar(
                      title: new Text("Bar"),
                    ),
                    body: new Center(
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: items.toList(),
                      ),
                    ),
                  );
                });

                Navigator.of(context).push(route);
              })
        ],
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
          title: new Text("load more",
              style: new TextStyle(color: Colors.deepPurpleAccent)),
          onTap: () {
            setState(() {
              items.addAll(generateWordPairs().take(recordCount));
            });
          },
        );
      }

      var isExist = _checks.contains(wordPair);

      ListTile item = new ListTile(
        leading:
            new Icon(isExist ? Icons.check_box : Icons.check_box_outline_blank),
        title: new Text(
          wordPair.asPascalCase,
          style: new TextStyle(fontSize: 20),
        ),
        onTap: () {
          setState(() {
            if (isExist) {
              _checks.remove(wordPair);
            } else {
              _checks.add(wordPair);
            }
          });

          print(_checks);
        },
      );
      return item;
    });

    return listTiles.toList();
  }
}
