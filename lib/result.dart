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
    if(resultscore==50){
      resulttext+="\nAnd all Answers are correct";
    }
    else if(resultscore<50 && resultscore>=40){
      resulttext+="\nAnd Few answers are wrong!";
    }
    else{
      resulttext+="\n Your score is low Pls Try Again";
    }
    return resulttext;
  }
  @override
  Widget build(BuildContext context){
    
    return Center(
      
      child: Column(
        
        children:<Widget>[
          
      Text(resultphrase,
      style: TextStyle(
              fontWeight: FontWeight.w900,fontSize: 27,
            ),
          textAlign: TextAlign.center),
      
      ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
              Color.fromARGB(255, 42, 4, 80)),
        ),
        child:
        Text('Restart Quiz',style: TextStyle(fontSize: 20, color: Colors.white),),
        onPressed: tyFunctionWrapper,),
        ],
      ),
      );
  }
}
