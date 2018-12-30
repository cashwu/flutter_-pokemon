import 'package:flutter/material.dart';

class MyListViewH extends StatefulWidget {
  @override
  _MyListViewHState createState() => _MyListViewHState();
}

class _MyListViewHState extends State<MyListViewH> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("List View H"),
      ),
      body: Container(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
                width: size.width,
                decoration: BoxDecoration(color: Colors.red),
                child: Center(
                  child: Text(
                    "RED",
                    style: TextStyle(fontSize: 20),
                  ),
                )),
            Container(
                width: size.width,
                decoration: BoxDecoration(color: Colors.blue),
                child: Center(
                  child: Text(
                    "BLUE",
                    style: TextStyle(fontSize: 20),
                  ),
                )),
            Container(
                width: size.width,
                decoration: BoxDecoration(color: Colors.green),
                child: Center(
                  child: Text(
                    "GREEN",
                    style: TextStyle(fontSize: 20),
                  ),
                )),
            Container(
                width: size.width,
                decoration: BoxDecoration(color: Colors.white),
                child: Center(
                  child: Text(
                    "WHITE",
                    style: TextStyle(fontSize: 20),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
