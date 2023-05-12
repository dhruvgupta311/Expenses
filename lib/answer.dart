import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answertext;
  Answer(this.selectHandler, this.answertext); //constructor
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
              Color.fromARGB(255, 33, 100, 243)),
        ),
        child: Text(
          answertext,
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        onPressed: () => selectHandler,
      ),
    );
  }
}
