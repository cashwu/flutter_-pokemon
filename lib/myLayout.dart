import 'package:flutter/material.dart';

class MyLayout extends StatefulWidget {
  @override
  _MyLayoutState createState() => _MyLayoutState();
}

class _MyLayoutState extends State<MyLayout> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Appbar"),
        ),
        body: new Container(
          child: new ListView(
            children: <Widget>[
              new Container(
                child: new Image.asset(
                  "images/lake.jpg",
                  fit: BoxFit.cover,
                ),
                padding: new EdgeInsets.all(10.0),
                color: Colors.deepPurple,
              ),
              new Container(
                padding: new EdgeInsets.all(10),
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                        child: new Column(
                      children: <Widget>[
                        new Text(
                          "ABC",
                          style: new TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        new Text(
                          "123",
                          style: new TextStyle(fontSize: 18),
                        )
                      ],
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                    )),
                    new Icon(Icons.star),
                    new Text("41")
                  ],
                ),
                color: Colors.amber,
              ),
              new Container(
                padding: EdgeInsets.all(10),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new Column(
                      children: <Widget>[
                        new Icon(Icons.call),
                        new Text("CALL")
                      ],
                    ),
                    new Column(
                      children: <Widget>[
                        new Icon(Icons.router),
                        new Text("ROUTER")
                      ],
                    ),
                    new Column(
                      children: <Widget>[
                        new Icon(Icons.share),
                        new Text("SHARE")
                      ],
                    ),
                  ],
                ),
                color: Colors.blue,
              ),
              new Container(
                padding: EdgeInsets.all(10.0),
                child: new Text("Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run. "),
                color: Colors.green,
              ),
            ],
          ),
        ));
  }
}
