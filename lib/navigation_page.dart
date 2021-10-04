import 'package:flutter/material.dart';
import 'home_page.dart';
import 'search.dart';
import 'profile.dart';

class NavigationPage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _NavigationPage();
  }
}

class _NavigationPage extends State<NavigationPage> {
  int indexPage = 0;
  final List<Widget> widgetsChildren = [
    HomePage(),
    Search(),
    Profile(),
  ];
  void onTapTapped(int index) {
    setState(() {
      indexPage = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsChildren[indexPage],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple,
        ),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indexPage,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("")),
            BottomNavigationBarItem(icon: Icon(Icons.search), title: Text("")),
            BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("")),
          ],
        ),
      ),
    );
  }
}
