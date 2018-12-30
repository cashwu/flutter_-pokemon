import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:http/http.dart';

class MyListViewGestureDetector extends StatefulWidget {
  @override
  _MyListViewGestureDetectorState createState() =>
      _MyListViewGestureDetectorState();
}

class _MyListViewGestureDetectorState extends State<MyListViewGestureDetector> {
  List pokemons = [];

  GlobalKey<ScaffoldState> _scaffoldState = GlobalKey();

  loadData() async {
    var response = await get(
        "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json");
    var data = jsonDecode(response.body);
    setState(() {
      pokemons = data["pokemon"];
    });
  }

  List<GestureDetector> _renderRows() {
    var index = 0;

    Iterable<GestureDetector> items = pokemons.map((p) {
      var img = p["img"];
      var name = p["name"];
      var candy = p["candy"];

      index++;
      var item = Container(
        child: Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: index % 2 == 0 ? Colors.deepPurple : Colors.green),
          child: Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(color: Colors.amber),
                child: CachedNetworkImage(
                  imageUrl: img,
                  placeholder: CircularProgressIndicator(),
                  width: 100,
                  height: 100,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(name),
                    Text(candy),
                  ],
                ),
              )
            ],
          ),
        ),
//        onTap: () {
//          SnackBar snackbar = SnackBar(
//            content: Text(name),
//            duration: Duration(milliseconds: 300),
//          );
//          _scaffoldState.currentState.showSnackBar(snackbar);
//        },
      );

      GestureDetector gd = GestureDetector(
        child: item,
        onTap: () {
          SnackBar snackbar = SnackBar(
            content: Text(name),
            duration: Duration(milliseconds: 500),
          );
          _scaffoldState.currentState.showSnackBar(snackbar);
        },
        onDoubleTap: () {
          SnackBar snackbar = SnackBar(
            content: Text(candy),
            duration: Duration(milliseconds: 500),
          );
          _scaffoldState.currentState.showSnackBar(snackbar);

        },
        onLongPress: () {
          SnackBar snackbar = SnackBar(
            content: Text(img),
            duration: Duration(milliseconds: 500),
          );
          _scaffoldState.currentState.showSnackBar(snackbar);
        },
      );

      return gd;
    });

    return items.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldState,
      appBar: AppBar(
        title: Text("ListView Http Json"),
      ),
      body: Container(
        child: ListView(
          children: _renderRows(),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    loadData();
    setState(() {});
  }
}
