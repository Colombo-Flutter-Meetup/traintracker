import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:scaffold_tab_bar/scaffold_tab_bar.dart';
import 'package:trainfinder/widgets/text_form_field.dart';

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
          screen: _search(),
          tab: BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.times),
            title: Text('Time table'),
          ),
        ),
        ScreenTab(
          screen: _timeTable(),
          tab: BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.search),
            title: Text('Search'),
          ),
        ),
      ],
    ));
  }

  Widget _timeTable() {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 60,
          ),
          Center(
            child: Text(
              "Find Train Schedule",
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.teal,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          LabelTextField(
            labelText: "From where",
            hintText: "From where",
          ),
          SizedBox(
            height: 20,
          ),
          LabelTextField(
            labelText: "To where",
            hintText: "To where",
          ),
          Row(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.swap_vert,
                    color: Colors.teal,
                  ),
                ),
              ),
              Text("swap"),
              Padding(
                padding: EdgeInsets.only(left: 220),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: IconButton(
                  icon: Icon(FontAwesomeIcons.dropbox),
                  onPressed: () {},
                ),
              ),
              Text("more")
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 40),
              ),
              ButtonTheme(
                minWidth: MediaQuery.of(context).size.width * 0.8,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {},
                  child: Text("Submit"),
                  color: Colors.teal,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _search() {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 60,
          ),
          Center(
            child: Text(
              "Station Time Table",
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.teal,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          LabelTextField(
            hintText: "Station Name",
            labelText: "Station Name",
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 300),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  icon: Icon(Icons.more),
                  onPressed: () {},
                ),
              ),
              Text("more"),
              SizedBox(
                height: 10,
              ),
            ],
          ),
          ButtonTheme(
            minWidth: 300,
            child: RaisedButton(
              child: Text("Search"),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              color: Colors.teal,
              onPressed: (){},
            ),
          ),
        ],
      ),
    );
  }
}
