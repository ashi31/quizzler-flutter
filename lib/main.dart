import 'package:flutter/material.dart';

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
                'This is where the question text will go',
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
                'Wrong',
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
              color: Colors.red,
              onPressed: () {},
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
                'Right',
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
              color: Colors.green,
              onPressed: () {},
            ),
          ),
        )
      ],
    );
  }
}
