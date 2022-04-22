import 'package:flutter/material.dart';
import 'package:quiz_two/Quiz.dart';
import 'package:quiz_two/Result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}
class MyAppState extends State<MyApp>{
  final List<Map<String, Object>> _questions = const[
    {"questionText" : "What is independence date of Pakistan",
      "answers" : [
      {"text" : "14-8-1947", "score" : 5},
      {"text" : "15-8-1947", "score" : 15},
      {"text" : "16-9-1947", "score" : 10}
    ]
    },
    {
      "questionText" : "What is favouriate animal",
      "answers" : [
        {"text" : "Tiger", "score" : 5},
        {"text" : "Lion", "score" : 15},
        {"text" : "Cat", "score" : 3}
      ]
    },
    {
      "questionText" : "What is your favouriate color",
      "answers" : [
        {"text" : "Green", "score" : 3},
        {"text" : "Blue", "score" : 4},
        {"text" : "Red", "score" : 8}
      ]
    }
  ];
  int _questionIndex = 0;
  int _score = 0;
  void answerQuestion(int score){
    setState(() {
      _questionIndex += 1;
      _score += score;
    });
  }
  void resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _score = 0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Quiz"
            ),
          ),
          body: _questionIndex < _questions.length ?
          Quiz(questions: _questions,
            callBack: answerQuestion,
            questionIndex: _questionIndex,) :
              Result(restartQuiz: resetQuiz, score: _score,)
          ,
        ),
    );
  }
}