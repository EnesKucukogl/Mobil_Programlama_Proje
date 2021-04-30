import 'package:flutter/material.dart';
import 'package:muffin/Constanst.dart';

class Exam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuestionPage(),
          ),
        ),
      ),
    );
  }
}

class QuestionPage extends StatefulWidget {
  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  List<Widget> selection = [];
  List<String> question = [
    "A hundred years have a thousand years",
    "every person has a name",
    "muffins can fly",
    "butterflies are good fighters",
    "people have a mouth",
    "orange is blue",
    'the figures are "0,1,2,3,4,5,6,7,8,9,"',
    "kids love to watch cartoons",
    "playing with fire is dangerous",
    "I love the muffin application",
  ];
  List<bool> Answers = [
    false,
    true,
    false,
    false,
    true,
    false,
    true,
    true,
    true,
    true
  ];
  int QuestionIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                question[QuestionIndex],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Wrap(
          children: selection,
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    child: RaisedButton(
                      padding: EdgeInsets.all(12),
                      textColor: Colors.white,
                      color: Colors.red[400],
                      child: Icon(
                        Icons.thumb_down,
                        size: 30.0,
                      ),
                      onPressed: () {
                        bool KTrueIcon = Answers[QuestionIndex];
                        setState(() {
                          if (KTrueIcon == false) {
                            selection.add(TrueIcon);
                          } else {
                            selection.add(FalseIcon);
                          }
                          QuestionIndex++;
                          //selection.add(FalseIcon);
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    child: RaisedButton(
                      padding: EdgeInsets.all(12),
                      textColor: Colors.white,
                      color: Colors.green[400],
                      child: Icon(Icons.thumb_up, size: 30.0),
                      onPressed: () {
                        bool KFalseIcon = Answers[QuestionIndex];
                        setState(() {
                          if (KFalseIcon == true) {
                            selection.add(TrueIcon);
                          } else {
                            selection.add(FalseIcon);
                          }
                          QuestionIndex++;
                          //selection.add(FalseIcon);
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
