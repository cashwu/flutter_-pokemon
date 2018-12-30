import 'package:app/tabs/group.dart';
import 'package:app/tabs/home.dart';
import 'package:app/tabs/iphone.dart';
import 'package:flutter/material.dart';

class MyTabs extends StatefulWidget {
  @override
  _MyTabsState createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> {
  @override
  Widget build(BuildContext context) {
    var tabController = DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tabs"),
            bottom: TabBar(
                indicatorColor: Colors.deepPurple,
                indicatorWeight: 5.0,
                tabs: <Widget>[
                  Tab(
                    text: "Home",
                    icon: Icon(Icons.home),
                  ),
                  Tab(
                    text: "Group",
                    icon: Icon(Icons.group),
                  ),
                  Tab(
                      text: "Iphone",
                      icon: Icon(
                        Icons.phone_iphone,
                      ))
                ]),
          ),
          body: TabBarView(
            children: <Widget>[Home(), Group(), Iphone()],
          ),
        ));

    return tabController;
  }
}
