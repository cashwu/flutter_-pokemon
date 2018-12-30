import 'package:flutter/material.dart';
import 'tabs/home.dart';
import 'tabs/group.dart';
import 'tabs/iphone.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {

  Widget activeWdiget = Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      drawer: Drawer(
        child: new ListView(
          children: <Widget>[
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.asset(
                        "images/022.png",
                        width: 80,
                        height: 80,
                        fit: BoxFit.fill,
                      ),
                      Text(
                        "Cash",
                        style:
                            TextStyle(fontSize: 20, color: Colors.deepPurple),
                      )
                    ],
                  ),
                )),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                setState(() {
                  Navigator.of(context).pop();
                });
                activeWdiget = Home();
              },
            ),
            ListTile(
                leading: Icon(Icons.group),
                title: Text("Group"),
                onTap: () {
                  setState(() {
                    activeWdiget = Group();
                  });
                  Navigator.of(context).pop();
                }),
            ListTile(
                leading: Icon(Icons.phone_iphone),
                title: Text("Iphone"),
                onTap: () {
                  setState(() {
                    activeWdiget = Iphone();
                  });
                  Navigator.of(context).pop();
                })
          ],
        ),
      ),
      body: Center(
        child: activeWdiget,
      ),
    );
  }
}
