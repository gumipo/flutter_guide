import "package:flutter/material.dart";
import "question.dart";

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  var _questionIndex = 0;
  var questions = ["好きな色は何色ですか？", "好きな動物は？", "座右の銘は？"];

  void _answerQuestion(int index) {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(questions[index]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("APP"),
          ),
          body: Center(
              child: Column(
            children: [
              Text(questions[_questionIndex]),
              ElevatedButton(
                child: Text("neko"),
                onPressed: () => _answerQuestion(0),
              ),
              ElevatedButton(
                child: Text("test"),
                onPressed: () => _answerQuestion(1),
              ),
              ElevatedButton(
                  child: Text("test"), onPressed: () => _answerQuestion(2)),
            ],
          ))),
    );
  }
}
