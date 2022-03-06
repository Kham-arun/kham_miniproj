import 'package:flutter/material.dart';
import 'myquestion.dart';
import 'result.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

MyQuestion myquestion = MyQuestion();
int score = 0;
int total = myquestion.questionlen();
int questionNum = 1;

class MyGamePage extends StatelessWidget {
  MyGamePage({required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Player : $name',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Mali',
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: GamePage(),
          ),
        ),
      ),
    );
  }
}

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  void checkAnswer(int answer) {
    int correctAnswer = myquestion.getAnswer()!;
    setState(() {
      if (myquestion.isFinished()) {
        if (correctAnswer == answer) {
          score++;
          Alert(
            context: context,
            type: AlertType.success,
            title: "ตอบถูกแล้วจ้า",
            desc: "Now, your score is $score.",
            buttons: [
              DialogButton(
                child: Text(
                  "Next",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                width: 120,
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).pop();
                },
              )
            ],
          ).show();
        } else {
          Alert(
            context: context,
            type: AlertType.error,
            title: "ตอบผิดนะค้าบ",
            desc:
                "The correct answer is $correctAnswer.\nNow, your score is $score.",
            buttons: [
              DialogButton(
                child: Text(
                  "Next",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                width: 120,
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).pop();
                },
              )
            ],
          ).show();
          ;
        }
        myquestion.resets();
        questionNum = 1;
        int totscore = score;
        score = 0;
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ResultPage(score: totscore.toString())));
      } else {
        if (correctAnswer == answer) {
          score++;
          Alert(
            context: context,
            type: AlertType.success,
            title: "ตอบถูกแล้วจ้า",
            desc: "Now, your score is $score.",
            buttons: [
              DialogButton(
                child: Text(
                  "Next",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                width: 120,
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).pop();
                },
              )
            ],
          ).show();
        } else {
          Alert(
            context: context,
            type: AlertType.error,
            title: "ตอบผิดนะค้าบ",
            desc:
                "The correct answer is $correctAnswer.\nNow, your score is $score.",
            buttons: [
              DialogButton(
                child: Text(
                  "Next",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                width: 120,
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).pop();
                },
              )
            ],
          ).show();
        }
        myquestion.nextQuestion();
        questionNum++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(children: <Widget>[
      SizedBox(height: 40),
      Container(
        child: Text(
          'Your score : $score',
          style: TextStyle(
            fontSize: 40,
            fontFamily: 'Mali',
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      SizedBox(height: 10),
      Text(
        'Question $questionNum of $total',
        style: TextStyle(
          fontSize: 25,
          fontFamily: 'Mali',
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 100),
      Expanded(
          child: Text(
        myquestion.getQuestion()!,
        style: TextStyle(
          fontSize: 17,
          fontFamily: 'Mali',
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      )),
      SizedBox(height: 10),
      SizedBox(
          width: 500,
          height: 60,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.redAccent[400],
              ),
              onPressed: () {
                checkAnswer(1);
              },
              child: Text(
                '1. ' + myquestion.getChoice1()!,
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'Mali',
                  fontWeight: FontWeight.bold,
                ),
              ))),
      SizedBox(height: 10),
      SizedBox(
          width: 500,
          height: 60,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue[400],
              ),
              onPressed: () {
                checkAnswer(2);
              },
              child: Text(
                '2. ' + myquestion.getChoice2()!,
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'Mali',
                  fontWeight: FontWeight.bold,
                ),
              ))),
      SizedBox(height: 10),
      SizedBox(
          width: 500,
          height: 60,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orangeAccent[400],
              ),
              onPressed: () {
                checkAnswer(3);
              },
              child: Text(
                '3. ' + myquestion.getChoice3()!,
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'Mali',
                  fontWeight: FontWeight.bold,
                ),
              ))),
      SizedBox(height: 10),
      SizedBox(
          width: 500,
          height: 60,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.greenAccent[400],
              ),
              onPressed: () {
                checkAnswer(4);
              },
              child: Text(
                '4. ' + myquestion.getChoice4()!,
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'Mali',
                  fontWeight: FontWeight.bold,
                ),
              ))),
      SizedBox(height: 10),
    ])));
  }
}
