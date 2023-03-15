import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your fav color?',
      'answers': [
        {'text': 'black', 'score': 10},
        {'text': 'white', 'score': 9},
        {'text': 'green', 'score': 8},
        {'text': 'orange', 'score': 7},
      ]
    },
    {
      'questionText': 'What\'s your fav animal?',
      'answers': [
        {'text': 'lion', 'score': 10},
        {'text': 'tiger', 'score': 9},
        {'text': 'deer', 'score': 8},
        {'text': 'fox', 'score': 7},
      ]
    },
    {
      'questionText': 'What\'s your fav place?',
      'answers': [
        {'text': 'India', 'score': 10},
        {'text': 'LA', 'score': 9},
        {'text': 'DC', 'score': 8},
        {'text': 'Rome', 'score': 7},
      ]
    },
    {
      'questionText': 'What\'s your brand?',
      'answers': [
        {'text': 'google', 'score': 10},
        {'text': 'Apple', 'score': 9},
        {'text': 'sony', 'score': 8},
        {'text': 'samsung', 'score': 7},
      ]
    }
  ];
  var _questionIndex = 0;
  int _totalScore = 0;
  void _resetData() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Training'),
        ),
        body: _questionIndex < _questions.length
            ? QUIZ(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore, _resetData),
      ),
    );
  }
}
