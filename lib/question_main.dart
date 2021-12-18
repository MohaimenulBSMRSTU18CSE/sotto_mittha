import 'questions.dart';

class QuestionsMain {
  int _questionIndex = 0;
  List<Questions> _questionBank = [
    Questions(
      'The earth is the fourth planet from the sun.',
      false,
    ),
    Questions(
      'The planet Venus has no moons.',
      true,
    ),
    Questions(
      'A lunar eclipse occurs when the sun passes',
      false,
    ),
    Questions(
      'Jupiter is composed mostly of iron.',
      true,
    ),
    Questions(
      'The sun is a star of average size.',
      true,
    ),
    Questions(
      'The Big Apple is a nickname given to Washington D.C in 1971.',
      false,
    ),
  ];

  void nextPage() {
    if (_questionIndex < _questionBank.length - 1) {
      _questionIndex++;
    }
  }

  bool isFinished() {
    if (_questionIndex >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionIndex].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionIndex].questionAnswer;
  }

  void reset() {
    _questionIndex = 0;
  }
}