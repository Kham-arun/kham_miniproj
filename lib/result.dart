import 'package:flutter/material.dart';
import 'main.dart';

class ResultPage extends StatelessWidget {
  ResultPage({required this.score});
  final String score;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  'Your Katoot Score is',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.blueGrey,
                    fontFamily: 'Mali',
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  score,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 50.0,
                    fontFamily: 'Mali',
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
              width: 300,
              height: 100,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyHomePage()));
                },
                child: Text(
                  'Back to Home',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Mali', fontSize: 30),
                ),
              )),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
