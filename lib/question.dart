import 'package:flutter/material.dart';

class question extends StatelessWidget{
  String questionText;
  question(this.questionText);
  @override
 Widget build(BuildContext context){
  return Container(
    width: double.infinity,
    margin: EdgeInsets.all(10),
    child: Text(
      questionText,
      style: TextStyle(
        fontSize: 28,
        color: Color.fromARGB(255, 2, 7, 58),
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        fontFamily: 'Roboto',
        letterSpacing: 1.5,
        wordSpacing: 1.5,
        shadows: [
          Shadow(
            blurRadius: 5,
            color: Colors.black.withOpacity(0.5),
            offset: Offset(2, 2),
          )
        ],
      ),
      textAlign: TextAlign.center,
    ),
  );
}
}