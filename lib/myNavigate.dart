import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class MyNavigate extends StatefulWidget {
  @override
  _MyNavigateState createState() => _MyNavigateState();
}

class _MyNavigateState extends State<MyNavigate> {
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
          title: new Text("load more",
              style: new TextStyle(color: Colors.deepPurpleAccent)),
          onTap: () {
            setState(() {
              items.addAll(generateWordPairs().take(recordCount));
            });
          },
        );
      }

      ListTile item = new ListTile(
        title: new Text(wordPair.asPascalCase, style: new TextStyle(fontSize: 20),),
        onTap: (){
          print(wordPair.asPascalCase);

          Route<Object> route = new MaterialPageRoute(builder: (context){
            return new Scaffold(
              appBar: new AppBar(
                  title: new Text("bar")),
              body: new Center(
                child: new Text(wordPair.asPascalCase, style: new TextStyle(
                  fontSize: 25,
                  color: Colors.greenAccent
                ),),
              ),
            );
          });

          Navigator.of(context).push(route);

        },
      );
      return item;
    });

    return listTiles.toList();
  }
}
