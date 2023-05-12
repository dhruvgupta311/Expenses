import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  final int resultscore;
  final Function resethandler;
  Result(this.resultscore,this.resethandler);
   void tyFunctionWrapper(){
    resethandler();
}
  String get resultphrase{
    String resulttext='You Answered All Questions!';
    if(resultscore==30){
      resulttext+="\nAnd You have an outstanding choice";
    }
    else if(resultscore<30){
      resulttext+="\nAnd You have an Excellent choice";
    }
    else{
      resulttext+="\nAnd You have bad choice try again";
    }
    return resulttext;
  }
  @override
  Widget build(BuildContext context){
    return Center(
      child: Column(
        children:<Widget>[
      Text(resultphrase,
      style: TextStyle(fontSize: 20,color: Color(0xFF000000),fontWeight: FontWeight.bold),
      textAlign: TextAlign.center),
      ElevatedButton(child:Text('Restart Quiz'),onPressed: tyFunctionWrapper,),
        ],
      ),
      );
  }
}
