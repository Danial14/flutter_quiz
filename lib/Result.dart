import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget{
  final VoidCallback restartQuiz;
  final int score;
  Result({required this.restartQuiz, required this.score});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(resultText,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),
          ),
          FlatButton(onPressed: restartQuiz, child: Text(
            "Restart quiz",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontStyle: FontStyle.italic,
              fontSize: 25
            ),
          ))
        ],
      ),
    );
  }
  String get resultText{
    if(score < 8){
      return "You are innocent";
    }
    else if(score >= 8){
      return "You are dangerous";
    }
    else if(score >= 12){
      return "You are bad";
    }
    return "";
}
}