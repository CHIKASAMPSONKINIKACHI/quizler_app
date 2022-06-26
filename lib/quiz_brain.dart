
import 'package:flutter/material.dart';
import 'package:klin/result.dart';

import 'question.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class QuizBrain {
  int _questionNumber = 0;
   List<Question> _questionBank = [
    Question('You can lead a cow upstairs but not downstairs.', false),
    Question('Approximately one quarter of the human bone is in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question('No piece of square dry paper can be folded into more than 7 times',
        false),
    Question(
        'In London, UK, If you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog .',
        true),
    Question(
        'In west Virginia, USA, If you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
    Question('All crops are plants, but all plants are not crops', true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }


  String getQuestionText() {
    return _questionBank[_questionNumber].questionText ?? '';
  }

  bool? getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  void isFinished(){
    if(_questionNumber + 1 == _questionBank.length - 1){
     FinalResult();
     // Alert(context: context, title: "RFLUTTER", desc: "Flutter is awesome.").show();
    }
  }
}
