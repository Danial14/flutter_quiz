import 'package:flutter/material.dart';

class Question extends StatelessWidget{
  final String question;
  Question({required this.question});
  @override
  Widget build(BuildContext context) {
    return
      Text(
      question,
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold
      ),
    );
  }
}