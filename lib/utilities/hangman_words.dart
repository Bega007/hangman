import 'dart:math';

import 'package:flutter/services.dart' show rootBundle;

class HangmanWords {
  int wordCounter = 0;
  List<int> _usedNumbers = [];
  // static List<String> words = [];
  static Map<String, String> words = {
    'answer':'questions will be here',
    'example': 'example question',
  };

  // Future readWords() async {
  //   String fileText = await rootBundle.loadString('assets/hangman_words.txt');
  //   words = fileText.split('\n');
  // }

  void resetWords() {
    wordCounter = 0;
    _usedNumbers = [];
//    _words = [];
  }

  // ignore: missing_return
  getWord() {
    wordCounter += 1;
    var rand = Random();
    int wordLength = words.length;
    int randNumber = rand.nextInt(wordLength);
    bool notUnique = true;
    if (wordCounter - 1 == words.length) {
      notUnique = false;
      return 0;
    }
    while (notUnique) {
      if (!_usedNumbers.contains(randNumber)) {
        notUnique = false;
        _usedNumbers.add(randNumber);
        return randNumber;
      } else {
        randNumber = rand.nextInt(wordLength);
      }
    }
  }

  String getHiddenWord(int wordLength) {
    String hiddenWord = '';
    for (int i = 0; i < wordLength; i++) {
      hiddenWord += '_';
    }
    return hiddenWord;
  }
}
