import 'package:flutter/material.dart';

import './questions.dart';
import './answers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      home: MyHomePage(),
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyHomepageState();
  }
}

class MyHomepageState extends State<MyHomePage> {
  var index = 0;

  void answerPressed() {
    index++;
    setState(() {}); //updates state
  }

  //list of maps to store question and answer options
  var questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': ['Max', 'Max', 'Max', 'Max'],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        body: index < questions.length
            ? SafeArea(
                child: Container(
                  child: Column(
                    children: [
                      Questions(
                        questions[index]['questionText'].toString(),
                      ),
                      ...(questions[index]['answers'] as List<String>)
                          .map((answer) {
                        return Answer(answerPressed, answer);
                      }).toList()
                    ],
                  ),
                ),
              )
            : Center(
                child: Text(
                  'You did it',
                  style: TextStyle(fontSize: 32),
                ),
              ));
  }
}
