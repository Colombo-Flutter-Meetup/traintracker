import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trainfinder/widgets/text_form_field.dart';

class NoticesScreen extends StatefulWidget {
  @override
  _NoticesScreenState createState() => _NoticesScreenState();
}

class _NoticesScreenState extends State<NoticesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Notices(),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(FontAwesomeIcons.ad),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ComposeNotice()));
        },
        label: Text("Compose notice"),
      ),
    );
  }

  Widget Notices() {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 60,
          ),
          Row(
            children: <Widget>[
              Text(
                "Ruhunu kumari",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.teal,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          Card(
            child: ListTile(
              leading: Icon(FontAwesomeIcons.fileImport),
              title: Text("Ruhunu kumari will be delayed 10 minutes today"),
            ),
          ),
        ],
      ),
    );
  }
}

class ComposeNotice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _composeNotice(),
    );
  }

  Widget _composeNotice() {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          LabelTextField(
            hintText: "Train name",
            labelText: "Train name",
          ),
          SizedBox(
            height: 20,
          ),
          LabelTextField(
            hintText: "Notice massage",
            labelText: "Notice massage",
          ),
          SizedBox(
            height: 20,
          ),
          LabelTextField(
            hintText: "Current Station",
            labelText: "Current Station",
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 100),
              ),
              ButtonTheme(
              minWidth: 200,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  color: Colors.teal,
                  onPressed: () {},
                  child: Text("Submit notice"),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
