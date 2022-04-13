import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Quiz.dart';
import 'Question.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      home: Theme(
        data: ThemeData(
          splashColor: Color.fromARGB(255, 75, 124, 177),
        ),
        child: Scaffold(
          backgroundColor: Color.fromARGB(208, 53, 46, 46),
          appBar: AppBar(
            title: Text('Quiz App'),
            backgroundColor: Color.fromARGB(255, 171, 183, 58),
          ),
          body: SafeArea(
            child: MyQuiz(),
          ),
        ),
      ),
    );
  }
}

class MyQuiz extends StatefulWidget {
  @override
  _MyQuizState createState() => _MyQuizState();
}

class _MyQuizState extends State<MyQuiz> {
  QuizBrain obj = QuizBrain();
  List<Widget> scorkeeper = [];

  void compareAnswer(bool answer) {
    bool corretAnswer = obj.CorrectAnswer();
    if (obj.isFinished() == true) {
      obj.reset();
      scorkeeper = [];
    } else {
      if (corretAnswer == answer) {
        scorkeeper.add(
          Icon(Icons.check, color: Colors.green),
        );
      } else {
        scorkeeper.add(
          Icon(Icons.close, color: Colors.red),
        );
      }
      setState(() {
        obj.nextQuestions();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Center(
              child: Text(
                obj.GetQuestions(),
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.20),
              child: FlatButton(
                shape: StadiumBorder(),
                onPressed: () {
                  compareAnswer(true);
                },
                child: Text(
                  'True',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                color: Colors.green,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.20),
              child: FlatButton(
                shape: StadiumBorder(),
                color: Colors.red,
                onPressed: () {
                  compareAnswer(false);
                },
                child: Text(
                  'False',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: scorkeeper,
          )
        ],
      ),
    );
  }
}