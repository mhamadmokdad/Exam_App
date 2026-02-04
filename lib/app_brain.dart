
import 'questions.dart';
class AppBrain {
  int _questionNumber = 0;
   // ignore: prefer_final_fields
   List<Questions> _questionBank = [
    // ignore: unnecessary_string_escapes
    Questions(
      q: 'عدد كواكب المجموعة الشمسية تساوي ثماني كواكب',
      i: 'images/image-1.jpg',
      a: true,
    ),
    // ignore: unnecessary_string_escapes
    Questions(q: 'القطط هي حيوانات لاحمة', i: 'images/image-2.jpg', a: true),
    // ignore: unnecessary_string_escapes
    Questions(
      q: 'الصين تقع في قارة افريقيا',
      i: 'images/image-3.jpg',
      a: false,
    ),
    // ignore: unnecessary_string_escapes
    Questions(q: 'الارض مسطحة وليست كروية', i: 'images/image-4.jpg', a: false),
    // ignore: unnecessary_string_escapes
    Questions(
      q: 'اللون الطاغي على الصورة هو اللون الاخضر',
      i: 'images/image-5.jpg',
      a: true,
    ),
    // ignore: unnecessary_string_escapes
    Questions(q: 'القمر يدور حول الشمس', i: 'images/image-6.jpg', a: false),
    // ignore: unnecessary_string_escapes
    Questions(
      q: 'الدجاجة كائن يستطيع الطيران لمسافات بعيدة',
      i: 'images/image-7.jpg',
      a: false,
    ),
    
  ];
  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }
  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }
  String getQuestionImage() {
    return _questionBank[_questionNumber].questionImage;
  }
  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
  List<Questions> get questionBank {
    return _questionBank;
  }
  int getQuestionNumber() {
    return _questionNumber;
  }
  bool isFinished() {
    return _questionNumber >= _questionBank.length - 1 ? true : false;
  }
  void reset() {
    _questionNumber = 0;
  }
}

