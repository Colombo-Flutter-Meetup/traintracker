import 'package:flutter/material.dart';
import 'package:trainfinder/screens/main_screen.dart';
import 'package:trainfinder/widgets/common/appbar.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            Header("Train Tracker"),
          ];
        },
        body: Container(
          child: Center(
            child: FlatButton(
              color: Colors.amber,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              child: Text("Start"),
              onPressed: ()=>Navigator.push(context, MaterialPageRoute(
                builder: (context)=>Mainscreen()
              ))
            ),
          ),
        ),
      ),
    );
  }
}
