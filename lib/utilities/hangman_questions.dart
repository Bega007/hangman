import 'dart:math';

import 'package:flutter/services.dart' show rootBundle;

class HangmanQuestions {
  int questionCounter = 0;
  List<int> _usedNumberQ = [];
  List<String> _questions = [];

  Future readQuestions() async {
    String fileText = await rootBundle.loadString('assets/hangman_questions.txt');
    _questions = fileText.split('\n');
  }

  void resetWords() {
    questionCounter = 0;
    _usedNumberQ = [];
//    _words = [];
  }

  // ignore: missing_return
  getQuestion() {
    questionCounter += 1;
    var randQ = Random();
    int questionsLength = _questions.length;
    int randNumberQ = randQ.nextInt(questionsLength);
    bool notUnique = true;
    if (questionCounter - 1 == _questions.length) {
      notUnique = false;
      return '';
    }
    while (notUnique) {
      if (!_usedNumberQ.contains(randNumberQ)) {
        notUnique = false;
        _usedNumberQ.add(randNumberQ);
        return _questions[randNumberQ];
      } else {
        randNumberQ = randQ.nextInt(questionsLength);
      }
    }
  }

  String getUnhiddenQuestions(int questionsLength) {
    String unhiddenQuestion = '';
    for (int i = 0; i < questionsLength; i++) {
     unhiddenQuestion += '_';
    }
    return unhiddenQuestion;
  }
}
