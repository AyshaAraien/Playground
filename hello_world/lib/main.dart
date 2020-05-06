import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.pink[300]),
      home: Scaffold(
        // Note that you can't just set a string, it needs to be a widget. So that's why we wrap it in a Text widget.
        appBar: AppBar(
          centerTitle: true,
          title: Text("WordPair Generator")),
        body: Center(child: Text(wordPair.asPascalCase)),
        )
      );
  }
}