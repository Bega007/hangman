import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hangman_game/components/action_button.dart';
import 'package:hangman_game/main.dart';
import 'package:hangman_game/utilities/constants.dart';
import 'package:hangman_game/utilities/hangman_words.dart';
import 'package:hangman_game/utilities/language.dart';
import 'package:hangman_game/utilities/language_constants.dart';
import 'game_screen.dart';
import 'loading_screen.dart';

class HomeScreen extends StatefulWidget {
  final HangmanWords hangmanWords = HangmanWords();

  HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    widget.hangmanWords.readWords();

    void dropdownCallback(Language? language) {
      if (language is String) {
        setState(() {
          language?.name;
        });
      }
    }

    return Scaffold(
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Center(
            child: Container(
              margin: const EdgeInsets.fromLTRB(8.0, 1.0, 8.0, 8.0),
              child: Text(
                translation(context).hangMan,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 58.0,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 3.0),
              ),
            ),
          ),
          Center(
            child: Image.asset(
              'assets/images/gallow.png',
              height: height * 0.40,
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Center(
            child: IntrinsicWidth(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(
                    //width: 140,
                    height: 64,
                    child: ActionButton(
                      buttonTitle: translation(context).start,
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GameScreen(
                              hangmanObject: widget.hangmanWords,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 18.0,
                  ),
                  SizedBox(
                    //                    width: 155,
                    height: 64,
                    child: ActionButton(
                      buttonTitle: translation(context).highScores,
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoadingScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 18.0,
                  ),
                  Container(
//                    width: 155,
                    height: 64,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: kActionButtonColor,
                    ),
                    child: DropdownButton<Language>(
                      hint: Center(
                        child: Text(
                          translation(context).language,
                          style: kActionButtonTextStyle,
                        ),
                      ),
                      underline: SizedBox(),
                      dropdownColor: kActionButtonHighlightColor,
                      icon: SizedBox(),
                      onChanged: (Language? language) async {
                        if (language != null) {
                          Locale _locale =
                              await setLocale(language.languageCode);
                          MainApp.setLocale(context, _locale);
                          dropdownCallback;
                        }
                      },
                      items: Language.languageList()
                          .map<DropdownMenuItem<Language>>(
                            (e) => DropdownMenuItem<Language>(
                              value: e,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Text(
                                    e.flag,
                                    style: const TextStyle(fontSize: 30),
                                  ),
                                  Text(e.name),
                                ],
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  const SizedBox(
                    height: 18.0,
                  ),
                  SizedBox(
//                    width: 155,
                    height: 64,
                    child: ActionButton(
                      buttonTitle: translation(context).exit,
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoadingScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
