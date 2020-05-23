import 'package:flutter/material.dart';
import 'package:project1/Vpage/email.dart';

const Rcolour = Color;

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EmailPages(),
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.deepPurple.shade200,
        scaffoldBackgroundColor: Colors.deepPurpleAccent,
      ),
    );
  }
}
