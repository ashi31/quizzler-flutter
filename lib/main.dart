import 'package:flutter/material.dart';

import 'quiz_brain.dart';

QuizBrain quizBrain = QuizBrain();

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Quizzler(),
    );
  }
}

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: QuizPage(),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];
  int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.questionBank[questionNumber].questionText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(
              16.0,
            ),
            child: FlatButton(
              textColor: Colors.white,
              child: Text(
                'True',
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
              color: Colors.green,
              onPressed: () {
                bool correctAnswer =
                    quizBrain.questionBank[questionNumber].questionAnswer;
                if (correctAnswer == true) {}
                setState(() {
                  questionNumber++;
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(
              16.0,
            ),
            child: FlatButton(
              textColor: Colors.white,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
              color: Colors.red,
              onPressed: () {
                bool correctAnswer =
                    quizBrain.questionBank[questionNumber].questionAnswer;
                if (correctAnswer == false) {}
                setState(() {
                  questionNumber++;
                });
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
          child: Row(
            children: scoreKeeper,
          ),
        ),
      ],
    );
  }
}
