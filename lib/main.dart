import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Score Changer App",
      home: ScoreApp(),
    );
  }
}

class ScoreApp extends StatefulWidget {
  const ScoreApp({Key? key}) : super(key: key);

  @override
  _ScoreAppState createState() => _ScoreAppState();
}

class _ScoreAppState extends State<ScoreApp> {
  var number = 0;

  increasenumber() {
    setState(() {
      number = number + 1;
    });
  }

  decreasenumber() {
    setState(() {
      number = number - 1;
    });
  }

  resetnumber() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Score Changer"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Center(
            child: Text(
              "Score is",
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          ),
          Text(
            number.toString(),
            style: TextStyle(
                color: Colors.green, fontWeight: FontWeight.bold, fontSize: 60),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                  child: Text(
                    "Increase",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: increasenumber),
              SizedBox(
                width: 20,
              ),
              RaisedButton(
                  child: Text(
                    "Decrease",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.redAccent,
                  onPressed: decreasenumber),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.restore_outlined), onPressed: resetnumber),
    );
  }
}
