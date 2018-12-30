import 'dart:convert';

import 'package:app/data.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MyListViewJson extends StatefulWidget {
  @override
  _MyListViewJsonState createState() => _MyListViewJsonState();
}

class _MyListViewJsonState extends State<MyListViewJson> {
  List pokemons = [];

  loadData() async {
    var data = jsonDecode(jsonData);
    pokemons = data["pokemon"];
  }

  List<Widget> _renderRows() {

    var index = 0;

    Iterable<Widget> items = pokemons.map((p) {
      var img = p["img"];
      var name = p["name"];
      var candy = p["candy"];

      index++;
      return ListTile(
        title: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(color:  index % 2 == 0 ? Colors.deepPurple : Colors.green),
          child: Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.amber
                ),
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
      );
    });

    return items.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Json"),
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
    setState(() {

    });
  }
}
