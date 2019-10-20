import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String title;

  Header(this.title);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 240.0,
      floating: false,
      pinned: false,
      flexibleSpace: FlexibleSpaceBar(
          title: Padding(
            padding: const EdgeInsets.only(bottom: 24.0),
            child: Text(title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36.0,
                )),
          ),
          background: Container(
            color: Colors.blue,
          )),
    );
  }
}