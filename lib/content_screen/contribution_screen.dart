import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trainfinder/widgets/text_form_field.dart';

class Contribution extends StatefulWidget {
  @override
  _ContributionState createState() => _ContributionState();
}

class _ContributionState extends State<Contribution> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Contribution(),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(FontAwesomeIcons.ad),
        onPressed: () {},
        label: Text("Add"),
      ),
    );
  }

  Widget Contribution() {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Center(
            child: Text(
              "Contribute",
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.teal,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          LabelTextField(
            hintText: "Train name",
            labelText: "Train name",
          ),
          SizedBox(
            height: 10, 
          ),
          LabelTextField(
            hintText: "Train time",
            labelText: "Train time",
          )
        ],
      ),
    );
  }
}
