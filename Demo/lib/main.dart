import "package:flutter/material.dart";

import "./question.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questions = [
    "what's your favourite colour?",
    "What's your favourite animal?"
  ];
  var qi = 0;
  void ansQues() {
    setState(() {
      Text("heya!");
      if (qi >= questions.length - 1) {
        qi = 0;
      } else {
        qi += 1;
      }
    });
    Text("Ans chosen!");

    print(qi);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Welcome to my first app"),
          ),
          body: Column(
            children: [
              Question(questions[qi]),
              RaisedButton(child: Text(questions[0]), onPressed: ansQues),
              RaisedButton(child: Text(questions[1]), onPressed: ansQues),
            ],
          )),
    );
  }
}
