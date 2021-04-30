import 'package:flutter/material.dart';
import 'package:muffin/ShowExam.dart';

import 'SignUp.dart';
class MainWindow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "ArchitectsDaughter"),
      home: Scaffold(
        backgroundColor: Colors.pinkAccent,
        appBar: AppBar(
          title: Text("Welcome The Muffin"),
          backgroundColor: Colors.pink,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ShowTextButton(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ShowTextButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(color: Colors.red)),
      color: Colors.pink,
      highlightColor: Colors.red,
      elevation: 20,
      child: Text(
        "    Show The Exam    ",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      onPressed: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Exam(),
        ),
      ),
    );
  }
}
