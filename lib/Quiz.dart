import 'package:flutter/material.dart';
import 'package:quiz_two/Question.dart';
import 'Answer.dart';
class Quiz extends StatelessWidget{
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function callBack;
  Quiz({required this.questions, required this.questionIndex, required this.callBack});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(25),
      child: Center(
        child: Column(
          children: [
            Question(question: questions[questionIndex]["questionText"] as String),
            ...(questions[questionIndex]["answers"] as List<Map<String, Object>>).map((ans){
              return Answer(answerText : ans["text"] as String, answerCallback: (){callBack(ans["score"]);},);
            }).toList()
          ],
        ),
      ),
    );
  }
}