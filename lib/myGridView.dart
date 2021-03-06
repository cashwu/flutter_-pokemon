import 'package:flutter/material.dart';

class MyGridView extends StatefulWidget {
  @override
  _MyGridViewState createState() => _MyGridViewState();
}

class _MyGridViewState extends State<MyGridView> {
  @override
  Widget build(BuildContext context) {
    List<Widget> items = List.generate(31, (index) {
      var url = "00" + (index + 1).toString();

      url = url.length > 3 ? url.substring(1) : url;

      return new Container(
        child: new Image.asset(
          "images/$url.png",
          fit: BoxFit.cover,
        ),
        color: Colors.deepPurple,
      );
    });

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("App Bar"),
      ),
      body: new GridView.count(
        crossAxisCount: 3,
        children: items,
        mainAxisSpacing: 2.0,
        crossAxisSpacing: 2.0,
      ),
    );
  }
}
