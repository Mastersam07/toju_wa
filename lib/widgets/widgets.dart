import 'package:flutter/material.dart';

Widget MyAppBar() {
  return AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Toju",
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600),
        ),
        Text(
          "Wa",
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
        )
      ],
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.share),
        onPressed: null,
      )
    ],
    backgroundColor: Colors.transparent,
    elevation: 0.0,
  );
}
