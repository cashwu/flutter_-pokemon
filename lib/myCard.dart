import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {

  @override
  Widget build(BuildContext context) {

    var myCard = Card(
      elevation: 30.0,
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(
              "Cash",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "PG",
              style: TextStyle(fontSize: 20),
            ),
            leading: Icon(
              Icons.account_box,
              color: Colors.blue,
            ),
          ),
          Divider(
            height: 10.0,
            color: Colors.deepPurple,
            indent: 20.0,
          ),
          ListTile(
            title: Text("cash@cashwu.com"),
            leading: Icon(
              Icons.email,
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text("09123456789"),
            leading: Icon(
              Icons.phone,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );

    var sizeBox = Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
        height: 220.0,
        child: myCard,
      ),
    );

    var myContainer = Center(
      child: sizeBox,
    );

    return Scaffold(
        appBar: AppBar(
          title: Text("My Card"),
        ),
        body: myContainer);
  }
}
