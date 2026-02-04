import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'app_brain.dart';
AppBrain appBrain = AppBrain();

void main() {
  runApp(ExamApp());
}

class ExamApp extends StatelessWidget {
  const ExamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Exam Application'),
          backgroundColor: Colors.indigoAccent,
        ),
        body: Padding(padding: const EdgeInsets.all(8.0), child: ExamPage()),
      ),
    );
  }
}

class ExamPage extends StatefulWidget {
  const ExamPage({super.key});

  @override
  State<ExamPage> createState() => _ExamPageState();
}

class _ExamPageState extends State<ExamPage> {

  Padding thumbUp = Padding(
    padding: const EdgeInsets.all(4.0),
    child: Icon(Icons.thumb_up, size: 30, color: Colors.green),
  );
  Padding thumbDown = Padding(
    padding: const EdgeInsets.all(4.0),
    child: Icon(Icons.thumb_down, size: 30, color: Colors.red),
  );
  
  List<Padding> answers = [];
  int rightanwers = 0;
  void checkAnswer(bool whatUserPicked){
      bool answer = appBrain.getQuestionAnswer();
        setState(() {
                if (whatUserPicked == answer) {
                 answers.add(thumbUp);
                rightanwers++;
                  
                } else {
                  answers.add(thumbDown);
                }
              if(appBrain.isFinished()){
                Alert(
                  context: context,
                  closeIcon: Icon(Icons.close, color: Colors.white),
                  title: "انتهى الاختبار",
                  desc: "لقد حصلت على $rightanwers من ${appBrain.questionBank.length} نقاط.",
               
                  buttons: [
                    DialogButton(
                      onPressed: () {
                        Navigator.pop(context);
                        setState(() {
                          appBrain.reset();
                          answers = [];
                          rightanwers = 0;
                        });
                      },
                      width: 140,
                      color: Colors.indigoAccent,
                      child: Text(
                        "اعادة الاختبار",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    )
                  ],
                ).show();
              } 
        appBrain.nextQuestion();
                });
  }
 
  
  // Dummy checkAnswer implementation
  // ignore: strict_top_level_inference

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [...answers]),
        ),
        Expanded(
          flex: 5,
          child: Column(
            children: [
              Image.asset(appBrain.getQuestionImage()),
              SizedBox(height: 20),
              Text(
                appBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ElevatedButton(
              onPressed: () {
                // Action when button is pressed
              checkAnswer(true);
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
                backgroundColor: Colors.indigoAccent,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              child: Text(
                'صح',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
        ),
        // SizedBox(height: 20),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ElevatedButton(
              onPressed: () {
                // Action when button is pressed
                // Action when button is pressed
                  checkAnswer(false);
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
                backgroundColor: Colors.redAccent,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              child: Text(
                'غلط',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
