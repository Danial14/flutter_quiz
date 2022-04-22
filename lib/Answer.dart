import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget{
  final String answerText;
  final VoidCallback answerCallback;
  Answer({required this.answerText, required this.answerCallback});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: answerCallback,
        child: Text(answerText),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.purple),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(25)
            )
          )
        ),
      ),
    );
  }
}