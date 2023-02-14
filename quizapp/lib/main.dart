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
    setState(() {});
  }

  var questions = [
    "What is your favorite animal?",
    "What is your favorite Color?",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        body: SafeArea(
            child: Container(
          child: Column(
            children: [
              Questions(
                questions[index],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: Answer(answerPressed),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: Answer(answerPressed),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: Answer(answerPressed),
                ),
              ),
            ],
          ),
        )));
  }
}
