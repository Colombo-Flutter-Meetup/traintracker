import 'package:flutter/material.dart';
import 'package:trainfinder/widgets/common/appbar.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CustomScrollView(
        slivers: <Widget>[
          Header("Train \n Tracker")
        ],
      )
    );
  }
}