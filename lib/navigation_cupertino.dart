import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'home_page.dart';
import 'search.dart';
import 'profile.dart';
import 'review_list.dart';

class NavigationCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(backgroundColor: Color(0x33FFFFFF), items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.indigo),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.indigo),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.indigo),
            label: "",
          ),
        ]),
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => HomePage(),
              );
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => Search(),
              );
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) => Profile(),
              );
            default:
              return CupertinoTabView(
                builder: (BuildContext context) => ReviewList(),
              );
          }
        },
      ),
    );
  }
}
