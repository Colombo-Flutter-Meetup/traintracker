import 'package:flutter/material.dart';
import 'package:trainfinder/screens/home_screen.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Train tracker",
      darkTheme: ThemeData.dark(),
      home: Homepage(),
    );
  }
}