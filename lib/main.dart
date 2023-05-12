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
'answers': [{'text': 'J.K. Rowling', 'score': 10},
{'text': 'Stephen King', 'score': 7},
{'text': 'George R.R. Martin', 'score': 6},
{'text': 'Dan Brown', 'score': 8}],
},

{
'questionText': 'What is the name of the highest mountain in the world?',
'answers': [{'text': 'Mount Everest', 'score': 10},
{'text': 'K2', 'score': 7},
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
'answers': [{'text': 'Au', 'score': 10},
{'text': 'Ag', 'score': 7},
{'text': 'Cu', 'score': 6},
{'text': 'Fe', 'score': 8}],
},
{
'questionText': 'What is the smallest planet in our solar system?',
'answers': [{'text': 'Mercury', 'score': 10},
{'text': 'Venus', 'score': 7},
{'text': 'Mars', 'score': 6},
{'text': 'Pluto', 'score': 8}]
},

{
'questionText': 'Which country gifted the Statue of Liberty to the United States?',
'answers': [{'text': 'France', 'score': 10},
{'text': 'Spain', 'score': 6},
{'text': 'Italy', 'score': 7},
{'text': 'Russia', 'score': 8}]
},

{
'questionText': 'What is the largest organ in the human body?',
'answers': [{'text': 'Skin', 'score': 10},
{'text': 'Liver', 'score': 7},
{'text': 'Brain', 'score': 6},
{'text': 'Heart', 'score': 8}],
},

{
'questionText': 'What is the most widely spoken language in the world?',
'answers': [{'text': 'Mandarin Chinese', 'score': 10},
{'text': 'English', 'score': 7},
{'text': 'Spanish', 'score': 6},
{'text': 'Arabic', 'score': 8}],
},

{
'questionText': 'Who painted the famous artwork "The Mona Lisa"?',
'answers': [{'text': 'Leonardo da Vinci', 'score': 10},
{'text': 'Pablo Picasso', 'score': 7},
{'text': 'Vincent van Gogh', 'score': 6},
{'text': 'Michelangelo', 'score': 8}],
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

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionindex < _questions.length
            ? Quiz(
                answerchosen: _answerchosen,
                questionindex: _questionindex,
                questions: _questions,
              )
            : Result(_totalscore,_resetQuiz),
      ),
    );
  }
}