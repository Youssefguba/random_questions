import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'list_generate_example.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Questions',
      home: DiceWidget(),
    );
  }
}

class DiceWidget extends StatefulWidget {
  const DiceWidget({Key? key}) : super(key: key);

  @override
  State<DiceWidget> createState() => _DiceWidgetState();
}

class _DiceWidgetState extends State<DiceWidget> {
  List<String> listOfQuestion = [
    'What is your name?',
    'How old are?',
    'Where are you from?',
  ];

  int _randomNumber = 0;

  void randomQuestion() {
    setState(() {
      _randomNumber = Random().nextInt(listOfQuestion.length);
    });
    print(_randomNumber);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Random Questions'),
      ),
      body: ListGenerateExample(),
    );
  }
}
