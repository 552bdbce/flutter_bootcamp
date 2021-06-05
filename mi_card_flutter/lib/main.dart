// ignore: avoid_web_libraries_in_flutter
// import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 100,
                  margin: EdgeInsets.only(left: 20),
                  padding: EdgeInsets.all(20),
                  color: Colors.blueGrey[100],
                  child: Text("Container 1"),
                ),
                Container(
                  height: 100,
                  margin: EdgeInsets.only(left: 20),
                  padding: EdgeInsets.all(20),
                  color: Colors.blueGrey[100],
                  child: Text("Container 1"),
                ),
                Container(
                  height: 100,
                  margin: EdgeInsets.only(left: 20),
                  padding: EdgeInsets.all(20),
                  color: Colors.blueGrey[100],
                  child: Text("Container 1"),
                ),
              ],
            ),
        ),
      ),
    );
  }
}

