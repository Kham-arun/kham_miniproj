import 'package:flutter/material.dart';
import 'game_page.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Katoot',
      home: MyHomePage(),
    ),
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: <Widget>[
          Container(
            child: Text(
              '\nKatoot:',
              style: TextStyle(
                  fontFamily: 'Mali',
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.black),
            ),
          ),
          Container(
            child: Text(
              'The Funny Quiz',
              style: TextStyle(
                  fontFamily: 'Mali',
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.black),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
              child: Image.asset(
            'images/home.jpg',
            scale: 0.01,
          )),
          SizedBox(height: 10),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.redAccent[400],
                padding: EdgeInsets.only(
                    left: 40.0, right: 40.0, top: 20.0, bottom: 20.0),
                elevation: 3,
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyName()));
              },
              child: Text(
                'Play',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Mali',
                  fontWeight: FontWeight.bold,
                ),
              )),
          SizedBox(height: 40),
        ]),
      ),
    );
  }
}

class MyName extends StatefulWidget {
  const MyName({Key? key}) : super(key: key);

  @override
  State<MyName> createState() => _MyNameState();
}

class _MyNameState extends State<MyName> {
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(children: <Widget>[
      SizedBox(height: 40),
      Container(
        child: Text(
          'Enter Your Name ',
          style: TextStyle(
            fontSize: 40,
            fontFamily: 'Mali',
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      SizedBox(height: 20),
      Expanded(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Center(
            child: TextField(
              textAlign: TextAlign.center,
              controller: myController,
            ),
          ),
        ),
      ),
      SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.grey[400],
                padding: EdgeInsets.only(
                    left: 40.0, right: 40.0, top: 20.0, bottom: 20.0),
                elevation: 3,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              },
              child: Text(
                'Back',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Mali',
                  fontWeight: FontWeight.bold,
                ),
              )),
          SizedBox(width: 10),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent[400],
                padding: EdgeInsets.only(
                    left: 40.0, right: 40.0, top: 20.0, bottom: 20.0),
                elevation: 3,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            MyGamePage(name: myController.text)));
              },
              child: Text(
                'Next',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Mali',
                  fontWeight: FontWeight.bold,
                ),
              )),
        ],
      ),
      SizedBox(height: 30),
    ])));
  }
}
