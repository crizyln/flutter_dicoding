import 'package:flutter/material.dart';
import 'package:flutter_app/screenFix.dart';
import './quiz.dart';
import './result.dart';

class screenQuiz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _screenQuizState();
  }
}

class _screenQuizState extends State<screenQuiz> {
  final _questions = const [
    {
      'questionText': 'Q1. English is more popular ______ Swedish.',
      'answers': [
        {'text': 'Them', 'score': -2},
        {'text': 'Then', 'score': -2},
        {'text': 'Than', 'score': 10},
        {'text': 'Those', 'score': -2},
      ],
    },
    {
      'questionText':
          'Q2. Rivan: Are doing anything tonight?       Shasa: ....',
      'answers': [
        {'text': 'I stay at home and watch television.', 'score': -2},
        {'text': 'I stayed at home and watched television.', 'score': -2},
        {'text': 'I have stayed at home and watched television.', 'score': -2},
        {'text': 'I will stay at home and watch television.', 'score': 10},
      ],
    },
    {
      'questionText': ' Q3. Sport is very useful for our health. There are……',
      'answers': [
        {'text': 'Sport we can do.', 'score': -2},
        {'text': 'A lot of sports we can do.', 'score': 10},
        {'text': 'Sport any we can do.', 'score': -2},
        {'text': 'Some sport we can do.', 'score': -2},
      ],
    },
    {
      'questionText': 'Q4. Young deer…………',
      'answers': [
        {'text': 'Are called fawns.', 'score': 10},
        {'text': 'Be fawns.', 'score': -2},
        {'text': 'Was fawns.', 'score': -2},
        {'text': 'Is fawns.', 'score': -2},
      ],
    },
    {
      'questionText':
          'Q5. A dream about falling…………',
      'answers': [
        {'text': 'Is scary', 'score': 10},
        {'text': 'Are scary', 'score': -2},
        {'text': 'Were scary', 'score': -2},
        {'text': 'Very scary is', 'score': -2},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
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
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('It Is Time For Quiz'),
          backgroundColor: Colors.pink[400],
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                ) //Quiz
              : Result(_totalScore, _resetQuiz),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
