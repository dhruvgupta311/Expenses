import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main(){
  runApp(MyApp());
}
// void main()=> runApp(MyApp());
class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    // TODO: implement createState
    return _MyAppState();
    // underscore means we can only access this state class in main.dart file only making it private from public
  }
}

class _MyAppState extends State<MyApp>{
  var _questionindex = 0;
  final List _questions=[
    {
'questionText': 'What is the capital city of France?',
'answers': [{'text': 'Rome', 'score': 8},
{'text': 'Berlin', 'score': 6},
{'text': 'London', 'score': 7},
{'text': 'Paris', 'score': 10}],
},
  {
'questionText': 'Who wrote the Harry Potter book series?',
'answers': [{'text': 'Dan Brown', 'score': 8},
{'text': 'Stephen King', 'score': 7},
{'text': 'George R.R. Martin', 'score': 6},
{'text': 'J.K. Rowling', 'score': 10}],
},

{
'questionText': 'What is the name of the highest mountain in the world?',
'answers': [{'text': 'K2', 'score': 7},
{'text': 'Mount Everest', 'score': 10},
{'text': 'Makalu', 'score': 6},
{'text': 'Kangchenjunga', 'score': 8}],
},

{
'questionText': 'Who won the Best Actor award at the 2021 Academy Awards?',
'answers': [{'text': 'Anthony Hopkins', 'score': 10},
{'text': 'Chadwick Boseman', 'score': 9},
{'text': 'Riz Ahmed', 'score': 8},
{'text': 'Gary Oldman', 'score': 7}],
},

{
'questionText': 'What is the chemical symbol for gold?',
'answers': [{'text': 'Fe', 'score': 8},
{'text': 'Ag', 'score': 7},
{'text': 'Cu', 'score': 6},
{'text': 'Au', 'score': 10}],
},
    //questions=[]; this does not work if questions is a const value as it cannot be changed.
];
  var _totalscore=0;
  void _resetQuiz(){
    setState((){
    _questionindex=0;
    _totalscore=0;
    });
  }
  void _answerchosen(int score){
    _totalscore+=score;
    setState((){
      _questionindex++;
    });
    if (_questionindex < _questions.length) {
      print("We have more questions");
    } else {
      print("No more questions!!");
    }
  }
/*
          title: Text(
            'MY FIRST APP',
            

*/
  @override
 Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white, // set the background color here
       appBar: AppBar(
  title: Text('GK Quiz App',
   style: TextStyle(
              fontWeight: FontWeight.w900,
            ),
          textAlign: TextAlign.center),
  backgroundColor: Color.fromARGB(255, 47, 1, 94),// Color.fromARGB(255, 42, 4, 80)),
),

        body:
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(5),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://e0.pxfuel.com/wallpapers/672/837/desktop-wallpaper-alone-broken-heart-boy.jpg'
                  ),
              fit: BoxFit.cover,
            ),
          ),

       child:  _questionindex < _questions.length
            ? Quiz(
                answerchosen: _answerchosen,
                questionindex: _questionindex,
                questions: _questions,
              )
            : Result(_totalscore,_resetQuiz),
        ),
      ),
    );
  }
}