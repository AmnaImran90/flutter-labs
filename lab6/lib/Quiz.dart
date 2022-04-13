import 'Question.dart';

class QuizBrain {
  int _QuestionNumber = 0;
  final List<Questions> _questionBank = [
    Questions('Question  1:  IS there 31 days in june? ', false),
    Questions('Question  2: One day has 24 hours?', true),
    Questions('question  3:  One year has 12 months?', true),
    Questions('question  4:  one year has 360 days?', false),
    Questions('question  5:  Colour of sky is brwon', false),
    Questions('question  6:  Summer came in december', false),
    Questions('question  7:  2+2=4', true),
    Questions('question  8:  Imran is Current PM of Pakistan', false),
    Questions(
        'question  9: This is lec of Mobile Application development', true),
    Questions('question  10: Leap year has 366 days', true),
  ];

  get length => null;

  void nextQuestions() {
    if (_QuestionNumber < _questionBank.length - 1) {
      _QuestionNumber++;
    }
  }

  String GetQuestions() {
    return _questionBank[_QuestionNumber].QuestionString;
  }

  bool CorrectAnswer() {
    return _questionBank[_QuestionNumber].AnswerText;
  }

  bool isFinished() {
    if (_QuestionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _QuestionNumber = 0;
  }
}