import 'package:flutter/material.dart';
import 'package:muffin/MainWindow.dart';

class SignUp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "ArchitectsDaughter"),
      home: Scaffold(
        backgroundColor: Colors.pinkAccent,
        appBar: AppBar(
          title: Text("Sign Up"),
          backgroundColor: Colors.pink,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    maxLength: 50,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Name Surname',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    maxLength: 50,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'E-mail',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    maxLength: 50,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter a password',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SignUpButton(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class SignUpButton extends StatelessWidget {
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
        "    SignUp    ",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      onPressed: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MainWindow(),
        ),
      ),
    );
  }
}