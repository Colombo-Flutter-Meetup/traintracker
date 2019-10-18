import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:scaffold_tab_bar/scaffold_tab_bar.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScaffoldTabBar(
        children: [
          ScreenTab(
            screen: Text("Time Table"),
            tab: BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.times),
              title: Text('Time table'),
            ),
          ),
          ScreenTab(
            screen: Text("Search"),
            tab: BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.search),
              title: Text('Search'),
            ),
          ),
        ],
      )
    );
  }
}