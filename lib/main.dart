import 'package:flutter/material.dart';

import 'LoginPage.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "ArchitectsDaughter"),
      home: Scaffold(
        backgroundColor: Colors.pinkAccent,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                CircleAvatar(
                  radius: 70.0,
                  backgroundColor: Colors.pinkAccent,
                  backgroundImage: AssetImage("assets/images/muffin.png"),
                ),
                Text(
                  "Hi. I'm Muffin",
                  style: TextStyle(
                    fontFamily: "ArchitectsDaughter",
                    fontSize: 45,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "it's the muffin time",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(50.0), child: LetsGoButton()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LetsGoButton extends StatelessWidget {
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
        "    Lets Go!    ",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      onPressed: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage())),
    );
  }
}
