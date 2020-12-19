import 'package:flutter/material.dart';
import 'eff_short_wordlist_1.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Four Words',
      theme: ThemeData.dark(),
      home: Scaffold(
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RandomWord(),
        RandomWord(),
        RandomWord(),
        RandomWord(),
      ],
    ));
  }
}

class RandomWord extends StatefulWidget {
  @override
  _RandomWordState createState() => _RandomWordState();
}

class _RandomWordState extends State<RandomWord> {
  String randomWord = 'touch me';
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(
        randomWord,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 48.0,
        ),
      ),
      onPressed: () {
        setState(() {
          randomWord = wordList[Random().nextInt(wordList.length)];
        });
      },
    );
  }
}
